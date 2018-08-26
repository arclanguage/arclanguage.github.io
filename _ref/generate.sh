#!/bin/sh
#|
exec racket -f $0
|#

(require racket/base)

(require "arc/ac.scm")
(require "arc/brackets.scm")
(use-bracket-readtable)

(parameterize ((current-directory "arc"))
  (aload "arc.arc")
  (aload "libs.arc"))

(define-syntax-rule (arc-do body ...)
  (arc-eval '(do body ...)))


; This file builds a ref/ directory that will be served by GitHub
; pages. It also builds an arc.docset/ directory in a format Dash
; (https://kapeli.com/dash) can browse as offline documentation.


; Remove any intermediate build artifacts left over from cancelled
; builds.

(system "rm -rf html")
(system "rm -f inserts.sql")


; Start off a folder of HTML files and an SQL file that will contain
; the search index. The HTML files and index entries will be populated
; run template.arc.

(arc-do
  (ensure-dir "html")
  (w/outfile sql "inserts.sql"
    (w/stdout sql
      (prn "CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);")
      (prn "CREATE UNIQUE INDEX anchor ON searchIndex (name, type, path);"))))


; Run template.arc.

(arc-do
  (declare 'atstrings nil)
  (load "template.arc")
  (runall)
  (run "foundation-doc.tem"))


; Build the ref/ directory. It will be served by GitHub pages.

(system "cp docs/* html/* ../ref")


; Based on the ref/ directory we just built, build an arc.docset/
; directory in a format Dash can browse as offline documentation
; (https://kapeli.com/dash).

(system "rm -fr ../arc.docset/Contents/Resources/Documents/html")
(system "cp -r ../ref ../arc.docset/Contents/Resources/Documents/html")
;; cut navigation toolbar because it is unnecessary in Dash
(system "sed -i.bak '/navbar-inverse/,/end of navbar/d' ../arc.docset/Contents/Resources/Documents/html/*.html")
(system "rm ../arc.docset/Contents/Resources/Documents/html/*.html.bak")

(system "rm -f ../arc.docset/Contents/Resources/docSet.dsidx")
(system "which sqlite3 > /dev/null && cat inserts.sql | sqlite3 ../arc.docset/Contents/Resources/docSet.dsidx")


; Remove the intermediate build artifacts we've created.

(system "rm -rf html")
(system "rm -f inserts.sql")

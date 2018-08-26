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

(system "rm -rf html")

(system "rm -rf inserts.sql")

(arc-eval '(do
  (w/outfile sql "inserts.sql"
    (w/stdout sql
      (prn "CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);")
      (prn "CREATE UNIQUE INDEX anchor ON searchIndex (name, type, path);")))
  (ensure-dir "html")
  (declare 'atstrings nil)
  (load "template.arc")
  (runall)
  (run "foundation-doc.tem")))
(system "cp docs/* html/* ../ref")
(system "rm -rf html")

(system "rm -fr ../arc.docset/Contents/Resources/Documents/html")
(system "cp -r ../ref ../arc.docset/Contents/Resources/Documents/html")
;; cut navigation toolbar because it is unnecessary in Dash
(system "sed -i.bak '/navbar-inverse/,/end of navbar/d' ../arc.docset/Contents/Resources/Documents/html/*.html")
(system "rm ../arc.docset/Contents/Resources/Documents/html/*.html.bak")

(system "rm -f ../arc.docset/Contents/Resources/docSet.dsidx")
(system "which sqlite3 > /dev/null && cat inserts.sql | sqlite3 ../arc.docset/Contents/Resources/docSet.dsidx")
(system "rm -f inserts.sql")

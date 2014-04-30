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
(arc-eval '(do
  (ensure-dir "html")
  (declare 'atstrings nil)
  (load "template.arc")
  (runall)
  ;fails with "Expected tests" error
  ;(run "foundation-doc.tem")
  (system "cp foundation-doc.html html/")
))
(system "cp docs/* html/* ../ref")
(system "rm -rf html")

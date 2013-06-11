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

(aload "generate.arc")

(system "cp output/* ../ref/")

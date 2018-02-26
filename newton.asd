;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

(defpackage #:newton-asd
  (:use :cl :asdf))

(in-package :newton-asd)

(defsystem newton
  :name "newton"
  :version "0.0.0"
  :maintainer "thallia"
  :author "thallia"
  :license "All rights reserved."
  :description "Newton"
  :long-description "A Physics calculator, teacher, reference, wiki, and dictionary."

  :serial t ; linear dependencies
  :depends-on (:cl-json) ; what external things do we need to load in 
  :pathname "src" ; where the source code can be found
  :components ((:file "math") ; Label in what order to load the files, then the main program file and which files out of these it depends on.
               (:file "functions")
               (:file "newton" :depends-on ("functions" "math"))))

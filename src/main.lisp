; the main program file
(require :cl-json)


(with-open-file (f "~/code/lisp/newton/newton/data/dictionary.json")
  (json:decode-json f))

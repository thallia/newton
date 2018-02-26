(require :cl-json) ;; don't need this now, but for testing purposes yes

;; functions for managing welcome page







;; functions for managing the dictionary

(defun get-json-dict (&optional (path "../data/dictionary.json"))
  (with-open-file (f path)
    (json:decode-json f))) ;; why is f the stream?

(defparameter dict (get-json-dict))

(defun welcome (&optional (path "../data/welcome.json"))
  (defparameter welcome (with-open-file (f path)
                          (json:decode-json f)))
  (cdr (car welcome))
  ;; need to format into pretty.
  )

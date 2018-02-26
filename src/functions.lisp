(require :cl-json) ;; don't need this now, but for testing purposes yes

;; functions for managing welcome page

; welcomes the user
(defun get_welcome (&optional (path "data/welcome.json"))
  (with-open-file (f path)
    (json:decode-json f)))

(defparameter welcomeUsr (get_welcome))

(defun greet ()
  (cdr (car welcomeUsr)))


;; functions for managing the dictionary

; gets the whole dictionary
(defun get-json-dict (&optional (path "data/dictionary.json"))
  (with-open-file (f path)
    (json:decode-json f))) ;; why is f the stream?

(defparameter dict (get-json-dict))


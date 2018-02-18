;;common lisp program for physics

;; Constants
;; these are global vars because they'll be used everywhere
(defparameter accel-due-to-gravity 9.8)   ;; m/sec^2) (g)
(defparameter universal-gravity 6.67e-11) ;; (N*m^2)/(kg^2) (G)
(defparameter lightspeed 2.99e8)          ;; m/sec (c)
(defparameter amu 1.66e-27)               ;; kg (u)
(defparameter avogadro 6.02e23)           ;; 1/g*mole (Na)
(defparameter bohr 5.29e-11)              ;; m (a,o)
(defparameter coloumb-const 9.0e9)        ;; (N*m^2)/(C^2)
(defparameter charge-elec - (1.6e-19))    ;; C (e)
(defparameter mass-elec 9.1e-31)          ;; kg (m,e)
(defparameter volt-elec 1.602e-19)        ;; J (eV)
(defparameter ideal-gas 8.31)             ;; J/mole*K (R)
(defparameter faraday-const 96485)        ;; C/mole (F)
(defparameter mass-neut 1.67e-27)         ;; kg (m,n)
(defparameter plancks 6.63e-34)           ;; J*sec (h)
(defparameter charge-prot 1.6e-19)        ;; C 
(defparameter mass-prot 1.67e-27)         ;; kg (m,p)


;; RULES
;;; sig figs

;;; prefixes (eg kilo, centi)

;;; units (g, m, sec, amp)


;; important functions

;; displacement is the change in an objects position : final - initial
(defparameter displace-initial 0)
(defparameter displace-final 0)
(defparameter xdisplacement 0)
(defun displacement ()
  (defparameter xdisplacement (- displace-final displace-initial)))

;; speed is distance / time
(defparameter distance 0)
(defparameter vartime 0)
(defun xspeed ()
  (defparameter speedf (/ distance vartime)))

;; velocity is change in displacement / time
(defun velocity ()
  (defparameter velocity (/ xdisplacement vartime)))

;; acceleration = change in velocity over change in time
(defparameter velocity 0)
(defun acceleration ()
  (defparameter accelerationf (/ velocity vartime)))

;; force equals the mass of the object times the acceleration
(defparameter mass 10)         ;; mass will be defined by user input
(defparameter acceleration 0)
(defun force ()
  (defvar acceleration 9.8)
  (defparameter force (* mass acceleration)))



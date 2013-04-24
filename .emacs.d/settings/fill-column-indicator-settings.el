;---------------------------;
;;; Fill Column Indicator ;;;
;---------------------------;

(add-to-list 'load-path "~/.emacs.d/vendor/fill-column-indicator")
(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode t)

(provide 'fill-column-indicator-settings)

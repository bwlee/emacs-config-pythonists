;-------------------;
;;; Auto-Complete ;;;
;-------------------;

(add-to-list 'load-path "~/.emacs.d/vendor/auto-complete")
(require 'auto-complete) 
(add-to-list 'ac-dictionary-directories "~/.emacs.d/vendor/auto-complete/dict") ;; fix missing soft link
(require 'auto-complete-config) 
(ac-config-default)
(global-auto-complete-mode t)

(provide 'auto-complete-settings)

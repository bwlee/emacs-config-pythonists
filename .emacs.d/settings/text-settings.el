;-------------------------;
;;; Syntax Highlighting ;;;
;-------------------------;

; text decoration
(require 'font-lock)
(setq font-lock-maximum-decoration t)
(global-font-lock-mode t)
(global-hi-lock-mode nil)
(setq jit-lock-contextually t)
(setq jit-lock-stealth-verbose t)

; if there is size information associated with text, change the text
; size to reflect it
(size-indication-mode t)

; highlight parentheses when the cursor is next to them
(require 'paren)
(show-paren-mode t)

;; delete trailing spaces when saving file
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; yasnippet
(add-to-list 'load-path  "~/.emacs.d/vendor/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(provide 'text-settings)

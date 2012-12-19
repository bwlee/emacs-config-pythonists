;------------;
;;; Cursor ;;;
;------------;

; highlight the current line
(add-to-list 'load-path "~/.emacs.d/highlight-current-line-0.57")
(require 'highlight-current-line)
(highlight-current-line-on t)

;; To customize the background color
(set-face-background 'highlight-current-line-face "brown")

; don't blink the cursor
(blink-cursor-mode nil)

; make sure transient mark mode is enabled (it should be by default,
; but just in case)
(transient-mark-mode t)

; turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode t)

(provide 'cursor-settings)

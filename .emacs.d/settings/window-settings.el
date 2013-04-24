;----------------------;
;;; Windows & Frames ;;;
;----------------------;

; language
(setq current-language-environment "English")

; don't show the startup screen
(setq inhibit-startup-screen t)
; don't show the menu bar ;; I prefer menu bar, in case forgetting some key bindings
;(menu-bar-mode nil)
; don't show the tool bar
(require 'tool-bar)
(tool-bar-mode nil)
; don't show the scroll bar
(scroll-bar-mode nil)


; number of characters until the fill column 
(setq fill-column 80)

; specify the fringe width for windows -- this sets both the left and
; right fringes to 10
(require 'fringe)
(fringe-mode 10)

; lines which are exactly as wide as the window (not counting the
; final newline character) are not continued. Instead, when point is
; at the end of the line, the cursor appears in the right fringe.
(setq overflow-newline-into-fringe t)

; each line of text gets one line on the screen (i.e., text will run
; off the left instead of wrapping around onto a new line)
(setq truncate-lines t)
; truncate lines even in partial-width windows
(setq truncate-partial-width-windows t)

; display line numbers to the right of the window
(global-linum-mode t)
; show the current line and column numbers in the stats bar as well
(line-number-mode t)
(column-number-mode t)

; Left and right windows on C-c C-c in Python-mode.el
;(defun execute-script ()
;"Switch to shell and re-execute the last command."
;(interactive)
;(save-some-buffers)
;(switch-to-buffer-other-window "*shell*")
;(end-of-buffer)
;(comint-previous-input 0)
;(comint-send-input))

(provide 'window-settings)

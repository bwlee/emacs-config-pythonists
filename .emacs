(add-to-list 'load-path "~/.emacs.d/settings")

; general settings
(require 'ido-settings)
(require 'auto-complete-settings)
(require 'fill-column-indicator-settings)

; initial scratch message
(setq initial-scratch-message "")

; python specific
(require 'python-settings)

; aesthetics
(require 'ui-settings)
(require 'window-settings)
(require 'cursor-settings)
(require 'text-settings)
;; color theme folder missing, btw, I don't like the color inside it when I tried,  
;; if you need, download from here http://ftp.twaren.net/Unix/NonGNU//color-theme/color-theme-6.6.0.tar.gz, 
;; and unzip to your ~/.emacs.d/, 
;; then umcommend the line below
;(require 'color-theme-settings)

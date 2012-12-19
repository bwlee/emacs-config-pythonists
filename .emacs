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
(require 'color-theme-settings)

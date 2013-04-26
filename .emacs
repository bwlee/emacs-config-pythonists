(add-to-list 'load-path "~/.emacs.d/settings")

; general settings
(require 'ido-settings)
(require 'auto-complete-settings)
(require 'fill-column-indicator-settings)

; initial scratch message
(setq initial-scratch-message "")

; python specific
;(require 'python-settings)

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

;; el-get setting
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'cl-lib)

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

;; now either el-get is `require'd already, or have been `load'ed by the
;; el-get installer.
(setq
 el-get-sources
 '(el-get				; el-get is self-hosting
   escreen            			; screen for emacs, C-\ C-h
   ;php-mode-improved			; if you're into php...
   ;switch-window			; takes over C-x o
   ;auto-complete			; complete as you type with overlays
   zencoding-mode			; http://www.emacswiki.org/emacs/ZenCoding

   (:name buffer-move			; have to add your own keys
	  :after (progn
		   (global-set-key (kbd "<C-S-up>")     'buf-move-up)
		   (global-set-key (kbd "<C-S-down>")   'buf-move-down)
		   (global-set-key (kbd "<C-S-left>")   'buf-move-left)
		   (global-set-key (kbd "<C-S-right>")  'buf-move-right)))

   (:name smex				; a better (ido like) M-x
	  :after (progn
		   (setq smex-save-file "~/.emacs.d/.smex-items")
		   (global-set-key (kbd "M-x") 'smex)
		   (global-set-key (kbd "M-X") 'smex-major-mode-commands)))

   (:name magit				; git meet emacs, and a binding
	  :after (progn
		   (global-set-key (kbd "C-x C-z") 'magit-status)))

   (:name goto-last-change		; move pointer back to last change
	  :after (progn
		   ;; when using AZERTY keyboard, consider C-x C-_
		   (global-set-key (kbd "C-x C-/") 'goto-last-change)))))

(unless (string-match "apple-darwin" system-configuration)
  (loop for p in '(color-theme		; nice looking emacs
		   color-theme-tango	; check out color-theme-solarized
		   )
	do (add-to-list 'el-get-sources p)))

;;
;; Some recipes require extra tools to be installed
;;
;; Note: el-get-install requires git, so we know we have at least that.
;;
(when (el-get-executable-find "cvs")
  (add-to-list 'el-get-sources 'emacs-goodies-el)) ; the debian addons for emacs

(when (el-get-executable-find "svn")
  (loop for p in '(psvn    		; M-x svn-status
		   yasnippet		; powerful snippet mode
		   )
	do (add-to-list 'el-get-sources p)))

;; install new packages and init already installed packages
(el-get 'sync)

;; Auto-complete
(require 'auto-complete)
(global-auto-complete-mode t)

;; Jedi
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)

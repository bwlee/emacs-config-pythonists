;------------------------;
;;; Python Programming ;;;
;------------------------;

; python-mode
(setq py-install-directory "~/.emacs.d/vendor/python-mode")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

;; use IPython
(add-to-list 'load-path "~/.emacs.d/vendor/ipython")
(setq py-install-directory ".emacs.d/vendor/ipython")
(require 'ipython)
(setq py-shell-name "ipython")
(setq py-smart-indentation t)


(require 'ipython)
;;(setq py-python-command-args '("--pylab" "--colors" "LightBG"))


;; emacs act as server when %edit used in ipython shell
(defvar server-buffer-clients)
(when (and (fboundp 'server-start) (string-equal (getenv "TERM") 'xterm))
  (server-start)
  (defun fp-kill-server-with-buffer-routine ()
    (and server-buffer-clients (server-done)))
  (add-hook 'kill-buffer-hook 'fp-kill-server-with-buffer-routine))

; pymacs
(add-to-list 'load-path "~/.emacs.d/vendor/pymacs")
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")
(setq py-load-pymacs-p t)

; ropemacs
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")

;; flymake-cursor
(add-to-list 'load-path "~/.emacs.d/vendor/flymake")

(add-hook 'find-file-hook 'flymake-find-file-hook)
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy 'flymake-create-temp-inplace))
       (local-file (file-relative-name temp-file (file-name-directory buffer-file-name))))
      (list "pycheckers"  (list local-file))))
   (add-to-list 'flymake-allowed-file-name-masks
             '("\\.py\\'" flymake-pyflakes-init)))
(load-library "flymake-cursor")
(global-set-key [f10] 'flymake-goto-prev-error)
(global-set-key [f11] 'flymake-goto-next-error)


(provide 'python-settings)

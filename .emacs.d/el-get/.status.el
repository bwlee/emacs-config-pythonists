((auto-complete status "installed" recipe
				(:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
					   (popup fuzzy)))
 (buffer-move status "installed" recipe
			  (:name buffer-move :description "Swap buffers without typing C-x b on each window" :type emacswiki :features buffer-move :after
					 (progn
					   (global-set-key
						(kbd "<C-S-up>")
						'buf-move-up)
					   (global-set-key
						(kbd "<C-S-down>")
						'buf-move-down)
					   (global-set-key
						(kbd "<C-S-left>")
						'buf-move-left)
					   (global-set-key
						(kbd "<C-S-right>")
						'buf-move-right))))
 (cl-lib status "installed" recipe
		 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (color-theme status "installed" recipe
			  (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
					 ("xzf")
					 :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
					 (progn
					   (color-theme-initialize)
					   (setq color-theme-is-global t))))
 (color-theme-tango status "installed" recipe
					(:name color-theme-tango :description "Color theme based on Tango Palette. Created by danranx@gmail.com" :type emacswiki :depends color-theme :prepare
						   (autoload 'color-theme-tango "color-theme-tango" "color-theme: tango" t)))
 (ctable status "installed" recipe
		 (:name ctable :description "Table Component for elisp" :type github :pkgname "kiwanami/emacs-ctable"))
 (deferred status "installed" recipe
   (:name deferred :description "Simple asynchronous functions for emacs lisp" :website "https://github.com/kiwanami/emacs-deferred" :type github :pkgname "kiwanami/emacs-deferred" :features "deferred"))
 (el-get status "removed" recipe nil)
 (emacs-goodies-el status "installed" recipe
				   (:name emacs-goodies-el :website "http://packages.debian.org/sid/emacs-goodies-el" :description "Miscellaneous add-ons for Emacs" :type http-tar :url "http://alioth.debian.org/snapshots.php?group_id=30060" :options
						  ("xzf")
						  :build
						  (let*
							  ((pdir
								(el-get-package-directory 'emacs-goodies-el))
							   (pkg-goodies-dir
								(or
								 (car
								  (directory-files pdir 'full "^pkg-goodies-el-"))
								 pdir))
							   (default-directory
								 (file-name-as-directory
								  (expand-file-name "emacs-goodies-el" pkg-goodies-dir))))
							(el-get-verbose-message "Building commands from %s" default-directory)
							(el-get-verbose-message "Expecting commands to run in %s" pdir)
							(append
							 (mapcar
							  (lambda
								(patch-file)
								(list "patch" "-p1" "-f" "--no-backup-if-mismatch" "-i"
									  (expand-file-name patch-file
														(expand-file-name "emacs-goodies-el/debian/patches" pdir))
									  "-d"
									  (expand-file-name "emacs-goodies-el" pdir)))
							  (with-temp-buffer
								(insert-file-contents "debian/patches/series")
								(split-string
								 (buffer-string)
								 "\n" t)))
							 (let
								 ((makerfiles
								   (split-string
									(shell-command-to-string "find . -name '*.make'"))))
							   (el-get-verbose-message "Makerfiles: %S" makerfiles)
							   (mapcar
								(lambda
								  (makerfile)
								  (let*
									  ((maker-dir
										(expand-file-name
										 (file-name-directory makerfile)
										 (expand-file-name "emacs-goodies-el" pdir)))
									   (maker-command
										(replace-regexp-in-string "\n" ""
																  (replace-regexp-in-string "^emacs" el-get-emacs
																							(with-temp-buffer
																							  (insert-file-contents makerfile)
																							  (buffer-string))))))
									(format "cd %s && %s" maker-dir maker-command)))
								makerfiles))))
						  :load-path
						  ("emacs-goodies-el/elisp/debian-el" "emacs-goodies-el/elisp/devscripts-el" "emacs-goodies-el/elisp/dpkg-dev-el" "emacs-goodies-el/elisp/emacs-goodies-el" "emacs-goodies-el/elisp/vm-bonus-el")
						  :features
						  (emacs-goodies-el debian-el dpkg-dev-el)
						  :post-init
						  (progn
							(autoload 'debuild "devscripts" "Run debuild in the current directory." t)
							(autoload 'debc "devscripts" "Run debc in the current directory." t)
							(autoload 'debi "devscripts" "Run debi in the current directory." t)
							(autoload 'debit "devscripts" "Run debit in the current directory." t)
							(autoload 'debdiff "devscripts" "Compare contents of CHANGES-FILE-1 and CHANGES-FILE-2." t)
							(autoload 'debdiff-current "devscripts" "Compare the contents of .changes file of current version with previous version;\nrequires access to debian/changelog, and being in debian/ dir." t)
							(autoload 'debclean "devscripts" "Run debclean in the current directory." t)
							(autoload 'pdebuild "pbuilder-mode" "Run pdebuild in the current directory." t)
							(autoload 'pdebuild-user-mode-linux "pbuilder-mode" "Run pdebuild-user-mode-linux in the current directory." t)
							(autoload 'pbuilder-log-view-elserv "pbuilder-log-view-mode" "Run a elserv session with log view.\n\nRunning this requires elserv.  Use elserv, and do `elserv-start' before invoking this command." t)
							(autoload 'debuild-pbuilder "pbuilder-mode" "Run debuild-pbuilder in the current directory." t)
							(autoload 'pbuilder-build "pbuilder-mode" "Run pbuilder-build for the given filename." t)
							(autoload 'pbuilder-user-mode-linux-build "pbuilder-mode" "Run pbuilder-user-mode-linux for the given filename." t)
							(defgroup vm-bonus-el nil "Customize vm-bonus-el Debian packages." :group 'vm)
							(defgroup vm-bogofilter nil "VM Spam Filter Options" :group 'vm :group 'vm-bonus-el :load 'vm-bogofilter)
							(autoload 'vm-bogofilter-setup "vm-bogofilter" "Initialize vm-bogofilter." t)
							(defcustom vm-bogofilter-setup nil "Whether to initialize vm-bogofilter on startup.\nvm-bogofilter interfaces VM with the bogofilter spam filter." :type 'boolean :set
							  (lambda
								(symbol value)
								(set-default symbol value)
								(when value
								  (vm-bogofilter-setup)))
							  :load 'vm-bogofilter :group 'vm :group 'vm-bogofilter :group 'vm-bonus-el))))
 (epc status "installed" recipe
	  (:name epc :description "An RPC stack for Emacs Lisp" :type github :pkgname "kiwanami/emacs-epc" :depends
			 (deferred ctable)))
 (escreen status "installed" recipe
		  (:name escreen :description "Emacs window session manager" :type http :url "http://www.splode.com/~friedman/software/emacs-lisp/src/escreen.el" :prepare
				 (autoload 'escreen-install "escreen" nil t)))
 (flymake-easy status "installed" recipe
			   (:name flymake-easy :type github :description "Helpers for easily building flymake checkers" :pkgname "purcell/flymake-easy" :website "http://github.com/purcell/flymake-easy"))
 (flymake-shell status "installed" recipe
				(:name flymake-shell :type github :pkgname "purcell/flymake-shell" :description "A flymake syntax-checker for shell scripts" :website "http://github.com/purcell/flymake-shell" :depends
					   (flymake-easy)
					   :post-init
					   (add-hook 'shell-script-mode-hook 'flymake-shell-load)))
 (fuzzy status "installed" recipe
		(:name fuzzy :website "https://github.com/m2ym/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "m2ym/fuzzy-el"))
 (goto-last-change status "installed" recipe
				   (:name goto-last-change :description "Move point through buffer-undo-list positions" :type emacswiki :load "goto-last-change.el" :after
						  (progn
							(global-set-key
							 (kbd "C-x C-/")
							 'goto-last-change))))
 (jedi status "installed" recipe
	   (:name jedi :description "An awesome Python auto-completion for Emacs" :type github :pkgname "tkf/emacs-jedi" :build
			  (("make" "requirements"))
			  :submodule nil :depends
			  (epc auto-complete)))
 (markdown-mode status "installed" recipe
				(:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :type git :url "git://jblevins.org/git/markdown-mode.git" :before
					   (add-to-list 'auto-mode-alist
									'("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (package status "installed" recipe
		  (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
				 (progn
				   (setq package-user-dir
						 (expand-file-name
						  (convert-standard-filename
						   (concat
							(file-name-as-directory default-directory)
							"elpa")))
						 package-directory-list
						 (list
						  (file-name-as-directory package-user-dir)
						  "/usr/share/emacs/site-lisp/elpa/"))
				   (make-directory package-user-dir t)
				   (unless
					   (boundp 'package-subdirectory-regexp)
					 (defconst package-subdirectory-regexp "^\\([^.].*\\)-\\([0-9]+\\(?:[.][0-9]+\\)*\\)$" "Regular expression matching the name of\n a package subdirectory. The first subexpression is the package\n name. The second subexpression is the version string."))
				   (setq package-archives
						 '(("ELPA" . "http://tromey.com/elpa/")
						   ("gnu" . "http://elpa.gnu.org/packages/")
						   ("marmalade" . "http://marmalade-repo.org/packages/")
						   ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (popup status "installed" recipe
		(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "auto-complete/popup-el"))
 (psvn status "installed" recipe
	   (:name psvn :description "Subversion interface for emacs" :type http :url "http://www.xsteve.at/prg/emacs/psvn.el"))
 (python-pep8 status "installed" recipe
			  (:type github :pkgname "emacsmirror/python-pep8" :name python-pep8 :type emacsmirror :description "Minor mode for running `pep8'" :features python-pep8 :post-init
					 (require 'tramp)))
 (smex status "installed" recipe
	   (:name smex :description "M-x interface with Ido-style fuzzy matching." :type github :pkgname "nonsequitur/smex" :features smex :post-init
			  (smex-initialize)
			  :after
			  (progn
				(setq smex-save-file "~/.emacs.d/.smex-items")
				(global-set-key
				 (kbd "M-x")
				 'smex)
				(global-set-key
				 (kbd "M-X")
				 'smex-major-mode-commands))))
 (switch-window status "installed" recipe
				(:name switch-window :description "A *visual* way to choose a window to switch to" :type github :pkgname "dimitri/switch-window" :features switch-window))
 (yasnippet status "installed" recipe
			(:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :features "yasnippet" :pre-init
				   (unless
					   (or
						(boundp 'yas/snippet-dirs)
						(get 'yas/snippet-dirs 'customized-value))
					 (setq yas/snippet-dirs
						   (list
							(concat el-get-dir
									(file-name-as-directory "yasnippet")
									"snippets"))))
				   :post-init
				   (put 'yas/snippet-dirs 'standard-value
						(list
						 (list 'quote
							   (list
								(concat el-get-dir
										(file-name-as-directory "yasnippet")
										"snippets")))))
				   :compile nil :submodule nil))
 (zencoding-mode status "installed" recipe
				 (:name zencoding-mode :description "Unfold CSS-selector-like expressions to markup" :type github :pkgname "rooney/zencoding" :features zencoding-mode)))

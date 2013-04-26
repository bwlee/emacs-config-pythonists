;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (auto-complete) "auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (20858 31595))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

;;;***

;;;### (autoloads (buf-move-right buf-move-left buf-move-down buf-move-up)
;;;;;;  "buffer-move/buffer-move" "buffer-move/buffer-move.el" (20857
;;;;;;  45830 0 0))
;;; Generated autoloads from buffer-move/buffer-move.el

(autoload 'buf-move-up "buffer-move/buffer-move" "\
Swap the current buffer and the buffer above the split.
If there is no split, ie now window above the current one, an
error is signaled.

\(fn)" t nil)

(autoload 'buf-move-down "buffer-move/buffer-move" "\
Swap the current buffer and the buffer under the split.
If there is no split, ie now window under the current one, an
error is signaled.

\(fn)" t nil)

(autoload 'buf-move-left "buffer-move/buffer-move" "\
Swap the current buffer and the buffer on the left of the split.
If there is no split, ie now window on the left of the current
one, an error is signaled.

\(fn)" t nil)

(autoload 'buf-move-right "buffer-move/buffer-move" "\
Swap the current buffer and the buffer on the right of the split.
If there is no split, ie now window on the right of the current
one, an error is signaled.

\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-initialize color-theme-submit color-theme-install
;;;;;;  color-theme-compare color-theme-make-snapshot color-theme-analyze-defun
;;;;;;  color-theme-print color-theme-install-at-point-for-current-frame
;;;;;;  color-theme-install-at-mouse color-theme-describe color-theme-select)
;;;;;;  "color-theme/color-theme" "color-theme/color-theme.el" (17529
;;;;;;  41105 0 0))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme/color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-all el-get-version) "el-get/el-get"
;;;;;;  "el-get/el-get.el" (20857 43922 0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (20857 43922 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (apt-sources-mode) "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/apt-sources"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/apt-sources.el"
;;;;;;  (19215 18987 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/debian-el/apt-sources.el

(autoload 'apt-sources-mode "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/apt-sources" "\
Major mode for editing apt's sources.list file.
Sets up command `font-lock-mode'.

\\{apt-sources-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (apt-utils-search apt-utils-show-package) "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/apt-utils"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/apt-utils.el"
;;;;;;  (19972 48294 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/debian-el/apt-utils.el

(autoload 'apt-utils-show-package "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/apt-utils" "\
Show information for a Debian package.
A selection of known packages is presented.  See `apt-utils-mode'
for more detailed help.  If NEW-SESSION is non-nil, generate a
new `apt-utils-mode' buffer.

\(fn &optional NEW-SESSION)" t nil)

(autoload 'apt-utils-search "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/apt-utils" "\
Search Debian packages for regular expression.
To search for multiple patterns use a string like \"foo && bar\".
The regular expression used to split the
terms (`apt-utils-search-split-regexp') is customisable.

\(fn)" t nil)

;;;***

;;;### (autoloads (deb-find deb-view-mode deb-view deb-view-dired-view)
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/deb-view"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/deb-view.el"
;;;;;;  (20043 14215 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/debian-el/deb-view.el

(autoload 'deb-view-dired-view "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/deb-view" "\
View Debian package control and data files.
Press \"q\" in either window to kill both buffers
and return to the dired buffer. See deb-view.

\(fn)" t nil)

(autoload 'deb-view "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/deb-view" "\
View Debian package DEBFILE's control and data files.
Press \"q\" in either window to kill both buffers.

In dired, press ^d on the dired line of the .deb file to view.
Or, execute: ESCAPE x deb-view RETURN, and enter the .deb file name
at the prompt.

\(fn DEBFILE)" t nil)

(autoload 'deb-view-mode "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/deb-view" "\
View mode for Debian Archive Files.

\(fn)" t nil)

(autoload 'deb-find "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/deb-view" "\
Search for deb files.
Use the method specified by the variable deb-find-method, and collect
output in a buffer.  See also the variable deb-find-directory.

This command uses a special history list, so you can
easily repeat a `deb-find' command.

\(fn)" t nil)

;;;***

;;;### (autoloads (debian-bug emacs-bug-get-bug-as-email debian-bug-get-bug-as-email
;;;;;;  debian-bug-get-bug-as-file debian-bug-web-package debian-bug-web-packages
;;;;;;  debian-bug-web-this-bug-under-mouse emacs-bug-web-bug debian-bug-web-bug
;;;;;;  debian-bug-web-developer-page debian-bug-web-bugs debian-bug-intent-to-package
;;;;;;  debian-bug-request-for-package debian-bug-wnpp) "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug.el"
;;;;;;  (19489 12640 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug.el

(autoload 'debian-bug-wnpp "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Submit a WNPP bug report to Debian.
Optional argument ACTION can be provided in programs.

\(fn &optional ACTION)" t nil)

(autoload 'debian-bug-request-for-package "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Shortcut for `debian-bug-wnpp' with RFP action.

\(fn)" t nil)

(autoload 'debian-bug-intent-to-package "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Shortcut for `debian-bug-wnpp' with ITP action (for Debian developers).

\(fn)" t nil)

(autoload 'debian-bug-web-bugs "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Browse the BTS for this package via `browse-url'.
With optional argument prefix ARCHIVED, display archived bugs.

\(fn &optional ARCHIVED)" t nil)

(autoload 'debian-bug-web-developer-page "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Browse the web for this package's developer page.

\(fn)" t nil)

(autoload 'debian-bug-web-bug "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Browse the BTS for BUG-NUMBER via `browse-url'.

\(fn &optional BUG-NUMBER)" t nil)

(autoload 'emacs-bug-web-bug "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Browse the Emacs BTS for BUG-NUMBER via `browse-url'.

\(fn &optional BUG-NUMBER)" t nil)

(autoload 'debian-bug-web-this-bug-under-mouse "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Browse the BTS via `browse-url' for the bug report number under mouse.
In a program, mouse location is in EVENT.

\(fn EVENT)" t nil)

(autoload 'debian-bug-web-packages "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Search Debian web page for this package via `browse-url'.

\(fn)" t nil)

(autoload 'debian-bug-web-package "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Search Debian web page in ARCHIVE for this package via `browse-url'.

\(fn ARCHIVE)" t nil)

(autoload 'debian-bug-get-bug-as-file "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Read bug report #BUG-NUMBER as a regular file.

\(fn &optional BUG-NUMBER)" t nil)

(autoload 'debian-bug-get-bug-as-email "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Read bug report #BUG-NUMBER via Email interface.

\(fn &optional BUG-NUMBER)" t nil)

(autoload 'emacs-bug-get-bug-as-email "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Read Emacs bug report #BUG-NUMBER via Email interface.

\(fn &optional BUG-NUMBER)" t nil)

(autoload 'debian-bug "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-bug" "\
Submit a Debian bug report.

\(fn)" t nil)

;;;***

;;;### (autoloads (preseed-mode) "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/preseed"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/preseed.el"
;;;;;;  (17245 35005 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/debian-el/preseed.el

(autoload 'preseed-mode "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/preseed" "\
Major mode for editing debian-installer preseed files colourfully.

\(fn)" t nil)

;;;***

;;;### (autoloads (emacs-bts-control debian-bts-control) "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-bts-control"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-bts-control.el"
;;;;;;  (19331 13712 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-bts-control.el

(autoload 'debian-bts-control "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-bts-control" "\
Contruct a message with initial ACTION command for control@bugs.debian.org.
Contructs a new control command line if called from within the message
being constructed.

If prefix arg is provided, use the current buffer instead instead of
creating a new outgoing email message buffer.
The current buffer is also used if the current major mode matches one listed
in `debian-bts-control-modes-to-reuse'.

\(fn ACTION &optional ARG)" t nil)

(autoload 'emacs-bts-control "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-bts-control" "\
Contruct a message with ACTION command for control@debbugs.gnu.org.
Contructs a new control command line if called from within the message
being constructed.

If prefix arg is provided, use the current buffer instead instead of
creating a new outgoing email message buffer.
The current buffer is also used if the current major mode matches one listed
in `debian-bts-control-modes-to-reuse'.

\(fn ACTION &optional ARG)" t nil)

;;;***

;;;### (autoloads (debian-changelog-mode debian-changelog-add-entry)
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-changelog-mode"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-changelog-mode.el"
;;;;;;  (20121 57468 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-changelog-mode.el

(autoload 'debian-changelog-add-entry "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-changelog-mode" "\
Add a new change entry to a debian-style changelog.
If called from buffer other than a debian/changelog, this will search
for the debian/changelog file to add the entry to.

\(fn)" t nil)

(autoload 'debian-changelog-mode "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-changelog-mode" "\
Major mode for editing Debian-style change logs.
Runs `debian-changelog-mode-hook' if it exists.

Key bindings:

\\{debian-changelog-mode-map}

If you want to use your debian.org email address for debian/changelog
entries without using it for the rest of your email, use the `customize`
interface to set it, or simply set the variable
`debian-changelog-mailing-address' in your ~/.emacs file, e.g.

 (setq debian-changelog-mailing-address \"myname@debian.org\"))

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("/debian/*NEWS" . debian-changelog-mode))
(add-to-list 'auto-mode-alist '("NEWS.Debian" . debian-changelog-mode))
(add-to-list 'auto-mode-alist '("/debian/\\([[:lower:][:digit:]][[:lower:][:digit:].+-]+\\.\\)?changelog\\'" . debian-changelog-mode))
(add-to-list 'auto-mode-alist '("changelog.Debian" . debian-changelog-mode))
(add-to-list 'auto-mode-alist '("changelog.dch" . debian-changelog-mode))

;;;***

;;;### (autoloads (debian-control-mode) "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-control-mode"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-control-mode.el"
;;;;;;  (20043 15570 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-control-mode.el

(autoload 'debian-control-mode "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-control-mode" "\
A major mode for editing Debian control files (i.e. debian/control).

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("/debian/control\\'" . debian-control-mode))

;;;***

;;;### (autoloads (debian-copyright-mode) "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-copyright"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-copyright.el"
;;;;;;  (19536 19929 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-copyright.el

(autoload 'debian-copyright-mode "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/debian-copyright" "\
Mode to edit and read debian/copyright.
\\{debian-copyright-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("debian/.*copyright\\'" . debian-copyright-mode))

(add-to-list 'auto-mode-alist '("\\`/usr/share/doc/.*/copyright" . debian-copyright-mode))

;;;***

;;;### (autoloads (readme-debian-mode) "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/readme-debian"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/readme-debian.el"
;;;;;;  (19181 42024 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/readme-debian.el

(autoload 'readme-debian-mode "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/readme-debian" "\
Mode for reading and editing README.Debian files.
Upon saving the visited README.Debian file, the timestamp at the bottom
will be updated.

\\{readme-debian-mode-map}

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("debian/.*README.*Debian$" . readme-debian-mode))
(add-to-list 'auto-mode-alist '("^/usr/share/doc/.*/README.*Debian.*$" . readme-debian-mode))

;;;***

;;;### (autoloads (align-all-strings align-string) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/align-string"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/align-string.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/align-string.el

(autoload 'align-string "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/align-string" "\
Align first occurrence of REGEXP in each line of region.
If given a prefix argument, align occurrence number COUNT on each line.

\(fn BEGIN END REGEXP COUNT)" t nil)

(autoload 'align-all-strings "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/align-string" "\
Align all occurrences of REGEXP in each line of region.
That is to say, align the first occurrence of each line with each other,
align the second occurence of each line with each other, and so on.

\(fn BEGIN END REGEXP)" t nil)

;;;***

;;;### (autoloads (all) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/all"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/all.el"
;;;;;;  (16059 54755 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/all.el

(autoload 'all "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/all" "\
Show all lines in the current buffer containing a match for REGEXP.

If a match spreads across multiple lines, all those lines are shown.

Each line is displayed with NLINES lines before and after, or -NLINES
before if NLINES is negative.
NLINES defaults to `list-matching-lines-default-context-lines'.
Interactively it is the prefix arg.

The lines are shown in a buffer named `*All*'.
Any changes made in that buffer will be propagated to this buffer.

\(fn REGEXP &optional NLINES)" t nil)

;;;***

;;;### (autoloads (apache-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/apache-mode"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/apache-mode.el"
;;;;;;  (19103 54677 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/apache-mode.el

(autoload 'apache-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/apache-mode" "\
Major mode for editing Apache configuration files.

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("\\.htaccess\\'"   . apache-mode))
(add-to-list 'auto-mode-alist '("httpd\\.conf\\'"  . apache-mode))
(add-to-list 'auto-mode-alist '("srm\\.conf\\'"    . apache-mode))
(add-to-list 'auto-mode-alist '("access\\.conf\\'" . apache-mode))
(add-to-list 'auto-mode-alist '("sites-\\(available\\|enabled\\)/" . apache-mode))

;;;***

;;;### (autoloads (ascii-off ascii-on ascii-display ascii-customize)
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ascii"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ascii.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ascii.el

(autoload 'ascii-customize "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ascii" "\
Customize ASCII options.

\(fn)" t nil)

(autoload 'ascii-display "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ascii" "\
Toggle ASCII code display.

If ARG is null, toggle ASCII code display.
If ARG is a number and is greater than zero, turn on display; otherwise, turn
off display.
If ARG is anything else, turn on display.

\(fn &optional ARG)" t nil)

(autoload 'ascii-on "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ascii" "\
Turn on ASCII code display.

\(fn)" t nil)

(autoload 'ascii-off "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ascii" "\
Turn off ASCII code display.

\(fn)" t nil)

;;;***

;;;### (autoloads (bar-cursor-change bar-cursor-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bar-cursor"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bar-cursor.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bar-cursor.el

(autoload 'bar-cursor-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bar-cursor" "\
Toggle use of variable `bar-cursor-mode'.
This quasi-minor mode changes cursor to a bar cursor in insert mode,
and a block cursor in overwrite mode.  It may only be turned on and
off globally, not on a per-buffer basis (hence the quasi- designation).

Optional ARG turns mode on if ARG is a positive integer.

\(fn &optional ARG)" t nil)

(autoload 'bar-cursor-change "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bar-cursor" "\
Enable or disable advice based on value of variable `bar-cursor-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (bm-previous-mouse bm-previous bm-next-mouse bm-next
;;;;;;  bm-toggle-mouse bm-toggle) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bm"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bm.el"
;;;;;;  (19425 29270 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bm.el

(autoload 'bm-toggle "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bm" "\
Toggle bookmark at point.

\(fn)" t nil)

(autoload 'bm-toggle-mouse "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bm" "\
Toggle a bookmark with a mouse click.
EV is the mouse event.

\(fn EV)" t nil)

(autoload 'bm-next "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bm" "\
Goto next bookmark.

\(fn)" t nil)

(autoload 'bm-next-mouse "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bm" "\
Go to the next bookmark with the scroll wheel.
EV is the mouse event.

\(fn EV)" t nil)

(autoload 'bm-previous "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bm" "\
Goto previous bookmark.

\(fn)" t nil)

(autoload 'bm-previous-mouse "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/bm" "\
Go to the previous bookmark with the scroll wheel.
EV is the mouse event.

\(fn EV)" t nil)

;;;***

;;;### (autoloads (boxquote-unbox boxquote-unbox-region boxquote-fill-paragraph
;;;;;;  boxquote-kill boxquote-narrow-to-boxquote-content boxquote-narrow-to-boxquote
;;;;;;  boxquote-text boxquote-where-is boxquote-shell-command boxquote-describe-key
;;;;;;  boxquote-describe-variable boxquote-describe-function boxquote-boxquote
;;;;;;  boxquote-paragraph boxquote-defun boxquote-yank boxquote-kill-ring-save
;;;;;;  boxquote-insert-buffer boxquote-insert-file boxquote-buffer
;;;;;;  boxquote-region boxquote-title) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote.el"
;;;;;;  (19103 54677 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote.el

(autoload 'boxquote-title "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Set the title of the current boxquote to TITLE.

If TITLE is an empty string the title is removed. Note that the title will
be formatted using `boxquote-title-format'.

\(fn TITLE)" t nil)

(autoload 'boxquote-region "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Draw a box around the left hand side of a region bounding START and END.

\(fn START END)" t nil)

(autoload 'boxquote-buffer "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Apply `boxquote-region' to a whole buffer.

\(fn)" t nil)

(autoload 'boxquote-insert-file "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Insert the contents of a file, boxed with `boxquote-region'.

If `boxquote-title-files' is non-nil the boxquote will be given a title that
is the result of applying `boxquote-file-title-function' to FILENAME.

\(fn FILENAME)" t nil)

(autoload 'boxquote-insert-buffer "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Insert the contents of a buffer, boxes with `boxquote-region'.

If `boxquote-title-buffers' is non-nil the boxquote will be given a title that
is the result of applying `boxquote-buffer-title-function' to BUFFER.

\(fn BUFFER)" t nil)

(autoload 'boxquote-kill-ring-save "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Like `kill-ring-save' but remembers a title if possible.

The title is acquired by calling `boxquote-kill-ring-save-title'. The title
will be used by `boxquote-yank'.

\(fn)" t nil)

(autoload 'boxquote-yank "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Do a `yank' and box it in with `boxquote-region'.

If the yanked entry was placed on the kill ring with
`boxquote-kill-ring-save' the resulting boxquote will be titled with
whatever `boxquote-kill-ring-save-title' returned at the time.

\(fn)" t nil)

(autoload 'boxquote-defun "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Apply `boxquote-region' the current defun.

\(fn)" t nil)

(autoload 'boxquote-paragraph "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Apply `boxquote-region' to the current paragraph.

\(fn)" t nil)

(autoload 'boxquote-boxquote "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Apply `boxquote-region' to the current boxquote.

\(fn)" t nil)

(autoload 'boxquote-describe-function "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Call `describe-function' and boxquote the output into the current buffer.

\(fn)" t nil)

(autoload 'boxquote-describe-variable "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Call `describe-variable' and boxquote the output into the current buffer.

\(fn)" t nil)

(autoload 'boxquote-describe-key "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Call `describe-key' and boxquote the output into the current buffer.

If the call to this command is prefixed with \\[universal-argument] you will also be
prompted for a buffer. The key defintion used will be taken from that buffer.

\(fn KEY)" t nil)

(autoload 'boxquote-shell-command "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Call `shell-command' with COMMAND and boxquote the output.

\(fn COMMAND)" t nil)

(autoload 'boxquote-where-is "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Call `where-is' with DEFINITION and boxquote the result.

\(fn DEFINITION)" t nil)

(autoload 'boxquote-text "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Insert TEXT, boxquoted.

\(fn TEXT)" t nil)

(autoload 'boxquote-narrow-to-boxquote "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Narrow the buffer to the current boxquote.

\(fn)" t nil)

(autoload 'boxquote-narrow-to-boxquote-content "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Narrow the buffer to the content of the current boxquote.

\(fn)" t nil)

(autoload 'boxquote-kill "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Kill the boxquote and its contents.

\(fn)" t nil)

(autoload 'boxquote-fill-paragraph "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Perform a `fill-paragraph' inside a boxquote.

\(fn ARG)" t nil)

(autoload 'boxquote-unbox-region "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Remove a box created with `boxquote-region'.

\(fn START END)" t nil)

(autoload 'boxquote-unbox "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/boxquote" "\
Remove the boxquote that contains `point'.

\(fn)" t nil)

;;;***

;;;### (autoloads (browse-huge-tar-copy-file-at-point browse-huge-tar-view-file-at-point
;;;;;;  browse-huge-tar-file) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/browse-huge-tar"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/browse-huge-tar.el"
;;;;;;  (16313 9500 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/browse-huge-tar.el

(autoload 'browse-huge-tar-file "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/browse-huge-tar" "\
Create a buffer containing a listing of FILENAME as a tar file.

\(fn FILENAME)" t nil)

(autoload 'browse-huge-tar-view-file-at-point "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/browse-huge-tar" "\
Extract the file at the point into a buffer for viewing.

\(fn)" t nil)

(autoload 'browse-huge-tar-copy-file-at-point "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/browse-huge-tar" "\
Extract the file at the point and copy to a local file OUTFILE.
This requires the value of `shell-file-name' to support redirection using \">\".

\(fn OUTFILE)" t nil)

;;;***

;;;### (autoloads (browse-kill-ring browse-kill-ring-default-keybindings)
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/browse-kill-ring"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/browse-kill-ring.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/browse-kill-ring.el

(autoload 'browse-kill-ring-default-keybindings "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/browse-kill-ring" "\
Set up M-y (`yank-pop') so that it can invoke `browse-kill-ring'.
Normally, if M-y was not preceeded by C-y, then it has no useful
behavior.  This function sets things up so that M-y will invoke
`browse-kill-ring'.

\(fn)" t nil)

(autoload 'browse-kill-ring "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/browse-kill-ring" "\
Display items in the `kill-ring' in another buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-initialize color-theme-submit color-theme-install
;;;;;;  color-theme-compare color-theme-make-snapshot color-theme-analyze-defun
;;;;;;  color-theme-print color-theme-install-at-point-for-current-frame
;;;;;;  color-theme-install-at-mouse color-theme-describe color-theme-select)
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme.el

(autoload 'color-theme-select "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads (ctypes-read-file ctypes-auto-parse-mode ctypes-file
;;;;;;  ctypes-dir ctypes-tags ctypes-all-buffers ctypes-buffer ctypes-define-type-in-mode
;;;;;;  ctypes-define-type) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ctypes"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ctypes.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ctypes.el

(autoload 'ctypes-define-type "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ctypes" "\
Add a new TYPE to current major mode and inform font-lock.

When preceded by C-u the display is not updated.

Return non-nil if the type was not known before.

\(fn TYPE &optional DELAY-ACTION MODE)" t nil)

(autoload 'ctypes-define-type-in-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ctypes" "\
Add TYPE to major mode MODE and inform font-lock.

When preceded by C-u the display is not updated.

\(This function is designed for interactive use, please call
`ctypes-define-type' from Lisp programs.)

\(fn TYPE &optional DELAY-ACTION MODE)" t nil)

(autoload 'ctypes-buffer "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ctypes" "\
Search for types in buffer, inform font-lock if any is found.

When preceded by C-u the action is not performed.

Return non-nil if new types are found.

\(fn &optional BUF DELAY-ACTION MODE)" t nil)

(autoload 'ctypes-all-buffers "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ctypes" "\
Search for types in all buffers, inform font-lock about all discoveries.

When preceded by C-u the display is not updated.

Return non-nil if new types are found.

\(fn &optional DELAY-ACTION)" t nil)

(autoload 'ctypes-tags "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ctypes" "\
Search for types in files in the visited TAGS table.
Should no tags table be visited, the user will be prompted for a new.

When preceded by C-u the display is not updated.

Return non-nil if new types are found.

\(fn &optional DELAY-ACTION)" t nil)

(autoload 'ctypes-dir "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ctypes" "\
Search for types in files in a directory hierarchy.

See variable `ctypes-dir-read-file' for a description of which files
are opened during scanning, and how you can change the behavior.

When preceded by C-u the display is not updated.

Return non-nil if new types are found.

\(fn &optional DIR DELAY-ACTION)" t nil)

(autoload 'ctypes-file "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ctypes" "\
Search for types in file FILE.
Should FILE not be loaded it is read into a temporary buffer.

Return mode of file, if new types was found.

\(fn FILE &optional DELAY-ACTION)" t nil)

(autoload 'ctypes-auto-parse-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ctypes" "\
Toggle CTypes auto parse mode; search all new buffers for types.
With arg, turn types Auto Mode on if and only if arg is positive.

This a global minor mode, it does not have a private keymap, nor does
it add itself to the mode line.

Place the following in your startup file to enable this feature in
future sessions:

    (require 'ctypes)
    (ctypes-auto-parse-mode 1)

When activated, the functions in the hook `ctypes-auto-parse-mode-hook'
is called with no args.

\(fn &optional ARG)" t nil)

(autoload 'ctypes-read-file "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ctypes" "\
Load types previously saved with `ctypes-write-file'.
The name of the file is given by the optional argument FILE.
Should no file name be given the value of the variable `ctypes-file-name'
is used.

Please note that the types read will be added to the current types.

When preceded by C-u the display is not updated.

The third argument, NO-ERROR, determines whether or not we should
raise an error if there should be any problem loading the file.

Should the fourth argument, QUIETLY, be non-nil no messages are
generated when the file is loaded.

Return non-nil if new types are found.

\(fn &optional FILE DELAY-ACTION NO-ERROR QUIETLY)" t nil)

;;;***

;;;### (autoloads (dedicated-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/dedicated"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/dedicated.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/dedicated.el

(autoload 'dedicated-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/dedicated" "\
Toggle dedicated minor mode.
With ARG, turn minor mode on if ARG is positive, off otherwise.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (df) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/df"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/df.el"
;;;;;;  (19104 28952 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/df.el

(autoload 'df "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/df" "\
Enables display of space left on any PARTITION in mode-lines.
This display updates automatically every `df-refresh' seconds.

\(fn &optional PARTITION)" t nil)

;;;***

;;;### (autoloads (diminished-minor-modes diminish-maybe-refresh
;;;;;;  diminished-modes diminish-undo diminish) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/diminish"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/diminish.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/diminish.el

(autoload 'diminish "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/diminish" "\
Diminish mode-line display of minor mode MODE to TO-WHAT (default \"\").

Interactively, enter (with completion) the name of any minor mode, followed
on the next line by what you want it diminished to (default empty string).
The response to neither prompt should be quoted.  However, in Lisp code,
both args must be quoted, the first as a symbol, the second as a string,
as in (diminish 'jiggle-mode \" Jgl\").

The mode-line displays of minor modes usually begin with a space, so
the modes' names appear as separate words on the mode line.  However, if
you're having problems with a cramped mode line, you may choose to use single
letters for some modes, without leading spaces.  Capitalizing them works
best; if you then diminish some mode to \"X\" but have abbrev-mode enabled as
well, you'll get a display like \"AbbrevX\".  This function prepends a space
to TO-WHAT if it's > 1 char long & doesn't already begin with a space.

If ANNOTATE-FLAG is nil or omitted, the normal case in interactive use, then
the variable `diminished-minor-modes' will be modified to reflect the change.

\(fn MODE &optional TO-WHAT ANNOTATE-FLAG)" t nil)

(autoload 'diminish-undo "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/diminish" "\
Restore mode-line display of diminished mode MODE to its minor-mode value.
Do nothing if the arg is a minor mode that hasn't been diminished.

Interactively, enter (with completion) the name of any diminished mode (a
mode that was formerly a minor mode on which you invoked M-x diminish).
To restore all diminished modes to minor status, answer `diminished-modes'.
The response to the prompt shouldn't be quoted.  However, in Lisp code,
the arg must be quoted as a symbol, as in (diminish-undo 'diminished-modes).

If ANNOTATE-FLAG is nil or omitted, the normal case in interactive use, then
the variable `diminished-minor-modes' will be modified to reflect the change.

\(fn MODE &optional ANNOTATE-FLAG)" t nil)

(autoload 'diminished-modes "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/diminish" "\
Echo all active diminished or minor modes as if they were minor.
The display goes in the echo area; if it's too long even for that,
you can see the whole thing in the *Messages* buffer.
This doesn't change the status of any modes; it just lets you see
what diminished modes would be on the mode-line if they were still minor.

\(fn)" t nil)

(autoload 'diminish-maybe-refresh "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/diminish" "\
Should redo `diminish'ing only if something has changed.
Right now, do it regardless and hope this isn't too slow.

\(fn)" t nil)

(defvar diminished-minor-modes nil "\
List of minor modes to diminish and their mode line display strings.
The display string can be the empty string if you want the name of the mode
completely removed from the mode line.  If you prefer, you can abbreviate
the name.  For 2 characters or more will be displayed as a separate word on
the mode line, just like minor modes' names.  A single character will be
scrunched up against the previous word.  Multiple single-letter diminished
modes will all be scrunched together.

The display of undiminished modes will not be affected.")

(custom-autoload 'diminished-minor-modes "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/diminish" nil)

;;;***

;;;### (autoloads (edit-env) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/edit-env"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/edit-env.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/edit-env.el

(autoload 'edit-env "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/edit-env" "\
Display, edit, delete and add environment variables.

\(fn)" t nil)

;;;***

;;;### (autoloads (egocentric-update-regexp-list egocentric-mode-off
;;;;;;  egocentric-mode-on egocentric-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/egocentric"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/egocentric.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/egocentric.el

(autoload 'egocentric-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/egocentric" "\
Toggle egocentric mode.
Optional argument ARG is an optional boolean controling whether egocentric-mode should be turned on/off.

\(fn &optional ARG)" t nil)

(autoload 'egocentric-mode-on "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/egocentric" "\
Turn Egocentric mode on.

\(fn)" t nil)

(autoload 'egocentric-mode-off "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/egocentric" "\
Turn Egocentric mode off.

\(fn)" t nil)

(autoload 'egocentric-update-regexp-list "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/egocentric" "\
Update ``egocentric-regexp-list'' from $USER and $NAME variables.

\(fn)" t nil)

;;;***

;;;### (autoloads (eproject-compile eproject-eshell-cd-here eproject-multi-isearch-buffers
;;;;;;  eproject-todo eproject-grep eproject-revisit-project eproject-kill-project-buffers
;;;;;;  eproject-ibuffer eproject-find-file) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject-extras"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject-extras.el"
;;;;;;  (19974 14166 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject-extras.el

(autoload 'eproject-find-file "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject-extras" "\
Present the user with a list of files in the current project.
to select from, open file when selected.

\(fn)" t nil)

(autoload 'eproject-ibuffer "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject-extras" "\
Open an IBuffer window showing all buffers in the current project, or named project if PREFIX arg is supplied.

\(fn PREFIX)" t nil)

(autoload 'eproject-kill-project-buffers "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject-extras" "\
Kill every buffer in the current project, including the current buffer.

If PREFIX is specified, prompt for a project name and kill those
buffers instead.

\(fn PREFIX)" t nil)

(autoload 'eproject-revisit-project "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject-extras" "\
Given a project name, visit the root directory.

If PREFIX arg is supplied, run `eproject-find-file'.

\(fn PREFIX)" t nil)

(autoload 'eproject-grep "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject-extras" "\
Search all files in the current project for REGEXP.

\(fn REGEXP)" t nil)

(autoload 'eproject-todo "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject-extras" "\
Display a project TODO list.

Customize `eproject-todo-expressions' to control what this function looks for.

\(fn)" t nil)

(autoload 'eproject-multi-isearch-buffers "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject-extras" "\
Do a `multi-isearch' on opened buffers in the current project.

Run `eproject-open-all-project-files' first or just
`eproject-grep' if you want to search all project files.

\(fn)" t nil)

(autoload 'eproject-eshell-cd-here "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject-extras" "\
If there is an EShell buffer, cd to the project root in that buffer.

With the prefix arg LOOK-IN-INVISIBLE-BUFFERS looks in buffers that are not currently displayed.

\(fn &optional LOOK-IN-INVISIBLE-BUFFERS)" t nil)

(autoload 'eproject-compile "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject-extras" "\
Run `compile-command' in the project root.

\(fn)" t nil)

;;;***

;;;### (autoloads (ff-paths-install) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ff-paths"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ff-paths.el"
;;;;;;  (20043 15601 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ff-paths.el

(autoload 'ff-paths-install "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/ff-paths" "\
Install ff-paths as a `find-file-not-found-hooks' and to ffap package.

\(fn)" nil nil)

;;;***

;;;### (autoloads (floatbg-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/floatbg"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/floatbg.el"
;;;;;;  (16013 59393 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/floatbg.el

(autoload 'floatbg-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/floatbg" "\
Toggle floatbg mode

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (folding-mode turn-on-folding-mode turn-off-folding-mode
;;;;;;  folding-mode-add-find-file-hook folding-keep-hooked folding-install-hooks
;;;;;;  folding-uninstall-hooks folding-mode-hook-no-regexp folding-mode-string
;;;;;;  folding-inside-mode-name folding-default-mouse-keys-function
;;;;;;  folding-default-keys-function) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding.el"
;;;;;;  (19104 31300 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding.el

(defvar folding-mode nil "\
When Non nil, Folding mode is active in the current buffer.")

(defvar folding-default-keys-function 'folding-bind-default-keys "\
*Function or list of functions used to define keys for Folding mode.
Possible values are:
  folding-bind-default-key
        The standard keymap.

  `folding-bind-backward-compatible-keys'
        Keys used by older versions of Folding mode. This function
        does not conform to Emacs 19.29 style conversions concerning
        key bindings. The prefix key is C - c

  `folding-bind-outline-compatible-keys'
        Define keys compatible with Outline mode.

  `folding-bind-foldout-compatible-keys'
        Define some extra keys compatible with Foldout.

All except `folding-bind-backward-compatible-keys' used the value of
the variable `folding-mode-prefix-key' as prefix the key.
The default is C - c @")

(custom-autoload 'folding-default-keys-function "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding" t)

(defvar folding-default-mouse-keys-function 'folding-bind-default-mouse "\
*Function to bind default mouse keys to `folding-mode-map'.")

(custom-autoload 'folding-default-mouse-keys-function "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding" t)

(defvar folding-inside-mode-name "Fld" "\
*Mode line addition to show inside levels of 'fold' .")

(custom-autoload 'folding-inside-mode-name "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding" t)

(defvar folding-mode-string "Fld" "\
*The minor mode string displayed when mode is on.")

(custom-autoload 'folding-mode-string "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding" t)

(defvar folding-mode-hook-no-regexp "RMAIL" "\
*Regexp which disable automatic folding mode turn on for certain files.")

(custom-autoload 'folding-mode-hook-no-regexp "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding" t)

(defvar folding-mode-marks-alist nil "\
List of (major-mode . fold mark) default combinations to use.
When Folding mode is started, the major mode is checked, and if there
are fold marks for that major mode stored in `folding-mode-marks-alist',
those marks are used by default. If none are found, the default values
of \"{{{ \" and \"}}}\" are used.

Use function  `folding-add-to-marks-list' to add more fold marks. The function
also explains the alist use in details.

Use function `folding-set-local-variables' if you change the current mode's
folding marks during the session.")

(autoload 'folding-uninstall-hooks "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding" "\
Remove hooks set by folding.

\(fn)" nil nil)

(autoload 'folding-install-hooks "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding" "\
Install folding hooks.

\(fn)" nil nil)

(autoload 'folding-keep-hooked "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding" "\
Make sure hooks are in their places.

\(fn)" nil nil)

(autoload 'folding-mode-add-find-file-hook "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding" "\
Append `folding-mode-find-file-hook' to the list `find-file-hooks'.

This has the effect that afterwards, when a folded file is visited, if
appropriate Emacs local variable entries are recognized at the end of
the file, Folding mode is started automatically.

If `inhibit-local-variables' is non-nil, this will not happen regardless
of the setting of `find-file-hooks'.

To declare a file to be folded, put `folded-file: t' in the file's
local variables. eg., at the end of a C source file, put:

/*
Local variables:
folded-file: t
*/

The local variables can be inside a fold.

\(fn)" t nil)

(autoload 'turn-off-folding-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding" "\
Turn off folding.

\(fn)" nil nil)

(autoload 'turn-on-folding-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding" "\
Turn on folding.

\(fn)" nil nil)

(autoload 'folding-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/folding" "\
A folding-editor-like minor mode. ARG INTER.

These are the basic commands that Folding mode provides:

\\{folding-mode-map}

Keys starting with `folding-mode-prefix-key'

\\{folding-mode-prefix-map}

     folding-convert-buffer-for-printing:
     `\\[folding-convert-buffer-for-printing]'
     Makes a ready-to-print, formatted, unfolded copy in another buffer.

     Read the documentation for the above functions for more information.

Overview

    Folds are a way of hierarchically organizing the text in a file, so
    that the text can be viewed and edited at different levels. It is
    similar to Outline mode in that parts of the text can be hidden from
    view. A fold is a region of text, surrounded by special \"fold marks\",
    which act like brackets, grouping the text. Fold mark pairs can be
    nested, and they can have titles. When a fold is folded, the text is
    hidden from view, except for the first line, which acts like a title
    for the fold.

    Folding mode is a minor mode, designed to cooperate with many other
    major modes, so that many types of text can be folded while they are
    being edited (eg., plain text, program source code, Texinfo, etc.).

Folding-mode function

    If Folding mode is not called interactively (`(interactive-p)' is nil),
    and it is called with two or less arguments, all of which are nil, then
    the point will not be altered if `folding-folding-on-startup' is set
    and `folding-whole-buffer' is called. This is generally not a good
    thing, as it can leave the point inside a hidden region of a fold, but
    it is required if the local variables set \"mode: folding\" when the
    file is first read (see `hack-local-variables').

    Not that you should ever want to, but to call Folding mode from a
    program with the default behavior (toggling the mode), call it with
    something like `(folding-mode nil t)'.

Fold marks

    For most types of folded file, lines representing folds have \"{{{\"
    near the beginning. To enter a fold, move the point to the folded line
    and type `\\[folding-shift-in]'. You should no longer be able to see
    the rest of the file, just the contents of the fold, which you couldn't
    see before. You can use `\\[folding-shift-out]' to leave a fold, and
    you can enter and exit folds to move around the structure of the file.

    All of the text is present in a folded file all of the time. It is just
    hidden. Folded text shows up as a line (the top fold mark) with \"...\"
    at the end. If you are in a fold, the mode line displays \"inside n
    folds Narrow\", and because the buffer is narrowed you can't see outside
    of the current fold's text.

    By arranging sections of a large file in folds, and maybe subsections
    in sub-folds, you can move around a file quickly and easily, and only
    have to scroll through a couple of pages at a time. If you pick the
    titles for the folds carefully, they can be a useful form of
    documentation, and make moving though the file a lot easier. In
    general, searching through a folded file for a particular item is much
    easier than without folds.

Managing folds

    To make a new fold, set the mark at one end of the text you want in the
    new fold, and move the point to the other end. Then type
    `\\[folding-fold-region]'. The text you selected will be made into a
    fold, and the fold will be entered. If you just want a new, empty fold,
    set the mark where you want the fold, and then create a new fold there
    without moving the point. Don't worry if the point is in the middle of
    a line of text, `folding-fold-region' will not break text in the middle
    of a line. After making a fold, the fold is entered and the point is
    positioned ready to enter a title for the fold. Do not delete the fold
    marks, which are usually something like \"{{{\" and \"}}}\". There may
    also be a bit of fold mark which goes after the fold title.

    If the fold markers get messed up, or you just want to see the whole
    unfolded file, use `\\[folding-open-buffer]' to unfolded the whole
    file, so you can see all the text and all the marks. This is useful for
    checking/correcting unbalanced fold markers, and for searching for
    things. Use `\\[folding-whole-file]' to fold the buffer again.

    `folding-shift-out' will attempt to tidy the current fold just before
    exiting it. It will remove any extra blank lines at the top and bottom,
    (outside the fold marks). It will then ensure that fold marks exists,
    and if they are not, will add them (after asking). Finally, the number
    of blank lines between the fold marks and the contents of the fold is
    set to 1 (by default).

Folding package customizations

    If the fold marks are not set on entry to Folding mode, they are set to
    a default for current major mode, as defined by
    `folding-mode-marks-alist' or to \"{{{ \" and \"}}}\" if none are
    specified.

    To bind different commands to keys in Folding mode, set the bindings in
    the keymap `folding-mode-map'.

    The hooks `folding-mode-hook' and `<major-mode-name>-folding-hook' are
    called before folding the buffer and applying the key bindings in
    `folding-mode-map'. This is a good hook to set extra or different key
    bindings in `folding-mode-map'. Note that key bindings in
    `folding-mode-map' are only examined just after calling these hooks;
    new bindings in those maps only take effect when Folding mode is being
    started. The hook `folding-load-hook' is called when Folding mode is
    loaded into Emacs.

Mouse behavior

    If you want folding to detect point of actual mouse click, please see
    variable `folding-mouse-yank-at-p'.

    To customise the mouse actions, look at `folding-behave-table'.

\(fn &optional ARG INTER)" t nil)

;;;***

;;;### (autoloads (framepop-display-buffer framepop-enable framepop-disable)
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/framepop"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/framepop.el"
;;;;;;  (16269 22230 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/framepop.el

(autoload 'framepop-disable "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/framepop" "\
Disable automatic pop-up temporary windows.

\(fn)" t nil)

(autoload 'framepop-enable "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/framepop" "\
Enable automatic pop-up temporary windows.

\(fn)" t nil)

(autoload 'framepop-display-buffer "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/framepop" "\
Display-buffer for FramePop.
Displays BUF in a separate frame -- the FramePop frame.
BUF bay be a buffer or a buffer name.

You can display a buffer in the FramePop frame with \\[framepop-display-buffer].

Several commands are available for manipulating the FramePop frame after
typing the keymap prefix (default F2).

\\{framepop-map}

\(fn BUF)" t nil)

;;;***

;;;### (autoloads (graphviz-dot-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/graphviz-dot-mode"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/graphviz-dot-mode.el"
;;;;;;  (19810 28840 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/graphviz-dot-mode.el

(autoload 'graphviz-dot-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/graphviz-dot-mode" "\
Major mode for the dot language. \\<graphviz-dot-mode-map>
TAB indents for graph lines.

\\[graphviz-dot-indent-graph]	- Indentaion function.
\\[graphviz-dot-preview]	- Previews graph in a buffer.
\\[graphviz-dot-view]	- Views graph in an external viewer.
\\[graphviz-dot-indent-line]	- Indents current line of code.
\\[graphviz-dot-complete-word]	- Completes the current word.
\\[electric-graphviz-dot-terminate-line]	- Electric newline.
\\[electric-graphviz-dot-open-brace]	- Electric open braces.
\\[electric-graphviz-dot-close-brace]	- Electric close braces.
\\[electric-graphviz-dot-semi]	- Electric semi colons.

Variables specific to this mode:

  graphviz-dot-dot-program            (default `dot')
       Location of the dot program.
  graphviz-dot-view-command           (default `doted %s')
       Command to run when `graphviz-dot-view' is executed.
  graphviz-dot-view-edit-command      (default nil)
       If the user should be asked to edit the view command.
  graphviz-dot-save-before-view       (default t)
       Automatically save current buffer berore `graphviz-dot-view'.
  graphviz-dot-preview-extension      (default `png')
       File type to use for `graphviz-dot-preview'.
  graphviz-dot-auto-indent-on-newline (default t)
       Whether to run `electric-graphviz-dot-terminate-line' when
       newline is entered.
  graphviz-dot-auto-indent-on-braces (default t)
       Whether to run `electric-graphviz-dot-open-brace' and
       `electric-graphviz-dot-close-brace' when braces are
       entered.
  graphviz-dot-auto-indent-on-semi (default t)
       Whether to run `electric-graphviz-dot-semi' when semi colon
       is typed.
  graphviz-dot-toggle-completions  (default nil)
       If completions should be displayed in the buffer instead of a
       completion buffer when \\[graphviz-dot-complete-word] is
       pressed repeatedly.

This mode can be customized by running \\[graphviz-dot-customize].

Turning on Graphviz Dot mode calls the value of the variable
`graphviz-dot-mode-hook' with no args, if that value is non-nil.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.dot\\'" . graphviz-dot-mode))

;;;***

;;;### (autoloads (highlight-beyond-fill-column) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/highlight-beyond-fill-column"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/highlight-beyond-fill-column.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/highlight-beyond-fill-column.el

(autoload 'highlight-beyond-fill-column "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/highlight-beyond-fill-column" "\
Setup this buffer to highlight beyond the `fill-column'.

\(fn)" t nil)

;;;***

;;;### (autoloads (highlight-current-line-minor-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/highlight-current-line"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/highlight-current-line.el"
;;;;;;  (19104 31300 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/highlight-current-line.el

(autoload 'highlight-current-line-minor-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/highlight-current-line" "\
Toggle highlight-current-line minor mode.
With ARG, turn minor mode on if ARG is positive, off otherwise.
You can customize the face of the highlighted line and whether the entire
line is hightlighted by customizing the group highlight-current-line.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (home-end-end home-end-home) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/home-end"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/home-end.el"
;;;;;;  (19812 22000 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/home-end.el

(autoload 'home-end-home "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/home-end" "\
Go to beginning of line/window/buffer.
First hitting key goes to beginning of line, second in a row goes to
beginning of window, third in a row goes to beginning of buffer.

\(fn &optional ARG)" t nil)

(autoload 'home-end-end "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/home-end" "\
Go to end of line/window/buffer.
First hitting key goes to end of line, second in a row goes to end
of window, third in a row goes to end of buffer.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (htmlize-many-files-dired htmlize-many-files htmlize-file
;;;;;;  htmlize-region htmlize-buffer) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/htmlize"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/htmlize.el"
;;;;;;  (19103 48317 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/htmlize.el

(autoload 'htmlize-buffer "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/htmlize" "\
Convert BUFFER to HTML, preserving colors and decorations.

The generated HTML is available in a new buffer, which is returned.
When invoked interactively, the new buffer is selected in the current
window.  The title of the generated document will be set to the buffer's
file name or, if that's not available, to the buffer's name.

Note that htmlize doesn't fontify your buffers, it only uses the
decorations that are already present.  If you don't set up font-lock or
something else to fontify your buffers, the resulting HTML will be
plain.  Likewise, if you don't like the choice of colors, fix the mode
that created them, or simply alter the faces it uses.

\(fn &optional BUFFER)" t nil)

(autoload 'htmlize-region "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/htmlize" "\
Convert the region to HTML, preserving colors and decorations.
See `htmlize-buffer' for details.

\(fn BEG END)" t nil)

(autoload 'htmlize-file "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/htmlize" "\
Load FILE, fontify it, convert it to HTML, and save the result.

Contents of FILE are inserted into a temporary buffer, whose major mode
is set with `normal-mode' as appropriate for the file type.  The buffer
is subsequently fontified with `font-lock' and converted to HTML.  Note
that, unlike `htmlize-buffer', this function explicitly turns on
font-lock.  If a form of highlighting other than font-lock is desired,
please use `htmlize-buffer' directly on buffers so highlighted.

Buffers currently visiting FILE are unaffected by this function.  The
function does not change current buffer or move the point.

If TARGET is specified and names a directory, the resulting file will be
saved there instead of to FILE's directory.  If TARGET is specified and
does not name a directory, it will be used as output file name.

\(fn FILE &optional TARGET)" t nil)

(autoload 'htmlize-many-files "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/htmlize" "\
Convert FILES to HTML and save the corresponding HTML versions.

FILES should be a list of file names to convert.  This function calls
`htmlize-file' on each file; see that function for details.  When
invoked interactively, you are prompted for a list of files to convert,
terminated with RET.

If TARGET-DIRECTORY is specified, the HTML files will be saved to that
directory.  Normally, each HTML file is saved to the directory of the
corresponding source file.

\(fn FILES &optional TARGET-DIRECTORY)" t nil)

(autoload 'htmlize-many-files-dired "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/htmlize" "\
HTMLize dired-marked files.

\(fn ARG &optional TARGET-DIRECTORY)" t nil)

;;;***

;;;### (autoloads (joc-toggle-buffer) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/joc-toggle-buffer"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/joc-toggle-buffer.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/joc-toggle-buffer.el

(autoload 'joc-toggle-buffer "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/joc-toggle-buffer" "\
Switch to previous active buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (joc-toggle-case-by-region joc-toggle-case-by-word-backwards
;;;;;;  joc-toggle-case-by-word joc-toggle-case-backwards joc-toggle-case)
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/joc-toggle-case"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/joc-toggle-case.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/joc-toggle-case.el

(autoload 'joc-toggle-case "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/joc-toggle-case" "\
Toggle the case of the character under point.
If called with a PREFIX argument, it toggles that many
characters (see joc-toggle-case-stop-at-eol).  If the prefix is
negative, the case of the character before point is toggled, and
if called with a prefix argument, N characters before point will
have their case toggled (see also joc-toggle-case-backwards).

\(fn PREFIX)" t nil)

(autoload 'joc-toggle-case-backwards "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/joc-toggle-case" "\
Convenience function to toggle case of character preceeding point.
This is the same as calling joc-toggle-case with a negative
prefix (and is in fact implemented that way).

\(fn PREFIX)" t nil)

(autoload 'joc-toggle-case-by-word "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/joc-toggle-case" "\
Similar to joc-toggle-case except that the count (supplied by
the prefix argument) is of the number of words, not letters, to
be toggled.  It will start from point and move to the end of
the first word at a minimum, and then take whole words from
there.  If called with a negative prefix, then from point to
beginning of current word will have their case toggled, going
backwards for N words (see also
joc-toggle-case-by-word-backwards).  Note that the
joc-toggle-case-stop-at-eol setting will be honored.

\(fn PREFIX)" t nil)

(autoload 'joc-toggle-case-by-word-backwards "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/joc-toggle-case" "\
Convenience function to toggle case by word, backwards.
This is the same as calling joc-toggle-case-by-word with a
negative prefix (and is in fact implemented that way).

\(fn PREFIX)" t nil)

(autoload 'joc-toggle-case-by-region "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/joc-toggle-case" "\
Toggles the case of all characters in the current region.

\(fn START END)" t nil)

;;;***

;;;### (autoloads (keydef) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/keydef"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/keydef.el"
;;;;;;  (16013 59398 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/keydef.el

(autoload 'keydef "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/keydef" "\
Define the key sequence SEQ, written in kbd form, to run CMD.
CMD is automatically wrapped in an anonymous interactive function if it
is Emacs Lisp code rather than a command name. SEQ may also have the form
\(MODE SEQ) where the car is a mode name; for example

  (keydef (latex \"C-c %\") comment-region)

means to define the given key in latex-mode-map. And this will work even
if latex-mode is not loaded yet, provided that it is possible to deduce
the file that it will be loaded from, either from the autoload info or
by searching for a matching file name in the Emacs load path.

For best results, the \"mode name\" that you use here should yield the
proper foo-mode-map symbol when \"-mode-map\" is appended; although
this will normally match the mode name as given in the mode line,
Shell-script is one example I can think of where it doesn't---the map is
named sh-mode-map. The common cases that I know about, including
shell-script-mode and latex-mode, are handled as exceptions through the
variable mode-map-alist. But for other cases you will need to look up
the name of the mode-map that goes with the given mode.

\(fn SEQ &rest CMD)" nil t)

;;;***

;;;### (autoloads (lcomp-keys-mode lcomp-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/lcomp"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/lcomp.el"
;;;;;;  (19331 13881 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/lcomp.el

(defvar lcomp-mode nil "\
Non-nil if Lcomp mode is enabled.
See the command `lcomp-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `lcomp-mode'.")

(custom-autoload 'lcomp-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/lcomp" nil)

(autoload 'lcomp-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/lcomp" "\
Auto close completion window mode.

\(fn &optional ARG)" t nil)

(defvar lcomp-keys-mode nil "\
Non-nil if Lcomp-Keys mode is enabled.
See the command `lcomp-keys-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `lcomp-keys-mode'.")

(custom-autoload 'lcomp-keys-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/lcomp" nil)

(autoload 'lcomp-keys-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/lcomp" "\
Add keybindings to the completions buffer.

\\{lcomp-keys-override-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (map-lines-copy map-lines-kill copy-line map-lines)
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/map-lines"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/map-lines.el"
;;;;;;  (19381 25289 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/map-lines.el

(autoload 'map-lines "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/map-lines" "\
Map a COMMAND-C (kill, copying, or a custom command) over lines matching REGEX.

\(fn COMMAND-C REGEX)" t nil)

(autoload 'copy-line "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/map-lines" "\
Copy a whole line to the kill ring.

\(fn)" t nil)

(autoload 'map-lines-kill "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/map-lines" "\
Kill all lines matching REGEX.  Yanking will insert all killed lines.

\(fn REGEX)" t nil)

(autoload 'map-lines-copy "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/map-lines" "\
Copy all lines matching REGEX to the kill ring.  Yanking will insert all such lines.

\(fn REGEX)" t nil)

;;;***

;;;### (autoloads (markdown-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/markdown-mode"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/markdown-mode.el"
;;;;;;  (20043 182 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/markdown-mode.el

(autoload 'markdown-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

;;;***

;;;### (autoloads (marker-visit-truncate-mark-ring marker-visit-next
;;;;;;  marker-visit-prev) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/marker-visit"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/marker-visit.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/marker-visit.el

(autoload 'marker-visit-prev "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/marker-visit" "\
From point, visit the nearest mark earlier in the buffer.

\(fn)" t nil)

(autoload 'marker-visit-next "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/marker-visit" "\
From point, visit the nearest mark later in the buffer.

\(fn)" t nil)

(autoload 'marker-visit-truncate-mark-ring "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/marker-visit" "\
Truncate the `mark-ring'.

\(fn)" t nil)

;;;***

;;;### (autoloads (matlab-shell matlab-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/matlab"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/matlab.el"
;;;;;;  (19223 14031 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/matlab.el

(autoload 'matlab-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/matlab" "\
MATLAB(R) mode is a major mode for editing MATLAB dot-m files.
\\<matlab-mode-map>
Convenient editing commands are:
 \\[matlab-comment-region]   - Comment/Uncomment out a region of code.
 \\[matlab-fill-comment-line] - Fill the current comment line.
 \\[matlab-fill-region] - Fill code and comments in region.
 \\[matlab-fill-paragraph]     - Refill the current command or comment.
 \\[matlab-complete-symbol]   - Symbol completion of matlab symbolsbased on the local syntax.
 \\[matlab-indent-sexp] - Indent syntactic block of code.

Convenient navigation commands are:
 \\[matlab-beginning-of-command]   - Move to the beginning of a command.
 \\[matlab-end-of-command]   - Move to the end of a command.
 \\[matlab-beginning-of-defun] - Move to the beginning of a function.
 \\[matlab-end-of-defun] - Move do the end of a function.
 \\[matlab-forward-sexp] - Move forward over a syntactic block of code.
 \\[matlab-backward-sexp] - Move backwards over a syntactic block of code.

Convenient template insertion commands:
 \\[tempo-template-matlab-function] - Insert a function definition.
 \\[tempo-template-matlab-if] - Insert an IF END block.
 \\[tempo-template-matlab-for] - Insert a FOR END block.
 \\[tempo-template-matlab-switch] - Insert a SWITCH END statement.
 \\[matlab-insert-next-case] - Insert the next CASE condition in a SWITCH.
 \\[matlab-insert-end-block] - Insert a matched END statement.  With optional ARG, reindent.
 \\[matlab-stringify-region] - Convert plaintext in region to a string with correctly quoted chars.

Variables:
  `matlab-indent-level'		Level to indent blocks.
  `matlab-cont-level'		Level to indent continuation lines.
  `matlab-cont-requires-ellipsis' Does your MATLAB support implied elipsis.
  `matlab-case-level'		Level to unindent case statements.
  `matlab-indent-past-arg1-functions'
                                Regexp of functions to indent past the first
                                  argument on continuation lines.
  `matlab-maximum-indents'      List of maximum indents during lineups.
  `matlab-comment-column'       Goal column for on-line comments.
  `fill-column'			Column used in auto-fill.
  `matlab-indent-function-body' If non-nil, indents body of MATLAB functions.
  `matlab-functions-have-end'	If non-nil, MATLAB functions terminate with end.
  `matlab-return-function'	Customize RET handling with this function.
  `matlab-auto-fill'            Non-nil, do auto-fill at startup.
  `matlab-fill-code'            Non-nil, auto-fill code.
  `matlab-fill-strings'         Non-nil, auto-fill strings.
  `matlab-verify-on-save-flag'  Non-nil, enable code checks on save.
  `matlab-highlight-block-match-flag'
                                Enable matching block begin/end keywords.
  `matlab-vers-on-startup'	If t, show version on start-up.
  `matlab-handle-simulink'      If t, enable simulink keyword highlighting.

All Key Bindings:
\\{matlab-mode-map}

\(fn)" t nil)

(autoload 'matlab-shell "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/matlab" "\
Create a buffer with MATLAB running as a subprocess.

MATLAB shell cannot work on the MS Windows platform because MATLAB is not
a console application.

\(fn)" t nil)

;;;***

;;;### (autoloads (miniedit-install-for-xemacs miniedit-install miniedit
;;;;;;  miniedit-introduction miniedit-quick-start) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/miniedit"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/miniedit.el"
;;;;;;  (19387 53923 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/miniedit.el

(autoload 'miniedit-quick-start "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/miniedit" "\
Provides electric help for function `miniedit-quick-start'.

\(fn)" t nil)

(autoload 'miniedit-introduction "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/miniedit" "\
Provides electric help for function `miniedit-introduction'.

\(fn)" t nil)

(autoload 'miniedit "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/miniedit" "\
The main miniedit function.

\(fn)" t nil)

(autoload 'miniedit-install "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/miniedit" "\
Install miniedit by frobbing your miniedit-local maps.

\(fn)" t nil)

(autoload 'miniedit-install-for-xemacs "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/miniedit" "\
Try to Install miniedit for Xemacs.

\(fn)" t nil)

;;;***

;;;### (autoloads (muttrc-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/muttrc-mode"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/muttrc-mode.el"
;;;;;;  (19030 17715 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/muttrc-mode.el

(autoload 'muttrc-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/muttrc-mode" "\
Major mode for editing Muttrc files.
This function ends by invoking the function(s) `muttrc-mode-hook'.

\\{muttrc-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (nuke-trailing-whitespace) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/nuke-trailing-whitespace"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/nuke-trailing-whitespace.el"
;;;;;;  (19104 31301 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/nuke-trailing-whitespace.el

(autoload 'nuke-trailing-whitespace "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/nuke-trailing-whitespace" "\
Nuke all trailing whitespace in the buffer.
Whitespace in this case is just spaces or tabs.
This is a useful function to put on write-file-hooks.

Unless called interactively, this function uses
`nuke-trailing-whitespace-p' to determine how to behave.
However, even if this variable is `t', this function will query for
replacement if the buffer is read-only.

\(fn)" t nil)

;;;***

;;;### (autoloads (obfuscate-url) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/obfusurl"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/obfusurl.el"
;;;;;;  (18431 47702 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/obfusurl.el

(autoload 'obfuscate-url "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/obfusurl" "\
Obfuscate an URL under `point'.

This might be useful if you're writing out an URL for someone but the URL
itself is a spoiler. The URL will still work but it won't be readable (by
most mortals anyway).

\(fn)" t nil)

;;;***

;;;### (autoloads (pack-windows) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pack-windows"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pack-windows.el"
;;;;;;  (16313 9500 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pack-windows.el

(autoload 'pack-windows "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pack-windows" "\
Resize all windows vertically to display as much information as possible.

Only windows that are on the left edge of the frame are taken into
account. The vertical space available in the frame is first divided
among all these windows. Then any window requireing less lines than it
got to display its whole buffer is shrinked, and the freed space is
divided equally among all the other windows.

If some vertical space remains afterwards, it is given in totality to
the currently selected window.

Do not shrink any window to less than `window-min-height'.

Shrink windows iteratively, performing at most `pack-windows-max-iteration'
iterations. The number of iterations really performed will be
displayed in the echo area if `pack-windows-verbose' is non-nil.

\(fn)" t nil)

;;;***

;;;### (autoloads (perldoc-perl-hook perldoc-at-point perldoc) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/perldoc"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/perldoc.el"
;;;;;;  (19536 18952 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/perldoc.el

(autoload 'perldoc "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/perldoc" "\
Run perldoc on the given STRING.
If the string is a recognised function then we can call `perldoc-function',
otherwise we call `perldoc-module'.
A non-nil interactive argument forces the caches to be updated.

\(fn &optional STRING RE-CACHE)" t nil)

(autoload 'perldoc-at-point "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/perldoc" "\
Call `perldoc' for string at point.

\(fn)" t nil)

(autoload 'perldoc-perl-hook "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/perldoc" "\
A hook which binds F1 to `perldoc-at-point'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (pod-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pod-mode"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pod-mode.el"
;;;;;;  (19536 20515 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pod-mode.el

(autoload 'pod-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pod-mode" "\
Major mode for editing POD files (Plain Old Documentation for Perl).

Commands:\\<pod-mode-map>
\\[pod-link]  `pod-link'
\\[pod-link-section]     `pod-link-section'
\\[pod-link-module]     `pod-link-module'
\\[pod-link-module-section]     `pod-link-module-section'

Turning on pod mode calls the hooks in `pod-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads (refresh-pretty-control-l pp^L-^L-display-table-entry
;;;;;;  pp^L-^L-string Pretty-Control-L) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pp-c-l"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pp-c-l.el"
;;;;;;  (19416 52725 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pp-c-l.el

(let ((loads (get 'Pretty-Control-L 'custom-loads))) (if (member '"emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pp-c-l" loads) nil (put 'Pretty-Control-L 'custom-loads (cons '"emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pp-c-l" loads))))

(defface pp^L-highlight (if (> emacs-major-version 21) '((((type x w32 mac graphic) (class color)) (:box (:line-width 3 :style pressed-button))) (t (:inverse-video t))) '((((type x w32 mac graphic) (class color)) (:foreground "Blue" :background "DarkSeaGreen1")) (t (:inverse-video t)))) "\
*Face used to highlight `pp^L-^L-vector'." :group (quote Pretty-Control-L) :group (quote faces))

(defvar pp^L-^L-string "          Section (Printable Page)          " "\
*Highlighted string displayed in place of each Control-l (^L) character.
If `pp^L-^L-string-function' is non-nil, then the string that function
returns is used instead of `pp^L-^L-string'.")

(custom-autoload 'pp^L-^L-string "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pp-c-l" t)

(unless (fboundp 'define-minor-mode) (defcustom pretty-control-l-mode nil "*Toggle pretty display of Control-l (`^L') characters.\nSetting this variable directly does not take effect;\nuse either \\[customize] or command `pretty-control-l-mode'." :set (lambda (symbol value) (pretty-control-l-mode (if value 1 -1))) :initialize 'custom-initialize-default :type 'boolean :group 'Pretty-Control-L))

(autoload 'pp^L-^L-display-table-entry "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pp-c-l" "\
Returns the display-table entry for Control-l (`^L') char in WINDOW.
A vector determining how a Control-l character is displayed in WINDOW.
Either a vector of characters or nil.  The characters are displayed in
place of the Control-l character.  nil means `^L' is displayed.

In effect, this concatenates `pp^L-^L-string-pre', `pp^L-^L-string',
and `pp^L-^L-string-post'.

\(fn WINDOW)" nil nil)

(if (fboundp 'define-minor-mode) (eval '(define-minor-mode pretty-control-l-mode "Toggle pretty display of Control-l (`^L') characters.\nWith ARG, turn pretty display of `^L' on if and only if ARG is positive." :init-value nil :global t :group 'Pretty-Control-L :link `(url-link :tag "Send Bug Report" ,(concat "mailto:" "drew.adams" "@" "oracle" ".com?subject=pp-c-l.el bug: &body=Describe bug here, starting with `emacs -q'.  Don't forget to mention your Emacs and library versions.")) :link '(url-link :tag "Other Libraries by Drew" "http://www.emacswiki.org/cgi-bin/wiki/DrewsElispLibraries") :link '(url-link :tag "Download" "http://www.emacswiki.org/cgi-bin/wiki/pp-c-l.el") :link '(url-link :tag "Description" "http://www.emacswiki.org/cgi-bin/wiki/PrettyControlL") :link '(emacs-commentary-link :tag "Commentary" "pp-c-l") (if pretty-control-l-mode (add-hook 'window-configuration-change-hook 'refresh-pretty-control-l) (remove-hook 'window-configuration-change-hook 'refresh-pretty-control-l)) (walk-windows (lambda (window) (let ((display-table (or (window-display-table window) (make-display-table)))) (aset display-table 12 (and pretty-control-l-mode (pp^L-^L-display-table-entry window))) (set-window-display-table window display-table))) 'no-minibuf 'visible))) (defun pretty-control-l-mode (&optional arg) "Toggle pretty display of Control-l (`^L') characters.\nWith ARG, turn pretty display of `^L' on if and only if ARG is positive." (interactive "P") (setq pretty-control-l-mode (if arg (> (prefix-numeric-value arg) 0) (not pretty-control-l-mode))) (if pretty-control-l-mode (add-hook 'window-configuration-change-hook 'refresh-pretty-control-l) (remove-hook 'window-configuration-change-hook 'refresh-pretty-control-l)) (walk-windows (lambda (window) (let ((display-table (or (window-display-table window) (make-display-table)))) (aset display-table 12 (and pretty-control-l-mode (pp^L-^L-display-table-entry window))) (set-window-display-table window display-table))) 'no-minibuf 'visible)))

(autoload 'refresh-pretty-control-l "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/pp-c-l" "\
Reinitialize `pretty-control-l-mode', if on, to update the display.

\(fn)" t nil)

;;;***

;;;### (autoloads (project-add) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/projects"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/projects.el"
;;;;;;  (19487 45802 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/projects.el

(autoload 'project-add "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/projects" "\
Add the project named NAME with root directory DIRECTORY.

\(fn NAME DIRECTORY)" t nil)

;;;***

;;;### (autoloads (protect-process-buffer-from-kill-mode protect-buffer-from-kill-mode)
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/protbuf"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/protbuf.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/protbuf.el

(defvar protect-buffer-from-kill-mode nil "\
*If non-nil, then prevent buffer from being accidentally killed.
This variable is local to all buffers.")

(defvar protect-process-buffer-from-kill-mode nil "\
*If non-nil, then protect buffer with live process from being killed.
This variable is local to all buffers.")

(defvar protect-process-buffer-from-kill-preserve-function nil "\
*Function to run to determine whether to kill a process buffer.
If function returns non-nil, buffer is preserved.  Otherwise, the buffer
may be killed.

If this variable is undefined, default action is to test whether a process
object is using this buffer as a process buffer.

This variable is buffer-local when set.")

(autoload 'protect-buffer-from-kill-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/protbuf" "\
Toggle `kill-buffer' protection on current buffer.
Optionally, set a PREFIX argument to set or unset protection, and specify
alternate BUFFER.

\(fn &optional PREFIX BUFFER)" t nil)

(autoload 'protect-process-buffer-from-kill-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/protbuf" "\
Toggle `kill-buffer' protection on current buffer with active process.
Protection only applies as long as the buffer has an active process.
Optionally, set a PREFIX argument to set or unset protection, and specify
alternate BUFFER.

\(fn &optional PREFIX BUFFER)" t nil)

;;;***

;;;### (autoloads (protocols-clear-cache protocols-lookup) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/protocols"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/protocols.el"
;;;;;;  (18431 47702 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/protocols.el

(autoload 'protocols-lookup "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/protocols" "\
Find a protocol and display its details.

\(fn SEARCH)" t nil)

(autoload 'protocols-clear-cache "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/protocols" "\
Clear the protocols \"cache\".

\(fn)" t nil)

;;;***

;;;### (autoloads (quack-install quack-pltfile-mode quack-scheme-mode-hookfunc
;;;;;;  quack-inferior-scheme-mode-hookfunc) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/quack"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/quack.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/quack.el
(add-to-list 'auto-mode-alist '("\\.plt\\'" . quack-pltfile-mode))

(autoload 'quack-inferior-scheme-mode-hookfunc "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/quack" "\


\(fn)" nil nil)

(autoload 'quack-scheme-mode-hookfunc "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/quack" "\


\(fn)" nil nil)

(autoload 'quack-pltfile-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/quack" "\


\(fn)" t nil)

(autoload 'quack-install "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/quack" "\
Install quack.el into scheme-mode.

\(fn)" nil nil)

;;;***

;;;### (autoloads (rfcview-mode rfcview-find-index rfcview-find-rfc
;;;;;;  rfcview-customize) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/rfcview"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/rfcview.el"
;;;;;;  (19104 31301 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/rfcview.el

(autoload 'rfcview-customize "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/rfcview" "\
Enter the RFCview Custom group.

\(fn)" t nil)

(autoload 'rfcview-find-rfc "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/rfcview" "\
Find RFC NUMBER and view it in RFcview mode.
Interactively, prompt for the number.
See `rfcview-rfc-location-pattern' for where to search.

\(fn NUMBER)" t nil)

(autoload 'rfcview-find-index "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/rfcview" "\
Find the RFC index and hyperlink it.

\(fn)" t nil)

(autoload 'rfcview-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/rfcview" "\
Major mode for viewing Internet RFCs.

http://www.loveshack.ukfsn.org/emacs/rfcview.el
http://www.neilvandyke.org/rfcview/

Key bindings:
\\{rfcview-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (services-clear-cache services-lookup) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/services"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/services.el"
;;;;;;  (18431 47702 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/services.el

(autoload 'services-lookup "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/services" "\
Find a service and display its details.

\(fn SEARCH PROTOCOL)" t nil)

(autoload 'services-clear-cache "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/services" "\
Clear the services \"cache\".

\(fn)" t nil)

;;;***

;;;### (autoloads (session-jump-to-last-change) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/session"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/session.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/session.el

(autoload 'session-jump-to-last-change "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/session" "\
Jump to the position of the last change.
Without prefix arg, jump successively to previous change positions which
differ by at least `session-jump-undo-threshold' characters by repeated
invocation of this command.  With prefix argument 0, jump to end of last
change.  With numeric prefix argument, jump to start of first change in
the ARG's undo block in the `buffer-undo-list'.

With non-numeric prefix argument (\\[universal-argument] only), set
point as oldest change position.  It might change slightly if you jump
to it due to intermediate insert/delete elements in the
`buffer-undo-list'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (turn-on-setnu-mode setnu-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/setnu"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/setnu.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/setnu.el

(autoload 'setnu-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/setnu" "\
Toggle `setnu-mode'.
With prefix argument ARG, turn `setnu-mode' on if argument is positive.
When `setnu-mode' is enabled, a line number will appear at the left
margin of each line.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-setnu-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/setnu" "\
Turn on `setnu-mode'.
Useful for adding to a `major-mode' hook variable.
Example:
    (add-hook 'text-mode-hook 'turn-on-setnu-mode)
to automatically turn on line numbering when enterting `text-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (shell-command-completion-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/shell-command"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/shell-command.el"
;;;;;;  (19104 31301 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/shell-command.el

(autoload 'shell-command-completion-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/shell-command" "\
Enable or disable tab-completion for some commands.
The commands are `shell-command', `shell-command-on-region', `grep',
`grep-find' and `compile'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (show-ws-toggle-show-trailing-whitespace show-ws-toggle-show-hard-spaces
;;;;;;  show-ws-toggle-show-tabs) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/show-wspace"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/show-wspace.el"
;;;;;;  (19104 31301 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/show-wspace.el

(defalias 'toggle-show-tabs-show-ws 'show-ws-toggle-show-tabs)

(autoload 'show-ws-toggle-show-tabs "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/show-wspace" "\
Toggle highlighting of TABs, using face `show-ws-tab'.

\(fn)" t nil)

(defalias 'toggle-show-hard-spaces-show-ws 'show-ws-toggle-show-hard-spaces)

(autoload 'show-ws-toggle-show-hard-spaces "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/show-wspace" "\
Toggle highlighting of non-breaking space characters (`\240').
Uses face `show-ws-hard-space'.

\(fn)" t nil)

(defalias 'toggle-show-trailing-whitespace-show-ws 'show-ws-toggle-show-trailing-whitespace)

(autoload 'show-ws-toggle-show-trailing-whitespace "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/show-wspace" "\
Toggle highlighting of trailing whitespace.
Uses face `show-ws-trailing-whitespace'.

\(fn)" t nil)

;;;***

;;;### (autoloads (sm-add-all-headers sm-add-random-header) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/silly-mail"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/silly-mail.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/silly-mail.el

(autoload 'sm-add-random-header "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/silly-mail" "\
Insert a random silly mail header.
The choice of available headers is taken from `sm-mail-header-table'.
If a random header was already inserted, it it removed in favor of a new one.

\(fn)" t nil)

(autoload 'sm-add-all-headers "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/silly-mail" "\
Insert one of every kind of silly mail header defined.
The choice of available headers is taken from `sm-mail-header-table'.

\(fn)" t nil)

;;;***

;;;### (autoloads (slang-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/slang-mode"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/slang-mode.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/slang-mode.el

(autoload 'slang-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/slang-mode" "\
Major mode for editing slang scripts.
The following keys are bound:
\\{slang-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (sys-apropos) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/sys-apropos"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/sys-apropos.el"
;;;;;;  (16013 59403 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/sys-apropos.el

(autoload 'sys-apropos "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/sys-apropos" "\
Ask the system apropos command for man-pages matching QUERY.

\(fn QUERY)" t nil)

;;;***

;;;### (autoloads (tabbar-mwheel-mode tabbar-mode tabbar-local-mode
;;;;;;  tabbar-mwheel-switch-group tabbar-mwheel-switch-tab tabbar-mwheel-forward-tab
;;;;;;  tabbar-mwheel-backward-tab tabbar-mwheel-forward-group tabbar-mwheel-backward-group
;;;;;;  tabbar-mwheel-forward tabbar-mwheel-backward tabbar-press-scroll-right
;;;;;;  tabbar-press-scroll-left tabbar-press-home tabbar-forward-tab
;;;;;;  tabbar-backward-tab tabbar-forward-group tabbar-backward-group
;;;;;;  tabbar-forward tabbar-backward) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar.el"
;;;;;;  (18106 17053 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar.el

(autoload 'tabbar-backward "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Select the previous available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-forward "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Select the next available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-backward-group "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Go to selected tab in the previous available group.

\(fn)" t nil)

(autoload 'tabbar-forward-group "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Go to selected tab in the next available group.

\(fn)" t nil)

(autoload 'tabbar-backward-tab "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Select the previous visible tab.

\(fn)" t nil)

(autoload 'tabbar-forward-tab "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Select the next visible tab.

\(fn)" t nil)

(autoload 'tabbar-press-home "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Press the tab bar home button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-left "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Press the tab bar scroll-left button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-right "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Press the tab bar scroll-right button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-mwheel-backward "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Select the previous available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Select the next available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-group "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Go to selected tab in the previous available group.
If there is only one group, select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-group "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Go to selected tab in the next available group.
If there is only one group, select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-tab "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-tab "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-tab "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Select the next or previous tab according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-group "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Select the next or previous group of tabs according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-local-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Toggle local display of the tab bar.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.
When turned on, if a local header line is shown, it is hidden to show
the tab bar.  The tab bar is locally hidden otherwise.  When turned
off, if a local header line is hidden or the tab bar is locally
hidden, it is shown again.  Signal an error if Tabbar mode is off.

\(fn &optional ARG)" t nil)

(defvar tabbar-mode nil "\
Non-nil if Tabbar mode is enabled.
See the command `tabbar-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mode'.")

(custom-autoload 'tabbar-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" nil)

(autoload 'tabbar-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Toggle display of a tab bar in the header line.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mode-map}

\(fn &optional ARG)" t nil)

(defvar tabbar-mwheel-mode nil "\
Non-nil if Tabbar-Mwheel mode is enabled.
See the command `tabbar-mwheel-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mwheel-mode'.")

(custom-autoload 'tabbar-mwheel-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" nil)

(autoload 'tabbar-mwheel-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tabbar" "\
Toggle use of the mouse wheel to navigate through tabs or groups.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mwheel-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (tail-command tail-file) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tail"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tail.el"
;;;;;;  (19536 20905 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tail.el

(autoload 'tail-file "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tail" "\
Tails FILE specified with argument FILE inside a new buffer.
FILE *cannot* be a remote file specified with ange-ftp syntax because it is
passed to the Unix tail command.

\(fn FILE)" t nil)

(autoload 'tail-command "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tail" "\
Tails COMMAND with arguments ARGS inside a new buffer.
It is also called by `tail-file'

\(fn COMMAND &rest ARGS)" t nil)

;;;***

;;;### (autoloads (trivial-cite) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tc"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tc.el"
;;;;;;  (16295 5169 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tc.el

(autoload 'trivial-cite "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tc" "\
A simple citation function for use in news/mailreaders.
It parses the headers via the functions defined in `tc-header-funs', then
makes a attribution for the citation using `tc-make-attribution' and indents
the inserted text with `tc-indent-citation'.
Numeric prefix arguments is how many lines of body to cite (useful for citing
mails with long attachments).
Usage:  (auto-load 'trivial-cite \"tc\" t t)
        (add-hook 'mail-citation-hook 'trivial-cite)
Bugs:  Not very intelligent about old citation marks other than '>'.
Customization:  See variables tc-fill-column, tc-remove-signature,
tc-citation-string, tc-make-attribution and tc-header-funs.

\(fn)" nil nil)

;;;***

;;;### (autoloads (thinks-maybe-region thinks-yank thinks-region
;;;;;;  thinks) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/thinks"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/thinks.el"
;;;;;;  (18431 47702 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/thinks.el

(autoload 'thinks "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/thinks" "\
Insert TEXT wrapped in a think bubble.

Prefix a call to this function with \\[universal-argument] if you don't want
the text to be filled for you.

\(fn TEXT)" t nil)

(autoload 'thinks-region "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/thinks" "\
Bubble wrap region bounding START and END.

Prefix a call to this function with \\[universal-argument] if you don't want
the text to be filled for you.

\(fn START END)" t nil)

(autoload 'thinks-yank "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/thinks" "\
Do a `yank' and bubble wrap the yanked text.

Prefix a call to this function with \\[universal-argument] if you don't want
the text to be filled for you.

\(fn)" t nil)

(autoload 'thinks-maybe-region "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/thinks" "\
If region is active, bubble wrap region bounding START and END.
If not, query for text to insert in bubble.

\(fn)" t nil)

;;;***

;;;### (autoloads (tlc-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tlc"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tlc.el"
;;;;;;  (20738 53960 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tlc.el

(autoload 'tlc-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tlc" "\
Major mode for editing Tlc files, or files found in tlc directories.

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("\\.tlc\\'" .tlc-mode))

;;;***

;;;### (autoloads (tld) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tld"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tld.el"
;;;;;;  (18431 47702 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tld.el

(autoload 'tld "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/tld" "\
Search the TLD list.

\(fn SEARCH)" t nil)

;;;***

;;;### (autoloads (twiddle-compile twiddle-start) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/twiddle"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/twiddle.el"
;;;;;;  (16013 59409 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/twiddle.el

(autoload 'twiddle-start "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/twiddle" "\
Start a mode line display hack.
If called interactively with a prefix argument, prompt for the name of
a hack to run.  If called from lisp, optional argument HACK is the name of
a hack to run.
Named hacks are defined in the table `twiddle-hacks'.

\(fn &optional HACK)" t nil)

(autoload 'twiddle-compile "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/twiddle" "\
Like \\[compile], but run a twiddle hack during compilation.
If called with a prefix argument, prompt for a specific hack to run.

\(fn &rest COMPILE-ARGS)" t nil)

;;;***

;;;### (autoloads (underhat-region) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/under"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/under.el"
;;;;;;  (16262 60507 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/under.el

(autoload 'underhat-region "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/under" "\
Underline the region.

\(fn)" t nil)

;;;***

;;;### (autoloads (xrdb-mode) "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/xrdb-mode"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/xrdb-mode.el"
;;;;;;  (19391 54726 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/xrdb-mode.el

(autoload 'xrdb-mode "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/xrdb-mode" "\
Major mode for editing xrdb config files.
\\{xrdb-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (vm-bogofilter-setup) "emacs-goodies-el/emacs-goodies-el/elisp/vm-bonus-el/vm-bogofilter"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/vm-bonus-el/vm-bogofilter.el"
;;;;;;  (20857 45723 0 0))
;;; Generated autoloads from emacs-goodies-el/emacs-goodies-el/elisp/vm-bonus-el/vm-bogofilter.el

(autoload 'vm-bogofilter-setup "emacs-goodies-el/emacs-goodies-el/elisp/vm-bonus-el/vm-bogofilter" "\
Initialize vm-bogofilter.

\(fn)" t nil)

;;;***

;;;### (autoloads (flymake-shell-load) "flymake-shell/flymake-shell"
;;;;;;  "flymake-shell/flymake-shell.el" (20858 32949 0 0))
;;; Generated autoloads from flymake-shell/flymake-shell.el

(autoload 'flymake-shell-load "flymake-shell/flymake-shell" "\
Configure flymake mode to check the current buffer's shell-script syntax.

\(fn)" t nil)

;;;***

;;;### (autoloads (goto-last-change) "goto-last-change/goto-last-change"
;;;;;;  "goto-last-change/goto-last-change.el" (20857 45848 0 0))
;;; Generated autoloads from goto-last-change/goto-last-change.el

(autoload 'goto-last-change "goto-last-change/goto-last-change" "\
Set point to the position of the last change.
Consecutive calls set point to the position of the previous change.
With a prefix arg (optional arg MARK-POINT non-nil), set mark so \\[exchange-point-and-mark]
will return point to the current position.

\(fn &optional MARK-POINT MINIMAL-LINE-DISTANCE)" t nil)

;;;***

;;;### (autoloads (jedi:setup anything-jedi-related-names helm-jedi-related-names
;;;;;;  jedi:ac-setup jedi:complete jedi:start-dedicated-server)
;;;;;;  "jedi" "jedi/jedi.el" (20858 31621))
;;; Generated autoloads from jedi/jedi.el

(autoload 'jedi:start-dedicated-server "jedi" "\
Start Jedi server dedicated to this buffer.
This is useful, for example, when you want to use different
`sys.path' for some buffer.  When invoked as an interactive
command, it asks you how to start the Jedi server.  You can edit
the command in minibuffer to specify the way Jedi server run.

If you want to setup how Jedi server is started programmatically
per-buffer/per-project basis, make `jedi:server-command' and
`jedi:server-args' buffer local and set it in `python-mode-hook'.
See also: `jedi:server-args'.

\(fn COMMAND)" t nil)

(autoload 'jedi:complete "jedi" "\
Complete code at point.

\(fn &key (EXPAND ac-expand-on-auto-complete))" t nil)

(autoload 'jedi:ac-setup "jedi" "\
Add Jedi AC sources to `ac-sources'.

\(fn)" t nil)

(autoload 'helm-jedi-related-names "jedi" "\
Find related names of the object at point using `helm' interface.

\(fn)" t nil)

(autoload 'anything-jedi-related-names "jedi" "\
Find related names of the object at point using `anything' interface.

\(fn)" t nil)

(autoload 'jedi:setup "jedi" "\
Fully setup jedi.el for current buffer.
It setups `ac-sources' (calls `jedi:ac-setup') and turns
`jedi-mode' on.

This function is intended to be called from `python-mode-hook',
like this::

       (add-hook 'python-mode-hook 'jedi:setup)

You can also call this function as a command, to quickly test
what jedi can do.

\(fn)" t nil)

;;;***

;;;### (autoloads (gfm-mode markdown-mode) "markdown-mode/markdown-mode"
;;;;;;  "markdown-mode/markdown-mode.el" (20858 33454 0 0))
;;; Generated autoloads from markdown-mode/markdown-mode.el

(autoload 'markdown-mode "markdown-mode/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(autoload 'gfm-mode "markdown-mode/markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

;;;***

;;;### (autoloads (list-packages describe-package package-initialize
;;;;;;  package-install-file package-install-from-buffer package-install
;;;;;;  package-enable-at-startup) "package" "package/package.el"
;;;;;;  (20857 47752))
;;; Generated autoloads from package/package.el

(defvar package-enable-at-startup t "\
Whether to activate installed packages when Emacs starts.
If non-nil, packages are activated after reading the init file
and before `after-init-hook'.  Activation is not done if
`user-init-file' is nil (e.g. Emacs was started with \"-q\").

Even if the value is nil, you can type \\[package-initialize] to
activate the package system at any time.")

(custom-autoload 'package-enable-at-startup "package" t)

(autoload 'package-install "package" "\
Install the package named NAME.
Interactively, prompt for the package name.
The package is found on one of the archives in `package-archives'.

\(fn NAME)" t nil)

(autoload 'package-install-from-buffer "package" "\
Install a package from the current buffer.
When called interactively, the current buffer is assumed to be a
single .el file that follows the packaging guidelines; see info
node `(elisp)Packaging'.

When called from Lisp, PKG-INFO is a vector describing the
information, of the type returned by `package-buffer-info'; and
TYPE is the package type (either `single' or `tar').

\(fn PKG-INFO TYPE)" t nil)

(autoload 'package-install-file "package" "\
Install a package from a file.
The file can either be a tar file or an Emacs Lisp file.

\(fn FILE)" t nil)

(autoload 'package-initialize "package" "\
Load Emacs Lisp packages, and activate them.
The variable `package-load-list' controls which packages to load.
If optional arg NO-ACTIVATE is non-nil, don't activate packages.

\(fn &optional NO-ACTIVATE)" t nil)

(autoload 'describe-package "package" "\
Display the full documentation of PACKAGE (a symbol).

\(fn PACKAGE)" t nil)

(autoload 'list-packages "package" "\
Display a list of packages.
Fetches the updated list of packages before displaying.
The list is displayed in a buffer named `*Packages*'.

\(fn)" t nil)

(defalias 'package-list-packages 'list-packages)

;;;***

;;;### (autoloads (svn-status svn-checkout) "psvn/psvn" "psvn/psvn.el"
;;;;;;  (20857 45714 0 0))
;;; Generated autoloads from psvn/psvn.el

(autoload 'svn-checkout "psvn/psvn" "\
Run svn checkout REPOS-URL PATH.

\(fn REPOS-URL PATH)" t nil)
 (defalias 'svn-examine 'svn-status)

(autoload 'svn-status "psvn/psvn" "\
Examine the status of Subversion working copy in directory DIR.
If ARG is -, allow editing of the parameters. One could add -N to
run svn status non recursively to make it faster.
For every other non nil ARG pass the -u argument to `svn status', which
asks svn to connect to the repository and check to see if there are updates
there.

If there is no .svn directory, examine if there is CVS and run
`cvs-examine'. Otherwise ask if to run `dired'.

\(fn DIR &optional ARG)" t nil)

;;;***

;;;### (autoloads (python-pep8) "python-pep8/python-pep8" "python-pep8/python-pep8.el"
;;;;;;  (20857 47192 0 0))
;;; Generated autoloads from python-pep8/python-pep8.el

(autoload 'python-pep8 "python-pep8/python-pep8" "\
Run PEP8, and collect output in a buffer.
While pep8 runs asynchronously, you can use \\[next-error] (M-x next-error),
or \\<python-pep8-mode-map>\\[compile-goto-error] in the grep output buffer, to go to the lines where pep8 found matches.

\(fn)" t nil)

(defalias 'pep8 'python-pep8)

;;;***

;;;### (autoloads (smex-initialize smex) "smex/smex" "smex/smex.el"
;;;;;;  (20857 45833 0 0))
;;; Generated autoloads from smex/smex.el

(autoload 'smex "smex/smex" "\


\(fn)" t nil)

(autoload 'smex-initialize "smex/smex" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (yas-global-mode yas-minor-mode) "yasnippet/yasnippet"
;;;;;;  "yasnippet/yasnippet.el" (20857 45708 0 0))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (zencoding-preview zencoding-expand-yas zencoding-mode
;;;;;;  zencoding-expand-line) "zencoding-mode/zencoding-mode" "zencoding-mode/zencoding-mode.el"
;;;;;;  (20857 45823 0 0))
;;; Generated autoloads from zencoding-mode/zencoding-mode.el

(autoload 'zencoding-expand-line "zencoding-mode/zencoding-mode" "\
Replace the current line's zencode expression with the corresponding expansion.
If prefix ARG is given or region is visible call `zencoding-preview' to start an
interactive preview.

Otherwise expand line directly.

For more information see `zencoding-mode'.

\(fn ARG)" t nil)

(autoload 'zencoding-mode "zencoding-mode/zencoding-mode" "\
Minor mode for writing HTML and CSS markup.
With zen coding for HTML and CSS you can write a line like

  ul#name>li.item*2

and have it expanded to

  <ul id=\"name\">
    <li class=\"item\"></li>
    <li class=\"item\"></li>
  </ul>

This minor mode defines keys for quick access:

\\{zencoding-mode-keymap}

Home page URL `http://www.emacswiki.org/emacs/ZenCoding'.

See also `zencoding-expand-line'.

\(fn &optional ARG)" t nil)

(autoload 'zencoding-expand-yas "zencoding-mode/zencoding-mode" "\


\(fn)" t nil)

(autoload 'zencoding-preview "zencoding-mode/zencoding-mode" "\
Expand zencode between BEG and END interactively.
This will show a preview of the expanded zen code and you can
accept it or skip it.

\(fn BEG END)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-complete/auto-complete-config.el"
;;;;;;  "auto-complete/auto-complete-pkg.el" "cl-lib/cl-lib-autoloads.el"
;;;;;;  "cl-lib/cl-lib-pkg.el" "cl-lib/cl-lib.el" "color-theme-tango/color-theme-tango.el"
;;;;;;  "color-theme/color-theme-autoloads.el" "ctable/ctable.el"
;;;;;;  "ctable/test-ctable.el" "deferred/concurrent-sample.el" "deferred/concurrent.el"
;;;;;;  "deferred/deferred-samples.el" "deferred/deferred.el" "deferred/test-concurrent.el"
;;;;;;  "deferred/test-deferred.el" "el-get/el-get-autoloads.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-el-loaddefs.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/debian-el.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/debian-el/gnus-BTS.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/devscripts-el/devscripts.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/devscripts-el/pbuilder-log-view-mode.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/devscripts-el/pbuilder-mode.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/dpkg-dev-el-loaddefs.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/dpkg-dev-el/dpkg-dev-el.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/auto-fill-inhibit.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/clipper.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/coffee.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme-library.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/color-theme_seldefcustom.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/csv-mode.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/dict.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/dir-locals.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/emacs-goodies-build.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/emacs-goodies-custom.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/emacs-goodies-el.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/emacs-goodies-loaddefs.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/eproject.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/filladapt.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/highlight-completion.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/initsplit.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/keywiz.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/maplev.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/minibuf-electric.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/minibuffer-complete-cycle.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/mutt-alias.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/todoo.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/toggle-option.el"
;;;;;;  "emacs-goodies-el/emacs-goodies-el/elisp/emacs-goodies-el/upstart-mode.el"
;;;;;;  "epc/epc.el" "epc/epcs.el" "epc/test-epc.el" "escreen/escreen.el"
;;;;;;  "flymake-easy/flymake-easy.el" "jedi/test-jedi.el" "jedi/tryout-jedi.el"
;;;;;;  "popup/popup.el" "switch-window/switch-window.el" "yasnippet/dropdown-list.el"
;;;;;;  "yasnippet/yasnippet-debug.el" "yasnippet/yasnippet-tests.el")
;;;;;;  (20858 33455 295834 239000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here

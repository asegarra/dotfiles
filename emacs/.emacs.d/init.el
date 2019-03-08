(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq custom-file (concat user-emacs-directory "custom.el"))
;(when (file-exists-p custom-file)
;  (load custom-file))

; Create backups in on place
(setq backup-directory-alist
      `(("." . "~/.emacs.d/backups")))

(use-package solarized-theme
  :ensure t
  :disabled
  :config
  (load-theme 'solarized-light t))

(use-package gruvbox-theme
  :ensure t
  :disabled
  :config
  (load-theme 'gruvbox-light-hard t))

(use-package base16-theme
  :ensure t
  :config
  (load-theme 'base16-isotope t))

(use-package oceanic-theme
  :disabled     
  :ensure t
  :config
  (load-theme 'oceanic t))


(use-package diminish
  :ensure t)

(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (which-key-mode))

(use-package helm
  :ensure t
  :diminish helm-mode
  :init
  (require 'helm-config)
  :bind
  (("M-x"     . helm-M-x)
   ("M-y"     . helm-show-kill-ring)
   ("C-x b"   . helm-mini)
   ("C-x r b" . helm-filtered-bookmarks)
   ("C-x C-f" . helm-find-files)
   ("C-h a"   . helm-apropos)
   ("C-c h o" . helm-occur)
   ("C-h SPC" . helm-all-mark-rings)
   :map helm-map
   ("<tab>"   . helm-execute-persistent-action)
   ("C-i"     . helm-execute-persistent-action)
   ("C-z"     . helm-select-action))
  :config
  (helm-mode))

(use-package helm-descbinds
  :ensure t
  :config
  (helm-descbinds-mode))

(set-frame-font "Fantasque Sans Mono 12" nil t)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)
(setq visible-bell 1) ; Disable annoying beep
(show-paren-mode) ; Highlight matching parens
(setq set-mark-command-repeat-pop 1)
(tool-bar-mode -1) ; Disable tool bar
(scroll-bar-mode -1) ; Disable scroll bar
(menu-bar-mode -1) ; Disable menu bar

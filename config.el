(if (display-graphic-p)
(use-package doom-themes
  :ensure t
;;  :config (load-theme 'doom-gruvbox) ;; divider ok, but comments too pale
  :config (load-theme 'doom-dark+)
;;  :config (load-theme 'doom-acario-dark) ;; duvider ok, but not great colors.
;;  :config (load-theme 'doom-ephemeral) ;; looks reasonable, but too dark. not great on gui.
;;  :config (load-theme 'doom-laserwave)
;;  :config (load-theme 'doom-molokai)
;;  :config (load-theme 'doom-monokai-pro)
;;  :config (load-theme 'doom-sourcerer)
))

;; (unless (display-graphic-p) (load-theme 'wheatgrass))
;; (unless (display-graphic-p) (load-theme 'wombat))
(unless (display-graphic-p) (load-theme 'tsdh-dark))

;; enable spacemacs mode-line
(use-package spaceline
  :ensure t
  :init 
  (progn 
  ;; size of modeline
     (setq powerline-height 20)
     (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state))
  :config
  (require 'spaceline-config)
;;    (setq spaceline-buffer-encoding-abbrev-p nil)
;;    (setq spaceline-line-column-p nil)
;;    (setq spaceline-line-p nil)
;;    (setq powerline-default-separator (quote arrow))
;;  (spaceline-emacs-theme)
  (spaceline-spacemacs-theme)
  (setq
;;      spaceline-buffer-encoding-abbrev-p nil
        spaceline-window-numbers-unicode t
        )
;;        spaceline-minor-modes-separator nil)
        (powerline-reset)
)

;; Change some powerline colors in the terminal
  (unless (display-graphic-p) 
          (set-face-background 'powerline-inactive2 "color-233")
          (set-face-foreground 'powerline-inactive2 "white")
          (set-face-background 'powerline-inactive1 "color-24")
          (set-face-foreground 'powerline-inactive1 "white")
          (set-face-background 'mode-line-inactive "color-233")
;;          (set-face-foreground 'mode-line-inactive "white")
  )

;; (use-package doom-modeline
;;   :ensure t
;;   :init (doom-modeline-mode 1))

(use-package all-the-icons
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

;; EVIL mode buahhahahaha
(use-package evil
  :ensure t
  :init 
  (setq evil-disable-insert-state-bindings t)
;;  (setq evil-mode-line-format 'before)
  :config (evil-mode)
)
;;(setq-default mode-line-format 'before)

;; Org bullets
(use-package org-bullets
  :ensure t
  :hook (org-mode . org-bullets-mode)
)

;; Add org indent mode
(add-hook 'org-mode-hook 'org-indent-mode)

(add-hook 'org-mode-hook 
          '(lambda () (visual-line-mode 1)))

(setq line-number-mode t)
(setq column-number-mode t)

;; electric pair mode
(electric-pair-mode t)

;; color code parenthesis
(use-package rainbow-delimiters
  :ensure t
  :init 
  (add-hook 'prod-mode-hook #'rainbow-delimiters-mode)
)

;; Change scrolling behavior
(setq scroll-conservatively 100)

;; Disable bell sound
(setq ring-bell-function 'ignore)

;; Highlite cursor line
(global-hl-line-mode t)

;; disable auto-indent mode
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

;; Disable startup screen.
(setq inhibit-startup-screen t)

;; enable ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

(defun split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 2") 'split-and-follow-horizontally)

(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

;; enable IDO mode :: alternative to ivy, below.
;; (setq ido-enable-flex-matching nil)
;; (setq ido-create-new-buffer 'always)
;; (setq ido-everywhere t)
;; (ido-mode 1)

;; ;; enable IDO vertical mode
;; (use-package ido-vertical-mode
;;   :ensure t
;;   :init (ido-vertical-mode 1))

;; ;; Enable smex : like IDO but for M-x
;; (use-package smex
;;   :ensure t
;;   :init (smex-initialize)
;;   :bind ("M-x" . smex)
;; )

;; Ivy for completion. 
(use-package ivy
  :ensure t
  :config (ivy-mode 1)
)

;; swiper for faster search
(use-package swiper
  :ensure t
  :bind ("C-s" . swiper)
)

(use-package flyspell
   :ensure t
   :hook 
   (org-mode . flyspell-mode)
   (prog-mode . flyspell-prog-mode)     
)

(add-to-list 'auto-mode-alist '("\\.src\\'" . fortran-mode))

;; setup files with .f90 to be read as f90
(add-to-list 'auto-mode-alist '("\\.f90\\'" . f90-mode))
(add-to-list 'auto-mode-alist '("\\.F90\\'" . f90-mode))

;; Fixed garbage collection, makes emacs start up faster 
(setq gc-cons-threshold 402653184
      gc-cons-percentage 0.6)

(defvar startup/file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

(defun startup/revert-file-name-handler-alist ()
  (setq file-name-handler-alist startup/file-name-handler-alist))

(defun startup/reset-gc ()
  (setq gc-cons-threshold 16777216
	gc-cons-percentage 0.1))

(add-hook 'emacs-startup-hook 'startup/revert-file-name-handler-alist)
(add-hook 'emacs-startup-hook 'startup/reset-gc)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b54dc0500ff61167e1201b0dba6925f354a267f51b4d4b15e338c2d67d92fbda" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "1068ae7acf99967cc322831589497fee6fb430490147ca12ca7dd3e38d9b552a" "f9cae16fd084c64bf0a9de797ef9caedc9ff4d463dd0288c30a3f89ecf36ca7e" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" default)))
 '(flycheck-gfortran-language-standard "f95")
 '(org-image-actual-width (quote (0)))
 '(package-selected-packages
   (quote
    (dashboard treemacs-projectile projectile org-ref org-refer ox-clip ox-clips org2blog org-sidebar openwith org-pdftools org-pdfview pdf-tools nov adaptive-wrap company-web emmet-mode lorem-ipsum web-mode poet-theme faff-theme rg deadgrep company eglot lsp-treemacs lsp-ivy lsp-ui lsp-mode synosaurus dictionary ace-window hungry-delete treemacs-icons-dired treemacs-evil treemacs dired-subtree dired-narrow general org-bullets flycheck wheatgrass zerodark-theme ivy swiper evil rainbow-delimiters spaceline smex ido-vertical-mode spacemacs-theme doom-modeline all-the-icons doom-themes which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(italic ((t (:foreground "blue" :slant italic))))
 '(mode-line-inactive ((t (:background "#171717" :foreground "#6a6d62" :box (:line-width 1 :color "grey75" :style released-button)))))
 '(org-document-info-keyword ((t (:foreground "deep sky blue"))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.5))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.3))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.1))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.0))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0)))))


(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" ."http://melpa.milkbox.net/packages/")
)
(add-to-list 'package-archives
	     '("gnu"   . "http://elpa.gnu.org/packages/")
)
(add-to-list 'package-archives
	     '("ELPA"  . "http://tromey.com/elpa/")
)
(add-to-list 'package-archives
	     '("org"   . "https://orgmode.org/elpa/")
)
(package-initialize)


;; Make sure use-package is installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(if (display-graphic-p)
(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))
)

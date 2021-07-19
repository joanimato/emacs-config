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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#5a5475" "#CC6666" "#C2FFDF" "#FFEA00" "#55b3cc" "#FFB8D1" "#96CBFE" "#F8F8F0"])
 '(company-box-color-icon t)
 '(custom-safe-themes
   '("52498cb107fb252e92ac35b8a5eba466fede7f03bebcf50412190c452ed7329e" "b5803dfb0e4b6b71f309606587dd88651efe0972a5be16ece6a958b197caeed8" "d47f868fd34613bd1fc11721fe055f26fd163426a299d45ce69bef1f109e1e71" "6b1abd26f3e38be1823bd151a96117b288062c6cde5253823539c6926c3bb178" "9f9fc38446c384a4e909b7220d15bf0c152849ef42f5b1b97356448612c77953" "5784d048e5a985627520beb8a101561b502a191b52fa401139f4dd20acb07607" "3d54650e34fa27561eb81fc3ceed504970cc553cfd37f46e8a80ec32254a3ec3" "1f1b545575c81b967879a5dddc878783e6ebcca764e4916a270f9474215289e5" "1eaea5a7c448ed13b6132637c766069afa9c7db50dc8ae9be1a02af26fa5c86e" "b7e460a67bcb6cac0a6aadfdc99bdf8bbfca1393da535d4e8945df0648fa95fb" "f302eb9c73ead648aecdc1236952b1ceb02a3e7fcd064073fb391c840ef84bca" "97db542a8a1731ef44b60bc97406c1eb7ed4528b0d7296997cbb53969df852d6" "cbdf8c2e1b2b5c15b34ddb5063f1b21514c7169ff20e081d39cf57ffee89bc1e" "26e07f80888647204145085c4fed78e0e6652901b62a25de2b8372d71de9c0a1" "22a514f7051c7eac7f07112a217772f704531b136f00e2ccfaa2e2a456558d39" "6e14157d0c8857e81035e6c7131dc17e4115b3911c82a1fd32e528aec8e89eab" "e6a2832325900ae153fd88db2111afac2e20e85278368f76f36da1f4d5a8151e" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "e8df30cd7fb42e56a4efc585540a2e63b0c6eeb9f4dc053373e05d774332fc13" "4b6b6b0a44a40f3586f0f641c25340718c7c626cbf163a78b5a399fbe0226659" "93dec2c95bb9d938acabb9ab1cb3c89132f50ac37a10a2c7d749a0c214386349" "e19ac4ef0f028f503b1ccafa7c337021834ce0d1a2bca03fcebc1ef635776bea" "d268b67e0935b9ebc427cad88ded41e875abfcc27abd409726a92e55459e0d01" "850bb46cc41d8a28669f78b98db04a46053eca663db71a001b40288a9b36796c" "06c592b1d9ad37072f27877b2a88c47a912f5218ec124b52dcee39074c5a12d2" "48eb9d71942067639387e3be1f8592ebf8c50b83a83b1139e8b8d324433901c9" "f7fed1aadf1967523c120c4c82ea48442a51ac65074ba544a5aefc5af490893b" "5f19cb23200e0ac301d42b880641128833067d341d22344806cdad48e6ec62f6" "dfe6e884e20dfcea70b1b6fc7fa2b631c94251665e067ff3d12f1ec278249a9f" "e2c926ced58e48afc87f4415af9b7f7b58e62ec792659fcb626e8cba674d2065" "c5ded9320a346146bbc2ead692f0c63be512747963257f18cc8518c5254b7bf5" "fe2539ccf78f28c519541e37dc77115c6c7c2efcec18b970b16e4a4d2cd9891d" "a6e620c9decbea9cac46ea47541b31b3e20804a4646ca6da4cce105ee03e8d0e" "8146edab0de2007a99a2361041015331af706e7907de9d6a330a3493a541e5a6" "d7ee1fdb09a671a968b2a751746e5b3f5f26ac1fd475d95d094ee1e4ce446d58" "a0be7a38e2de974d1598cf247f607d5c1841dbcef1ccd97cded8bea95a7c7639" "0b3aee906629ac7c3bd994914bf252cf92f7a8b0baa6d94cb4dfacbd4068391d" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" "90679ecae57c5afe3183af0b6e449a532968a8111fac55e51f39c5b6d56e7407" "b54dc0500ff61167e1201b0dba6925f354a267f51b4d4b15e338c2d67d92fbda" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "1068ae7acf99967cc322831589497fee6fb430490147ca12ca7dd3e38d9b552a" "f9cae16fd084c64bf0a9de797ef9caedc9ff4d463dd0288c30a3f89ecf36ca7e" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" default))
 '(exec-path
   '("/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_14" "/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_14" "/Applications/Emacs.app/Contents/MacOS/libexec" "/Applications/Emacs.app/Contents/MacOS/bin" "/usr/local/bin"))
 '(exwm-floating-border-color "#282633")
 '(fci-rule-color "#B8A2CE")
 '(flycheck-gfortran-language-standard "f95")
 '(highlight-tail-colors ((("#64657f") . 0) (("#605f82") . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#464258" "#C5A3FF"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#464258" "#C2FFDF"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#464258" "#656565"))
 '(objed-cursor-color "#CC6666")
 '(org-image-actual-width '(0))
 '(package-selected-packages
   '(slime-company slime company-box conda pyvenv company-anaconda anaconda-mode esup ox-reveal magit counsel-projectile csv-mode transpose-frame org-ac helpful counsel ivy-rich org-tempo diminish ess poly-R ox-hugo eloud dashboard treemacs-projectile projectile org-ref org-refer ox-clip ox-clips org2blog org-sidebar openwith org-pdftools org-pdfview pdf-tools nov adaptive-wrap company-web emmet-mode lorem-ipsum web-mode poet-theme faff-theme rg deadgrep company eglot lsp-treemacs lsp-ivy lsp-ui lsp-mode synosaurus dictionary ace-window hungry-delete treemacs-icons-dired treemacs-evil treemacs dired-subtree dired-narrow general org-bullets flycheck wheatgrass zerodark-theme ivy swiper evil rainbow-delimiters spaceline smex ido-vertical-mode spacemacs-theme doom-modeline all-the-icons doom-themes which-key use-package))
 '(pdf-view-midnight-colors (cons "#F8F8F0" "#5a5475"))
 '(rustic-ansi-faces
   ["#5a5475" "#CC6666" "#C2FFDF" "#FFEA00" "#55b3cc" "#FFB8D1" "#96CBFE" "#F8F8F0"])
 '(vc-annotate-background "#5a5475")
 '(vc-annotate-color-map
   (list
    (cons 20 "#C2FFDF")
    (cons 40 "#d6f894")
    (cons 60 "#eaf14a")
    (cons 80 "#FFEA00")
    (cons 100 "#f6dc00")
    (cons 120 "#eece00")
    (cons 140 "#E6C000")
    (cons 160 "#eebd45")
    (cons 180 "#f6ba8b")
    (cons 200 "#FFB8D1")
    (cons 220 "#ee9cad")
    (cons 240 "#dd8189")
    (cons 260 "#CC6666")
    (cons 280 "#b26565")
    (cons 300 "#986565")
    (cons 320 "#7e6565")
    (cons 340 "#B8A2CE")
    (cons 360 "#B8A2CE")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip ((t (:inherit company-box-candidate))))
 '(company-tooltip-selection ((t (:inherit company-tooltip-selection :extend t :background "dark gray"))))
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
	     '("melpa" ."https://melpa.org/packages/")
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

(setq use-package-verbose t)
(setq package-native-compile t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(if (display-graphic-p)
    (when (file-readable-p "~/.emacs-configs/my-emacs/config.org")
      (org-babel-load-file (expand-file-name "~/.emacs-configs/my-emacs/config.org")))
(when (file-readable-p "~/.emacs-configs/my-emacs/config-term.org")
  (org-babel-load-file (expand-file-name "~/.emacs-configs/my-emacs/config-term.org")))
)

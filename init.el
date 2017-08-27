;; Archivo de configuracion:

;;;; Code:

(setq inhibit-startup-message t);; Saca la pantalla de inicio
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "<f5>") 'revert-buffer)

;; Agrega Melpa:
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Instala use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Instala try
(use-package try
  :ensure t)

;; Instala which-key
(use-package which-key
  :ensure t
  :config (which-key-mode))

;; Instala ido (ayuda en los buffers)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(windmove-default-keybindings)

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    )
  )

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode t))

(use-package iedit
  :ensure t)

(use-package ox-reveal
  :ensure ox-reveal)

(setq org-reveal-root "http://cdn.jsdelivr.net/reveal.js/3.0.0/")
(setq org-reveal-mathjax t)

(use-package htmlize
  :ensure t)

(use-package emmet-mode
  :ensure t)

(use-package pug-mode
  :ensure t)

(setq-default tab-width 4)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(package-selected-packages
   (quote
    (iedit flycheck auto-complete which-key try use-package)))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

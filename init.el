(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(which-key try linum-relative linenum evil)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq inhibit-startup-message t)

(require 'package)

(setq package-enable-at-startup nil)

(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(use-package try
  :ensure t)

(use-package evil
  :ensure t)

(evil-mode 1)

(use-package org
  :ensure t)

(use-package linum-relative
  :ensure t
  :after (evil)
  :config
  (add-hook 'prog-mode-hook 'linum-on)
  (set-face-foreground 'linum "#999")
  (setq linum-format "%d "))

(linum-relative-mode 1)

(use-package which-key
  :ensure t
  :config (which-key-mode))


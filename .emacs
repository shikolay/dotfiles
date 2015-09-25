(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'zenburn-theme)
(load-theme 'zenburn t)
(set-default-font "Source Code Pro 16")

(require 'nlinum)
(global-nlinum-mode t)

(require 'neotree)
(global-set-key (kbd "C-S-n") 'neotree-toggle)
(setq neo-theme 'ascii)

(require 'tabbar)
(require 'tabbar-ruler)
(tabbar-mode 1)

(require 'helm)
(require 'helm-config)
(helm-mode 1)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-mini)

(setq
 helm-split-window-in-side-p t
 helm-mode-fuzzy-match t
)
(setq projectile-switch-project-action 'neotree-projectile-action)

(require 'coffee-mode)

(global-set-key (kbd "C-S-o") 'helm-projectile-find-file)
(global-set-key (kbd "C-S-f") 'helm-projectile-ag)

(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)

(global-set-key (kbd "C-a") 'back-to-indentation)

(custom-set-variables
 '(coffee-tab-width 4)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(setq sgml-basic-offset 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(setq inhibit-startup-screen t)
(modify-coding-system-alist 'file "\\.py\\'" 'utf-8)
(setq line-number-mode t)
(setq column-number-mode t)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq-default c-indent-level 4)
(setq-default indent-tabs-mode nil)

(setq c-default-style "linux")

(setq w32-pass-lwindow-to-system nil)
(setq w32-lwindow-modifier 'super)
(setq w32-pass-rwindow-to-system nil)
(setq w32-rwindow-modifier 'super)

(setq w32-pass-apps-to-system nil)
(setq w32-apps-modifier 'hyper)

(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)
(setq mac-control-modifier 'control)
(setq ns-function-modifier 'hyper)

(require 'yasnippet)
(yas-global-mode 1)
(setq yas-prompt-functions '(yas-x-prompt yas-dropdown-prompt))

(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)

;set indent tabs
(set-variable 'indent-tabs-mode nil)

(require 'lsp-mode)
(add-hook 'python-mode-hook #'lsp)
(add-hook 'c-mode-hook #'lsp)
(add-hook 'c++-mode-hook #'lsp)

(pdf-tools-install)

;; adjust font size for large screen
(if (string-suffix-p ".ads.autodesk.com" (system-name) )
  (set-face-attribute 'default nil :height 200)
  (add-to-list 'initial-frame-alist '(height . 24))
  (add-to-list 'initial-frame-alist '(width . 120)))

(if (string= (system-name) "DESKTOP-HP0VOFT")
    (set-face-attribute 'default nil :height 140))

(if (string= (system-name) "DESKTOP-J6QA725")
    (set-face-attribute 'default nil :height 140)
    (add-to-list 'initial-frame-alist '(height . 64))
)


(defun save-my-window-configuration-1 ()
  "Save my window configuration 1."
  (interactive)
  (window-configuration-to-register ?A))
(defun save-my-window-configuration-2 ()
  "Save my window configuration 2."
  (interactive)
  (window-configuration-to-register ?B))
(defun load-my-window-configuration-1 ()
  "Load my window configuration 1."
  (interactive)
  (jump-to-register ?A))
(defun load-my-window-configuration-2 ()
  "Load my window configuration 2."
  (interactive)
  (jump-to-register ?B))
(global-set-key (kbd "<f5>") 'save-my-window-configuration-1)
(global-set-key (kbd "<f6>") 'load-my-window-configuration-1)
(global-set-key (kbd "<f7>") 'save-my-window-configuration-2)
(global-set-key (kbd "<f8>") 'load-my-window-configuration-2)


(projectile-mode +1)
(setq projectile-indexing-method 'alien)
(setq projectile-git-submodule-command nil)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(editorconfig-mode 1)


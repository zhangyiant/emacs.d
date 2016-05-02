(setq inhibit-startup-screen t)
(setq current-language-environment "UTF-8")
(prefer-coding-system 'utf-8)
;(global-whitespace-mode 1)
(setq line-number-mode t)
(setq column-number-mode t)
;(global-linum-mode t)

;cmake mode
(setq auto-mode-alist
      (append
       '(("CMakeLists\\.txt\\'" . cmake-mode))
       '(("\\.cmake\\'" . cmake-mode))
       auto-mode-alist))
(autoload 'cmake-mode "~/.emacs.d/modes/cmake-mode.el" t)

;MELPA
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(add-to-list 'load-path
	     "~/.emacs.d/elpa/yasnippet-0.9.1")
(require 'yasnippet)
(yas-global-mode 1)

(add-hook 'after-init-hook 'global-company-mode)
(defun my/python-mode-hook ()
(add-to-list 'company-backends 'company-jedi))
(add-hook 'python-mode-hook 'my/python-mode-hook)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deeper-blue))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

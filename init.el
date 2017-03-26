;;; package --- Summary:
;;; Commentary:
;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq inhibit-startup-screen t)
(setq current-language-environment "UTF-8")
(prefer-coding-system 'utf-8)
(setq line-number-mode t)
(setq column-number-mode t)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq-default c-indent-level 4)
(setq-default indent-tabs-mode nil)

;(global-linum-mode t)
;(setq-default indent-tabs-mode nil)

;MELPA
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

(add-to-list 'load-path
	     "~/.emacs.d/packages/yasnippet-0.9.1/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/company-0.8.12/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/company-jedi-0.4/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/groovy-mode-1.0.1/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/jedi-core-0.2.7/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/python-environment-0.0.2/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/async-1.8/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/let-alist-1.0.4/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/concurrent-0.4.0/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/ggtags-0.8.11/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/popup-0.5.3/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/ctable-0.1.2/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/seq-2.15/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/helm-1.9.5/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/deferred-0.4.0/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/helm-core-1.9.5/")
(add-to-list 'load-path
	     "~/.emacs.d/packages/epc-0.1.0/")
(add-to-list 'load-path
             "~/.emacs.d/packages/js2-mode-20160623/")
(add-to-list 'load-path
             "~/.emacs.d/packages/web-mode-14/")
(add-to-list 'load-path
             "~/.emacs.d/packages/elpy-1.14.1/")
(add-to-list 'load-path
             "~/.emacs.d/packages/find-file-in-project-5.2.7/")
(add-to-list 'load-path
             "~/.emacs.d/packages/highlight-indentation-0.7.0/")
(add-to-list 'load-path
             "~/.emacs.d/packages/")
(add-to-list 'load-path
             "~/.emacs.d/packages/s-1.11.0/")
(add-to-list 'load-path
             "~/.emacs.d/packages/ivy-0.8.0/")
(add-to-list 'load-path
             "~/.emacs.d/packages/pyvenv-1.10/")
(add-to-list 'load-path
             "~/.emacs.d/packages/find-file-in-project-5.2.7/")
(add-to-list 'load-path
             "~/.emacs.d/packages/epl-20150517.433/")
(add-to-list 'load-path
             "~/.emacs.d/packages/flycheck-20170309.145/")
(add-to-list 'load-path
             "~/.emacs.d/packages/memoize-20130421.1234/")
(add-to-list 'load-path
             "~/.emacs.d/packages/pkg-info-20150517.443/")
(add-to-list 'load-path
             "~/.emacs.d/packages/dash-20170207.2056/")
(add-to-list 'load-path
             "~/.emacs.d/packages/jdee-20170314.1202/")
(add-to-list 'load-path
	     "~/.emacs.d/modes/")

;set indent tabs
(set-variable 'indent-tabs-mode nil)

;cmake mode
(setq auto-mode-alist
      (append
       '(("CMakeLists\\.txt\\'" . cmake-mode))
       '(("\\.cmake\\'" . cmake-mode))
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

;;(autoload 'cmake-mode "~/.emacs.d/modes/cmake-mode.el" t)

(require 'cmake-mode)
(require 'web-mode)
;;(require 'groovy-mode)

(require 'js2-mode)
(setq js2-mode-hook
      '(lambda () (progn
		    (set-variable 'indent-tabs-mode nil))))

(require 'yasnippet)
(yas-global-mode 1)

(require 'company)
(require 'flycheck)
(global-flycheck-mode)

(require 'elpy)
(elpy-enable)

(add-hook 'after-init-hook 'global-company-mode)
(defun my/python-mode-hook ()
  (whitespace-mode))
(add-hook 'python-mode-hook 'my/python-mode-hook)

(load "jdee")

;;(add-to-list 'auto-mode-alist '("pipeline_build_test.groovy.tpl\\'" . groovy-mode))
;;(add-to-list 'auto-mode-alist '("build.groovy.tpl\\'" . groovy-mode))
;;(add-to-list 'auto-mode-alist '("\\.groovy\\'" . groovy-mode))
;;(add-to-list 'auto-mode-alist '("build.gradle\\'" . groovy-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(package-selected-packages (quote (jdee highlight-indentation))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

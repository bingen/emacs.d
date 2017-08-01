;(use-package flycheck
;  :ensure t
;  :init (global-flycheck-mode))

(require-package 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

(provide 'init-flycheck)

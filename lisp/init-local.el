(global-set-key (kbd "S-s-<up>") 'windmove-up)
(global-set-key (kbd "S-s-<down>") 'windmove-down)
(global-set-key (kbd "S-s-<right>") 'windmove-right)
(global-set-key (kbd "S-s-<left>") 'windmove-left)

;; linum-mode by default
(require ‘linum)
(global-linum-mode 1)

(provide 'init-local)


;;; Dvorak --- Dvorak tweaks

;;; Commentary:
;; https://www.emacswiki.org/emacs/DvorakKeyboard#toc1

;;; Code:
;; C-x -> C-z
(global-set-key (kbd "C-z") ctl-x-map)

;; C-p -> C-h
(global-set-key (kbd "C-x C-h") help-map)
(global-set-key (kbd "C-h") 'previous-line)

(provide 'init-dvorak)
;;; init-dvorak.el ends here

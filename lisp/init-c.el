;https://www.emacswiki.org/emacs/IndentingC
;;(require-package 'guess-offset)
;; (setq c-default-style "linux"
;;       c-basic-offset 4
;;       tab-width 4
;;       indent-tabs-mode t)

;; http://www.linuxfromscratch.org/alfs/view/hacker/part2/hacker/coding-style.html
(defun linux-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."
  (interactive)
  (c-mode)
  (c-set-style "K&R")
  (setq c-basic-offset 8
        indent-tabs-mode t))

(setq auto-mode-alist
      (cons '("\\.[ch]$" . linux-c-mode)
      auto-mode-alist))
;;http://www.delorie.com/gnu/docs/emacs/cc-mode_6.html
;;http://www.gnu.org/software/emacs/manual/html_mono/ccmode.html#Minor-Modes
; C-c C-a: (add-hook 'c-mode-common-hook '(lambda () (c-toggle-auto-state 1)))

(provide 'init-c)
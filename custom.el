(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(org-startup-truncated nil)
 '(package-selected-packages
   (quote
    (org-plus-contrib org-contrib-plus flycheck solidity-mode sql-indent pip-requirements css-eldoc less-css-mode scss-mode sass-mode mmm-mode rainbow-mode tagedit yasnippet yagist ws-butler whole-line-or-region whitespace-cleanup-mode volatile-highlights unfill undo-tree switch-window smex smarty-mode smartparens rainbow-delimiters php-mode pandoc-mode page-break-lines ox-pandoc ox-gfm org-pomodoro multiple-cursors move-dup markdown-mode magit-gh-pulls json-mode js-comint iedit idomenu ido-completing-read+ highlight-symbol highlight-escape-sequences helm-swoop helm-gtags guide-key gitignore-mode github-clone github-browse-file gitconfig-mode git-timemachine git-messenger fullframe fill-column-indicator expand-region duplicate-thing dtrt-indent diminish csv-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode clean-aindent-mode bug-reference-github browse-kill-ring auto-complete anzu ace-jump-mode ac-js2))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;(eval-after-load "js2-mode"
;;  '(progn
;;     (setq-default js2-basic-offset 4) 
;;))

;;http://stackoverflow.com/a/803828
(desktop-save-mode 1)

; http://emacswiki.org/emacs/AutoIndentation#toc2
;;; Indentation for python

;; Ignoring electric indentation
(defun electric-indent-ignore-python (char)
  "Ignore electric indentation for python-mode"
  (if (equal major-mode 'python-mode)
      'no-indent
    nil))
(add-hook 'electric-indent-functions 'electric-indent-ignore-python)

;; Enter key executes newline-and-indent
(defun set-newline-and-indent ()
  "Map the return key with `newline-and-indent'"
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'python-mode-hook 'set-newline-and-indent)

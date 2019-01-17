;(use-package flycheck
;  :ensure t
;  :init (global-flycheck-mode))

(require-package 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))

;; textlint
;; https://www.macs.hw.ac.uk/~rs46/posts/2018-12-29-textlint-flycheck.html
(flycheck-define-checker textlint
  "A linter for textlint."
  :command ("npx" "textlint"
            "--config" "~/.emacs.d/.textlintrc"
            "--format" "unix"
            "--rule" "write-good"
            "--rule" "no-start-duplicated-conjunction"
            "--rule" "max-comma"
            "--rule" "terminology"
            "--rule" "period-in-list-item"
            "--rule" "abbr-within-parentheses"
            "--rule" "alex"
            "--rule" "common-misspellings"
            "--rule" "en-max-word-count"
            "--rule" "diacritics"
            "--rule" "stop-words"
            "--plugin"
            (eval
             (if (derived-mode-p 'tex-mode)
                 "latex"
               "@textlint/text"))
            source-inplace)
  :error-patterns
  ((warning line-start (file-name) ":" line ":" column ": "
            (message (one-or-more not-newline)
                     (zero-or-more "\n" (any " ") (one-or-more not-newline)))
            line-end))
  :modes (text-mode latex-mode org-mode markdown-mode)
  )
(add-to-list 'flycheck-checkers 'textlint)

(provide 'init-flycheck)

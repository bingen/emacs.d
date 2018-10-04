;;; package --- ox-pandoc
;;; Commentary: org conversion with Pandoc. Pandoc must be installed first
;;; Code:

(require-package 'ox-pandoc)

;; default options for all output formats
(setq org-pandoc-options '((standalone . t)))
;; cancel above settings only for 'docx' format
(setq org-pandoc-options-for-docx '((standalone . nil)))
;; special settings for beamer-pdf and latex-pdf exporters
(setq org-pandoc-options-for-beamer-pdf '((pdf-engine . "xelatex")))
(setq org-pandoc-options-for-latex-pdf '((pdf-engine . "pdflatex")))
;; special extensions for markdown_github output
(setq org-pandoc-format-extensions '(markdown_github+pipe_tables+raw_html))

(provide 'init-ox-pandoc)

;;; init-ox-pandoc.el ends here

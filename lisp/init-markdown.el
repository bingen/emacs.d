(require-package 'markdown-mode)
(require-package 'markdown-toc)

(setq auto-mode-alist
      (cons '("\\.\\(md\\|markdown\\)\\'" . markdown-mode) auto-mode-alist))

(provide 'init-markdown)

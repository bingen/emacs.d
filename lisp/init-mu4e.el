;;; package --- mu4e
;;; Commentary:
;;; Code:

(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
(require 'mu4e)


(autoload 'mu4e "mu4e" "Mail client based on mu (maildir-utils)." t)

(setq
 mu4e-maildir (expand-file-name "~/.Maildir")
 mu4e-drafts-folder "/Drafts"
 mu4e-sent-folder   "/Sent"
 mu4e-trash-folder  "/Trash")

(setq mu4e-get-mail-command "offlineimap")

(provide 'init-mu4e)

;;; init-mu4e.el ends here

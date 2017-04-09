;;'(("gnu" . "http://elpa.gnu.org/packages/")
;;("marmalade" . "http://marmalade-repo.org/packages/")
;;("melpa" . "http://melpa.milkbox.net/packages/"))

;; sort apropos by rlevance
(setq apropos-sort-by-scores t)

;; bind M-i to imenu
(global-set-key (kbd "M-i") 'imenu)

;; Purcell
;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.

(let ((minver 23))
  (unless (>= emacs-major-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))


(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-benchmarking) ;; Measure startup time

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer

;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
(require 'init-elpa)      ;; Machinery for installing required packages
;;(require 'init-exec-path) ;; Set up $PATH

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-preload-local.el"
;;----------------------------------------------------------------------------
(require 'init-preload-local nil t)


;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------

(require-package 'diminish)

(require 'init-themes)
(require 'init-dired)
(require 'init-isearch)

(require 'init-recentf)
(require 'init-ido)
(require 'init-auto-complete)
(require 'init-windows)

(require 'init-editing-utils)

(require 'init-git)
(require 'init-github)

;; C/C++
(require 'init-c)
(require 'setup-helm)
(require 'setup-helm-gtags)
;; (require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-editing)

(require 'capnp-mode)

(require 'init-crontab)
(require 'init-markdown)
(require 'init-csv)
(require 'init-javascript)
(require 'init-php)
(require 'init-org)
(require 'init-nxml)
(require 'init-html)
(require 'init-css)
(require 'init-python-mode)
(require 'init-sql)
(require 'init-octave)

(when *spell-check-support-enabled*
  (require 'init-spelling))

(require 'init-flycheck)

;;(require 'init-marmalade)

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
(require 'server)
(unless (server-running-p)
  (server-start))

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-local" containing personal settings
;;----------------------------------------------------------------------------
(when (file-exists-p (expand-file-name "init-local.el" user-emacs-directory))
  (error "Please move init-local.el to ~/.emacs.d/lisp"))
(require 'init-local nil t)

(add-hook 'after-init-hook
          (lambda ()
            (message "init completed in %.2fms"
                     (sanityinc/time-subtract-millis after-init-time before-init-time))))


(provide 'init)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:

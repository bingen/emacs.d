;;; package --- Solidity mode
;;; Commentary:
;;; Code:

(require-package 'solidity-mode)

;; https://emacs.stackexchange.com/a/17565/12560
(defun solidity-custom-settings ()
  (setq tab-width 4)
  (setq c-basic-offset 4))

(add-hook 'solidity-mode-hook 'solidity-custom-settings)

(provide 'init-solidity)

;;; init-solidity.el ends here

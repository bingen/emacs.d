;;; package --- Solidity mode
;;; Commentary:
;;; Code:

(require-package 'solidity-mode)
(require-package 'solidity-flycheck)
(require-package 'company-solidity)

;; https://emacs.stackexchange.com/a/17565/12560
(defun solidity-custom-settings ()
  (setq indent-tabs-mode nil)
  (setq tab-width 4)
  (setq c-basic-offset 4))

(add-hook 'solidity-mode-hook 'solidity-custom-settings)

;; https://github.com/ethereum/emacs-solidity
;(define-key map (kbd "C-c C-g") 'solidity-estimate-gas-at-point)

(setq solidity-solc-path "/usr/local/bin/solc-static-linux-0.4.24")
(setq solidity-solium-path "/home/bingen/.nvm/versions/node/v9.4.0/bin/solium")

(setq solidity-flycheck-solc-checker-active t)
(setq solidity-flycheck-solium-checker-active t)

(setq flycheck-solidity-solc-addstd-contracts t)
(setq flycheck-solidity-solium-soliumrcfile "/home/bingen/workspace/aragonOS/.soliumrc.json")

(add-hook 'solidity-mode-hook
          (lambda ()
            (set (make-local-variable 'company-backends)
                 (append '((company-solidity company-capf company-dabbrev-code))
                         company-backends))))

(provide 'init-solidity)

;;; init-solidity.el ends here

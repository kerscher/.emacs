;; Accountancy

(require 'ledger-mode)
(setq ledger-binary-path "hledger")
(setq ledger-mode-should-check-version nil)
(add-to-list 'auto-mode-alist '("\\.\\(h?ledger\\|journal\\|j\\)$" . ledger-mode))

(defvar ledger-report-balance
  (list "bal" (concat ledger-binary-path " -f %(ledger-file) bal")))

(defvar ledger-report-reg
  (list "reg" (concat ledger-binary-path " -f %(ledger-file) reg")))

(defvar ledger-report-payee
  (list "payee" (concat ledger-binary-path " -f %(ledger-file) reg @%(payee)")))

(defvar ledger-report-account
  (list "account" (concat ledger-binary-path " -f %(ledger-file) reg %(account)")))

(setq ledger-reports
      (list ledger-report-balance
            ledger-report-reg
            ledger-report-payee
            ledger-report-account))

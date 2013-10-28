(c-set-offset 'case-label 4)

;; fixes braces?
(add-hook 'c-mode-common-hook
          (lambda () (c-set-offset 'substatement-open 0)))

;; no tabs
(setq-default indent-tabs-mode nil)

;; 4 space tabs
(setq-default tab-width 4)

;; ruby needs only 2 spaces..
(setq ruby-indent-level 2)

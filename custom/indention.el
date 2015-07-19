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

(setq-default c-basic-offset 4)

; four spaces for javascript
(setq js-indent-level 4)
(remove-hook 'js2-mode-hook (lambda() (setq js2-basic-offset 4)))
(setq nxml-child-indent 2)
(setq js-indent-level 4)

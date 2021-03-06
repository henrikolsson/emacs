;; we have C-a and C-e for end/start-of-line already
(global-set-key '[home] 'beginning-of-buffer)
(global-set-key '[end]  'end-of-buffer)

(global-set-key "\C-c\C-c" 'comment-region)
(global-set-key "\C-c\C-u" 'uncomment-region)

(global-set-key (kbd "<RET>") 'newline-and-indent)
(global-set-key (kbd "<f1>") 'eval-current-buffer)
(global-set-key (kbd "<f3>") 'goto-line)
(global-set-key (kbd "<f4>") 'undo)
(global-set-key (kbd "<f5>") 'query-replace)
(global-set-key (kbd "<f6>") 'indent-whole-buffer)
(global-set-key (kbd "<f7>") 'compile-jump)
(global-set-key (kbd "<f8>") 'next-error)
(global-set-key (kbd "<f9>") 'previous-error)
(global-set-key "\M-p" 'dabbrev-expand)
(global-set-key (kbd "C-M-j") 'javadoc)
(global-set-key [M-up] 'backward-list)
(global-set-key [M-down] 'forward-list)
(global-set-key "\M-s" 'match-paren)

(global-set-key "\C-c\C-r" 'org-remember)

(global-set-key (kbd "C-c k") 'browse-kill-ring)


(global-set-key "\C-cv" 'magit-status)

;(setq ergoemacs-theme "lvl2")
;(ergoemacs-mode 1)

; i like my control..
(global-set-key (kbd "C-SPC") 'set-mark-command)

;; kicking the habit
;; (global-unset-key (kbd "<left>"))
;; (global-unset-key (kbd "<right>"))
;; (global-unset-key (kbd "<up>"))
;; (global-unset-key (kbd "<down>"))
;; (global-unset-key (kbd "<C-left>"))
;; (global-unset-key (kbd "<C-right>"))
;; (global-unset-key (kbd "<C-up>"))
;; (global-unset-key (kbd "<C-down>"))
;; (global-unset-key (kbd "<M-left>"))
;; (global-unset-key (kbd "<M-right>"))
;; (global-unset-key (kbd "<M-up>"))
;; (global-unset-key (kbd "M-h"))


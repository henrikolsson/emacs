
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tag\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; ;(require 'eclim)
;; (global-eclim-mode)
;; (custom-set-variables
;;  '(eclim-eclipse-dirs '("~/opt/eclipse")))
;; (setq eclim-executable "/home/henrik/opt/eclipse/eclim")
;; (setq help-at-pt-display-when-idle t)
;; (setq help-at-pt-timer-delay 0.1)
;; (help-at-pt-set-timer)


;(require 'yasnippet)
;(yas-global-mode 1)

;(define-key yas-minor-mode-map [(tab)] nil)
;(define-key yas-minor-mode-map (kbd "TAB") nil)
;(define-key yas-minor-mode-map "\C-o" 'yas-expand)

(setq projectile-indexing-method 'git)
(setq projectile-enable-caching t)
(projectile-global-mode t)
(let ((ack_path "~/bin/ack"))
  (if (file-exists-p ack_path)
      (progn
        (setq ack-and-a-half-executable ack_path)
        (setq ack-and-a-half-arguments '("--ignore-dir=target")))))
(projectile-global-mode)

(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-use-faces nil)

(require 'flyspell)
(setq flyspell-issue-message-flag nil)
(add-hook 'web-mode-hook
          (lambda () (flyspell-prog-mode)))
(add-hook 'java-mode-hook
          (lambda () (flyspell-prog-mode)))
(define-key flyspell-mode-map (kbd "M-TAB") nil)

(custom-set-faces
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

(require 'undo-tree)
(global-undo-tree-mode)

(add-to-list 'load-path "~/src/tern/emacs")
(autoload 'tern-mode "tern.el" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(add-to-list 'company-backends 'company-tern)

;;(autoload 'js2-mode "js2-mode" nil t)
;;(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))
;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


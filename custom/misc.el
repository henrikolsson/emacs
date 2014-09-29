;; enable some modes
(show-paren-mode t)
(ido-mode t)
;; syntax highlighting
(global-font-lock-mode t)

;; update emacs title whenever we do something
(add-hook `post-command-hook
          (lambda ()
            (title-set-title)))

;; ignore .class-files 
(setq completion-ignored-extensions
      (append '(".class")
              completion-ignored-extensions))

;; no splash please
(setq inhibit-splash-screen t)

;; confirm quit emacs..
(setq confirm-kill-emacs 'y-or-n-p)

;; we like the old scrolling behaviour..
(setq mouse-wheel-progressive-speed nil)

;; make the y or n suffice for a yes or no question
(fset 'yes-or-no-p 'y-or-n-p)

;; we want the scroll always, to the right
(setq scroll-bar-mode-explicit t)
(if (fboundp 'set-scroll-bar-mode)
    (set-scroll-bar-mode `right))

;; maximum decorations
(setq font-lock-maximum-decoration t)

;; show line and column numbers
(line-number-mode t)
(column-number-mode t)

;; no menubar
(if (fboundp 'menu-bar-mode)
    (menu-bar-mode -1))

;; no toolbar
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))

;; show time
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)

;; uniquify buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-after-kill-buffer-p t)

;; default to print a4 papers
(setq ps-paper-type 'a4)

(require 'org)
;; log time when completing org tasks
(setq org-log-done 'time)
;; enable remember for org
(org-remember-insinuate)
;; enables clock persistance
(org-clock-persistence-insinuate)
;; load org files from dropbox dir
(if (file-exists-p (expand-file-name "~/Dropbox/org"))
    (progn
      (setq org-directory (expand-file-name "~/Dropbox/org/"))
      (setq org-agenda-files (directory-files org-directory t ".*\.org$"))
      (setq org-default-notes-file (concat org-directory "/notes.org"))))
;; set up refile options
(setq org-refile-targets '((org-agenda-files . (:maxlevel . 2))))
(setq org-refile-use-outline-path t)
;; go to links
(setq org-return-follows-link t)
;; configure clock
(setq org-clock-out-remove-zero-time-clocks t)
(setq org-clock-persist 'history)

;; encoding stuff
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; set up terminal
(require 'term)
(define-key term-raw-map "\C-y" 'yank)
(define-key term-raw-map (kbd "\M-x") 'execute-extended-command)
(define-key term-raw-map "\e" 'term-send-raw)
(define-key term-raw-map "\C-y"
  (lambda ()
    (interactive)
    (term-send-raw-string (current-kill 0))))
(setq term-default-bg-color (face-background 'default))
(setq term-default-fg-color (face-foreground 'default))
(define-key term-raw-escape-map "/"
  (lambda ()
    (interactive)
    (let ((beg (point)))
      (dabbrev-expand nil)
      (kill-region beg (point)))
    (term-send-raw-string (substring-no-properties (current-kill 0)))))
;; nicer terminal colors
(setq ansi-term-color-vector [unspecified "#000000" "#963F3C" "#5FFB65" "#FFFD65" "#0082FF" "#FF2180" "#57DCDB" "#FFFFFF"])

;; window navigation
(winner-mode 1)
(windmove-default-keybindings)

;; scroll one line at a time
(setq scroll-step 1)

;; ui
(load-theme 'zenburn t)
(set-background-color "black")
(set-face-background 'default "black")
(set-face-background 'mode-line "black")
(set-face-foreground 'mode-line "gray")

;; consider CamelCased words as having sub-words
(add-hook 'clojure-mode-hook 'subword-mode)
(add-hook 'java-mode-hook 'subword-mode)

(require 'rust-mode)

(autoload 'glsl-mode "glsl-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))

(blink-cursor-mode -1)

(require 'project-explorer)
(setq pe/omit-regex "^\\.\\|^#\\|~$\\|^target$")

(put 'downcase-region 'disabled nil)

;; don't confuse file watchers
(setq create-lockfiles nil)

(require 'cedet)
(require 'semantic)
(load "semantic/loaddefs.el")
(semantic-mode 1)
(require 'malabar-mode)
(add-to-list 'auto-mode-alist '("\\.java\\'" . malabar-mode))
(require 'gud)

;(defadvice gud-find-class (around my-gud-find-class activate)
;  (let ((gud-jdb-sourcepath
;         (list (replace-regexp-in-string "/java/.*" "/java" f))))
;    ad-do-it))

;(debug-on-entry 'gud-jdb-find-source)
 
(setq ac-delay 1.0)

(unless (boundp 'compilation-error-regexp-alist-alist)
  (require 'compile))

(when (not (assoc 'maven3 compilation-error-regexp-alist-alist))
  (add-to-list 'compilation-error-regexp-alist-alist
               '(maven3 "^\\[ERROR\\] +\\(.+?\\):\\[\\([0-9]+\\),\\([0-9]+\\)\\].*"
                        1 2 2)
               (add-to-list 'compilation-error-regexp-alist 'maven3)))

(global-set-key [C-tab] 'completion-at-point)
(setq ido-auto-merge-work-directories-length -1)


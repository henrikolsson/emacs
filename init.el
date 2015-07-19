(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/custom")

(load "pkg.el")
(load "powerline.el")
(load "backups.el")
(load "utils.el")
(load "indention.el")
(load "keybindings.el")
(load "completion.el")
(load "misc.el")
(load "modes.el")

(server-start)


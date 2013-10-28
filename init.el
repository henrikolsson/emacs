(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'pallet)

(add-to-list 'load-path "~/.emacs.d/site-lisp")
(load "powerline.el")

(add-to-list 'load-path "~/.emacs.d/custom")

(load "backups.el")
(load "utils.el")
(load "indention.el")
(load "keybindings.el")
(load "completion.el")
(load "misc.el")
(load "modes.el")

(server-start)

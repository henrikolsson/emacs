(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'pallet)

(add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "https://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.milkbox.net/packages/")
        ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")))

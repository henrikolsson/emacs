(if (not (file-exists-p "~/.emacs.d/backups"))
    (make-directory "~/.emacs.d/backups"))

(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.emacs.d/backups"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)


(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config)
(ac-config-default)

(setq ac-clang-flags
      (mapcar (lambda (item)(concat "-I" item))
              (split-string
               "
 /usr/lib/gcc/x86_64-redhat-linux/4.8.2/include
 /usr/include/c++/4.8.2/x86_64-redhat-linux/
 /usr/include/c++/4.8.2/
 /usr/include
 /usr/include/linux
 /usr/local/include
 .
"
               )))

(add-hook 'c++-mode-hook 
          (lambda () (define-key c++-mode-map (kbd "C-<tab>") 'ac-complete-clang)))
(require 'auto-complete-clang)

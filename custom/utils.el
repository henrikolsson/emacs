(defun dos2unix ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

                                        ;vice versa
(defun unix2dos ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\n" nil t) (replace-match "\r\n")))

(defun indent-whole-buffer()
  "Indent whole buffer (using indent-region)."
  (interactive)
  (untabify (point-min) (point-max))
  (indent-region (point-min) (point-max) nil))

(defun compile-jump()
  "Runs compile and jumps to the end of the compile window"
  (interactive)
  (call-interactively 'compile)
  (pop-to-buffer "*compilation*")
  (goto-char (point-max)))

(defun named-shell(name)
  (interactive "sName? ")
  (let ((name (format "shell: %s" name)))
    (ansi-term "/bin/bash" name)))

(defun title-set-title ()
  "Set title to current buffer's name"
  (let ((name (format "%s@%s" (buffer-name) (system-name))))
    (modify-frame-parameters (selected-frame)
                             (list (cons `name name)))))

(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert argument.
This works for the [] {} and () pairs."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

(defun file-in-path-p (file)
  (some (lambda (path)
          (file-exists-p (expand-file-name file path)))
        (parse-colon-path (getenv "PATH"))))


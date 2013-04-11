(defun trim-string (string)
  "Remove white spaces in beginning and ending of STRING.
White space here is any of: space, tab, emacs newline (line feed, ASCII 10)."
  (replace-regexp-in-string "\\`[ \t\n]*" "" (replace-regexp-in-string "[ \t\n]*\\'" "" string)))

;; Open github pages from files
(defun browse-on-github ()
  "Show the current file on github"
  (interactive)
  (let* ((script-path (expand-file-name "~/.emacs.d/lib/python/gleitzpy/gitopener.py"))
         (full-path (mapconcat 'identity `("python" ,script-path ,(buffer-file-name)) " "))
         (result-url (trim-string (shell-command-to-string full-path))))
    (message result-url)
    (browse-url result-url)
    ))

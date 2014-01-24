(require 'flymake-easy)

(defconst flymake-sml-err-line-patterns
  '(("^\\(.*\\.sml\\):\\([0-9]+\\)\\.[0-9]+\\-[0-9]+\\.[0-9]+\\s-+Error:\\s-\\(.*\\)$" 1 2 nil 3)))

(defvar flymake-sml-executable "sml"
  "The sml executable to use for syntax checking.")

(defun flymake-sml-command (filename)
  "Construct a command that flymake can use to check sml source."
  (list flymake-sml-executable filename))


;; ###autoload
(defun flymake-sml-load ()
  "flymake mode check current buffer"
  (interactive)
  (flymake-easy-load 'flymake-sml-command
                     flymake-sml-err-line-patterns
                     'tempdir
                     "sml"))

(provide 'flymake-sml)

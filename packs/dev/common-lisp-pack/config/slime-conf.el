(live-add-pack-lib "slime")

(require 'slime-autoloads)

(setq inferior-lisp-program "/usr/bin/sbcl")

;; (setq slime-lisp-implementations
;;       '((sbcl ("sbcl" "--core" "sbcl.core-for-slime"))))

(setq slime-contribs '(slime-fancy))

(add-to-list 'auto-mode-alist '("\\.lisp\\'" . slime-mode))
(add-to-list 'auto-mode-alist '("\\.lisp\\'" . lisp-mode))

(defun cliki:start-slime ()
  (unless (slime-connected-p)
    (save-excursion (slime))))

(add-hook 'slime-mode-hook 'cliki:start-slime)

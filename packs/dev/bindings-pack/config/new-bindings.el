;; This are my even more opinionated keybindings

;; ! Controversy alert !
(global-set-key (kbd "C-SPC") 'icicle-execute-extended-command)
(global-set-key (kbd "C-M-SPC") 'icicle-command-abbrev)
(global-set-key (kbd "M-x") 'set-mark-command)

(global-set-key (kbd "C-q") 'bury-buffer)


;; movement --------------------

;; ace
(global-set-key (kbd "M-z") 'ace-jump-word-mode)
(global-set-key (kbd "M-Z") 'ace-jump-char-mode)
(global-set-key (kbd "C-M-z") 'ace-jump-line-mode)

;; text edit
(global-set-key (kbd "M-D") 'backward-kill-word)

;; icicles
(global-set-key (kbd "C-x l") 'icicle-recent-file)
(global-set-key (kbd "C-x b") 'icicle-buffer)

;; TODO bookmark


;; TODO org ---------------------


;; python
(define-key python-mode-map (kbd "<f5>") 'py-execute-buffer-ipython)
(define-key python-mode-map (kbd "<f9>") 'py-execute-region-ipython)

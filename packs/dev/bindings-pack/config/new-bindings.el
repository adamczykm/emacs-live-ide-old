;; This are my even more opinionated keybindings

;; ! Controversy alert !
(global-set-key (kbd "C-SPC") 'icicle-execute-extended-command)
(global-set-key (kbd "C-M-SPC") 'icicle-command-abbrev)
(global-set-key (kbd "M-x") 'set-mark-command)

(global-set-key (kbd "C-q") 'bury-buffer)


(define-key flycheck-mode-map (kbd "C-c ! h") 'helm-flycheck)
;; movement --------------------
(global-set-key (kbd "<C-tab>") 'tab-to-tab-stop)
(define-key isearch-mode-map (kbd "M-s s") 'helm-swoop-from-isearch)






;; ace
(global-set-key (kbd "M-z") 'ace-jump-word-mode)
(global-set-key (kbd "M-Z") 'ace-jump-char-mode)
(global-set-key (kbd "C-M-z") 'ace-jump-line-mode)

;; text edit
(global-set-key (kbd "M-D") 'backward-kill-word)

;; icicles
;; (global-set-key (kbd "C-x l") 'icicle-recent-file)
;; (global-set-key (kbd "C-x b") 'icicle-buffer)

;; helm
(global-set-key (kbd "C-x C-b") 'helm-mini)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-SPC") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; (define-key helm-map (kbd "M-s s") 'helm-swoop)
;; (define-key helm-swoop-map (kbd "M-s s") 'helm-multi-swoop-all-from-helm-swoop)
(define-key helm-swoop-edit-map (kbd "C-c C-c") 'helm-swoop--edit-complete)
(define-key helm-swoop-edit-map (kbd "C-c C-k") 'helm-swoop--edit-cancel)
(define-key helm-multi-swoop-edit-map (kbd "C-c C-c") 'helm-multi-swoop--edit-complete)
(define-key helm-multi-swoop-edit-map (kbd "C-c C-k") 'helm-swoop--edit-cancel)



;; TODO bookmark


;; TODO org ---------------------


;; python
(define-key python-mode-map (kbd "<f5>") 'py-execute-buffer-ipython)
(define-key python-mode-map (kbd "<f9>") 'py-execute-region-ipython)

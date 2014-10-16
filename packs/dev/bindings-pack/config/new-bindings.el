;; This are my even more opinionated keybindings

;; ! Controversy alert !
(global-set-key (kbd "M-x") 'set-mark-command)
(global-set-key (kbd "C-q") 'bury-buffer)


;; text edit
(global-set-key (kbd "M-D") 'backward-kill-word)

;; icicles
;; (global-set-key (kbd "C-SPC") 'icicle-execute-extended-command)
;; (global-set-key (kbd "C-M-SPC") 'icicle-command-abbrev)
;; (global-set-key (kbd "C-x l") 'icicle-recent-file)
;; (global-set-key (kbd "C-x b") 'icicle-buffer)

;; helm
(global-set-key (kbd "C-x C-b") 'helm-mini)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-SPC") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; (define-key helm-map (kbd "M-s s") 'helm-swoop)
;; (define-key helm-swoop-map (kbd "M-s s") 'helm-multi-swoop-all-from-helm-swoop)



;; My keybindings !!!!
(require 'key-chord)
(key-chord-mode 1)

;; controversy
(global-set-key (kbd "C-SPC") 'smex)
(global-set-key (kbd "M-x") 'cua-set-mark)

;; text movement ;;;;;;;;;;;;;;;
(global-set-key (kbd "M-Z") 'ace-jump-line-mode)
(global-set-key (kbd "C-M-z") 'ace-jump-char-mode)
(global-set-key (kbd "M-z") 'ace-jump-mode)
(key-chord-define-global "zx" 'ace-jump-mode-pop-mark)

(global-set-key (kbd "M-@") 'er/expand-region)

;; paredit ;;;;;;;;;;;;;;;;;;;;

;(define-key paredit-mode-map (kbd "C-U") 'paredit-splice-sexp-killing-backward)


;; text marking ;;;;;;;;;;;;;;;;;;;
                                        ; mark multiple todo

;; multiple cursor compatible search
(global-set-key (kbd "C-s") 'phi-search)
(global-set-key (kbd "C-r") 'phi-search-backward)

(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; python-mode

(define-key python-mode-map (kbd "<f9>") 'py-execute-region-ipython-no-switch)
(define-key python-mode-map (kbd "C-<f9>") 'py-execute-region-ipython-dedicated)
(define-key python-mode-map (kbd "<f5>") 'py-execute-buffer-ipython-no-switch)
(define-key python-mode-map (kbd "C-<f5>") 'py-execute-buffer-ipython-dedicated)

;; magit

(define-key global-map (kbd "C-M-g") 'magit-status)

;; org
(global-set-key (kbd "C-c o s") 'org-store-link)
(global-set-key (kbd "C-c o c") 'org-capture)
(global-set-key (kbd "C-c o a") 'org-agenda)
(global-set-key (kbd "C-c o b") 'org-iswitchb)
(global-set-key (kbd "C-c o o") (lambda() (interactive)(find-file "~/notes/main.org")))

(setq org-default-notes-file "/home/anks/notes/notes.org")

;; org-mode
(define-key org-mode-map (kbd "C-M-f")    'org-metadown)
(define-key org-mode-map (kbd "C-M-b")    'org-metaup)
(define-key org-mode-map (kbd "C-M-l")    'org-shiftright)
(define-key org-mode-map (kbd "C-M-j")    'org-shiftleft)
(define-key org-mode-map (kbd "C-M-i")    'org-shiftup)
(define-key org-mode-map (kbd "C-M-k")    'org-shiftdown)
(define-key org-mode-map (kbd "C-M-_")    'live-decrement-number-at-point)
(define-key org-mode-map (kbd "C-<RET>")    'org-insert-heading-respect-content)


;; bury buffer
(global-set-key (kbd "C-q") 'bury-buffer)

;; helm
;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

;; (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebihnd tab to do persistent action
;; (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
;; (define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(global-set-key (kbd "C-SPC") 'helm-M-x)
(global-set-key (kbd "C-x C-b") 'helm-mini)

(global-set-key (kbd "C-c C-b") 'helm-bookmarks)
;;(define-key w3m-mode-map  (kbd "C-c C-b") 'helm-bookmarks)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-h f") 'helm-apropos)
(global-set-key (kbd "M-h r") 'helm-info-emacs)

;; helm swoop
(define-key helm-swoop-edit-map (kbd "C-c C-c") 'helm-swoop--edit-complete)
(define-key helm-swoop-edit-map (kbd "C-c C-k") 'helm-swoop--edit-cancel)
(define-key helm-multi-swoop-edit-map (kbd "C-c C-c") 'helm-multi-swoop--edit-complete)
(define-key helm-multi-swoop-edit-map (kbd "C-c C-k") 'helm-swoop--edit-cancel)
(define-key flycheck-mode-map (kbd "C-c ! h") 'helm-flycheck)

(global-set-key (kbd "<C-tab>") 'tab-to-tab-stop)
(define-key isearch-mode-map (kbd "M-s s") 'helm-swoop-from-isearch)

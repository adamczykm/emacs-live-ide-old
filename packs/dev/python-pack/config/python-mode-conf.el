(live-add-pack-lib "python-mode")
(require 'python-mode)
(when (featurep 'python) (unload-feature 'python t))


(require 'autopair)
(add-hook 'python-mode-hook (lambda ()
                              (autopair-mode)))

(setq py-shell-name "ipython")
(py-split-windows-on-execute-off)

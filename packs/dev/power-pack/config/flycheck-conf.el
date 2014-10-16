(live-add-pack-lib "flycheck")
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

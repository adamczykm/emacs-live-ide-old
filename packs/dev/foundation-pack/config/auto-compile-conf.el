(live-add-pack-lib "packed")
(live-add-pack-lib "auto-compile")

(setq load-prefer-newer t)
(require 'auto-compile)

(auto-compile-on-load-mode 1)
(auto-compile-on-save-mode 1)

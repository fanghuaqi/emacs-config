;;main js mode hook
(add-hook 'js2-mode-hook (lambda ()
  (message "JS Mode Activated")
  (setq tab-width 2)
  (setq js2-mirror-mode t)
  (setq js2-auto-indent-p t)
  (setq js2-indent-on-enter-key t)
  (setq js2-basic-offset 2)
  ;;this allows you to wrap a selection in quotes
  (wrap-region-mode t)
  (auto-complete-mode)
  (visual-line-mode)
  (modify-syntax-entry ?_ "w")
  (djcb-set-cursor-according-to-mode)
  (local-set-key (kbd "RET") 'newline-and-indent)))

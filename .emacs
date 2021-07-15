(require 'org)
(org-babel-load-file (expand-file-name "init.org" user-emacs-directory))
(setq-default custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file) (load custom-file))

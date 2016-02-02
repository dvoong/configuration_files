(require 'package) ;; You might already have this line
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize) ;; You might already have this line

;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;; web-mode
(require 'web-mode)
;; (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
;; (defun my-web-mode-hook () "Hooks for Web mode." (setq web-mode-markup-indent-offset 5)) ; Don't know what this does
;; (add-hook 'web-mode-hook  'my-web-mode-hook) ; Don't know what this does
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-style-padding 2)
(setq web-mode-script-padding 2)
;; (setq web-mode-block-padding 0) ; For multi-line blocks
(setq web-mode-ac-sources-alist
      '(("javascript" . (ac-source-yasnippet
			 ac-source-abbrev
			 ac-source-dictionary
			 ac-source-words-in-same-mode-buffers))
	("html" . (ac-source-yasnippet
		   ac-source-abbrev
		   ac-source-dictionary
		   ac-source-words-in-same-mode-buffers))
	("css" . (ac-source-yasnippet
		  ac-source-css-property
		  ac-source-abbrev
		  ac-source-dictionary
		  ac-source-words-in-same-mode-buffers))))

;; jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)        ; optional


(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;;(require 'ros)
(package-initialize)

(modify-coding-system-alist 'file "" 'utf-8-unix)

;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))



;; Load myinit.org
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Zathura")
     (output-html "xdg-open"))))
 '(eyebrowse-mode t)
 '(magit-log-arguments (quote ("--graph" "--color" "--decorate" "-n256")))
 '(org-agenda-files (list org-directory))
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-directory (expand-file-name "~/org"))
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-startup-folded (quote overview))
 '(org-startup-indented t)
 '(package-selected-packages
   (quote
    (all-the-icons expand-region hungry-delete beacon writegood-mode ox-twbs undo-tree org-pdfview pdf-tools ranger twbs git-timemachine git-gutter magit auctex flycheck virtualenvwrapper elpy which-key use-package try tabbar ox-reveal org-bullets htmlize counsel auto-org-md auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-region 'disabled nil)

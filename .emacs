(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command-style
   (quote
    (("" "%(PDF)%(latex) %(file-line-error) %(extraopts) -shell-escape %S%(PDFout)"))))
 '(custom-safe-themes
   (quote
    ("abd7719fd9255fcd64f631664390e2eb89768a290ee082a9f0520c5f12a660a8" "780c67d3b58b524aa485a146ad9e837051918b722fd32fd1b7e50ec36d413e70" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(electric-indent-mode 1)
 '(linum-format (quote dynamic))
 '(package-selected-packages
   (quote
    (wc-mode auto-complete-auctex cdlatex org-link-minor-mode org-evil monitor yaml-mode auctex markdown-mode+ auto-complete-clang auto-complete exec-path-from-shell arduino-mode julia-mode pdf-tools desktop+ markdown-mode color-theme color-theme-sanityinc-tomorrow markdown-preview-mode evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(completions-annotations ((t (:slant italic :family "inconsolata"))))
 '(completions-common-part ((t nil)))
 '(completions-first-difference ((t (:foreground "white smoke" :weight extra-bold))))
 '(cursor ((t (:background "#cc6666" :foreground "#cc6666"))))
 '(linum ((t (:background "1d1f21" :foreground "#cc6666" :underline nil :slant normal :weight ultra-bold))))
 '(markdown-code-face ((t (:inherit inconsolata :background "#1d1f21" :foreground "#b294bb"))))
 '(minibuffer-prompt ((t (:foreground "#81a2be")))))
(require 'evil)
(evil-mode 1)
(setq evil-move-beyond-eol t)
(setq inhibit-startup-screen t)

(require 'key-chord)
(setq key-chord-two-keys-delay 0.1)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)

(require 'pandoc-mode)
(require 'markdown-mode)
(setq markdown-command "pandoc")
(setq markdown-enable-math t)
(add-hook 'markdown-mode-hook 'pandoc-mode)


(set-frame-font "Inconsolata 14")
(setq default-frame-alist '((font . "Inconsolata 14")))

(load-theme 'sanityinc-tomorrow-night)

(desktop-save-mode 1)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)
(global-auto-revert-mode 1)

(add-hook 'doc-view-mode-hook
  (lambda ()
    (linum-mode -1)
  ))

(setq doc-view-continuous 1)
(define-key global-map (kbd "RET") 'newline-and-indent)

(require 'exec-path-from-shell)
(require 'yaml-mode)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq c-basic-offset 4)
(setq TeX-PDF-mode t)

(require 'python)
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "--simple-prompt -i")

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(setq inhibit-x-resources t)
(set-face-attribute 'fringe nil :background "#1d1f21")
(set-face-attribute 'linum nil :background "1d1f21")

'(LaTeX-command "latex -shell-escape")

(ac-config-default)
(global-auto-complete-mode t)

(find-file "~/Documents/Schedule/schedule.org")

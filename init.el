(add-to-list 'load-path "C:/Users/oldhe/Dropbox/CS/emacs")

;;Package manager, http://www.emacswiki.org/emacs/ELPA or http://batsov.com/articles/2012/02/19/package-management-in-emacs-the-good-the-bad-and-the-ugly/
(load-file "C:/Users/oldhe/Dropbox/CS/emacs/package_manager.el")

;;http://blog.karssen.org/2011/08/04/159/
(delete-selection-mode t)

;;https://kb.iu.edu/d/abuf
(setq column-number-mode t)

;;Haskell
;;(load-file "C:/Users/oldhe/Dropbox/CS/emacs/haskell.el")

;;Markdown, http://jblevins.org/projects/markdown-mode/
;;(autoload 'markdown-mode "C:/Users/oldhe/Dropbox/CS/emacs/markdown-mode"
;;   "Major mode for editing Markdown files" t)
;;(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
;;(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; F8 removes all newlines in region
;; http://stackoverflow.com/questions/5194294/how-to-remove-all-newlines-from-selected-region-in-emacs
(defun remove-newlines-in-region ()
  "Removes all newlines in the region."
  (interactive)
  (save-restriction
    (narrow-to-region (point) (mark))
    (goto-char (point-min))
    (while (search-forward "\n" nil t) (replace-match "" nil t))))

(global-set-key [f8] 'remove-newlines-in-region)

;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Lucida Sans Typewriter" :foundry "outline" :slant normal :weight normal :height 121 :width normal)))))

;;(load-file (let ((coding-system-for-read 'utf-8))
;;                        (shell-command-to-string "agda-mode locate")))

(add-hook 'haskell-mode-hook 'haskell-indent-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'purescript-mode-hook 'purescript-indent-mode)

;;(load "C:/Users/oldhe/Dropbox/CS/hs/emacs-haskell-config/init.el")
;;(setenv "PATH" (shell-command-to-string "echo $PATH"))
;;(setq shm-program-name "C:/Users/oldhe/Dropbox/CS/hs/emacs-haskell-config/packages/structured-haskell-mode")
;;(add-to-list 'load-path "C:/Users/oldhe/Dropbox/CS/hs/emacs-haskell-config/packages")
;;(add-to-list 'load-path "C:/Users/oldhe/Dropbox/CS/hs/emacs-haskell-config/packages/structured-haskell-mode/elisp")
;;(add-to-list 'exec-path "C:/Users/oldhe/Dropbox/CS/hs/emacs-haskell-config/packages/structured-haskell-mode/elisp")
;;(add-to-list 'load-path "C:/Users/oldhe/Dropbox/CS/hs/emacs-haskell-config/packages/structured-haskell-mode")
;;(add-to-list 'exec-path "C:/Users/oldhe/Dropbox/CS/hs/emacs-haskell-config/packages/structured-haskell-mode")
;;(require 'shm)
;;(add-hook 'haskell-mode-hook 'structured-haskell-mode)

;;(load "C:/Users/oldhe/Dropbox/CS/hs/emacs-haskell-config/init.el")
;;(menu-bar-mode)
;;(tool-bar-mode)
;;configuration
;;(add-to-list 'load-path "C:/Users/oldhe/Dropbox/CS/hs/emacs-haskell-config/")
;;(add-to-list 'load-path "C:/Users/oldhe/Dropbox/CS/hs/emacs-haskell-config/packages")
;;(add-to-list 'load-path "C:/Users/oldhe/Dropbox/CS/hs/emacs-haskell-config/packages/structured-haskell-mode/elisp")
;;(add-to-list 'exec-path "C:/Users/oldhe/Dropbox/CS/hs/emacs-haskell-config/packages/structured-haskell-mode/elisp")

(when window-system (set-frame-size (selected-frame) 80 20))

;;(let ((coding-system-for-read 'utf-8))
(add-to-list 'exec-path "C:/Users/oldhe/AppData/Roaming/cabal/bin")

;;(load-file "C:/Users/oldhe/AppData/Roaming/cabal/x86_64-windows-ghc-7.10.2/Agda-2.4.2.4/emacs-mode/agda2.el")

;;Proof general
(load-file "C:/Users/oldhe/Dropbox/CS/theorem_proving/ProofGeneral-4.2/generic/proof-site.el")

(add-to-list 'load-path "~/.emacs.d/tuareg-mode")
    (autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
    (autoload 'camldebug "camldebug" "Run the Caml debugger" t)
    (autoload 'tuareg-imenu-set-imenu "tuareg-imenu"
      "Configuration of imenu for tuareg" t)

(add-hook 'tuareg-mode-hook 'tuareg-imenu-set-imenu)
    (setq auto-mode-alist
        (append '(("\\.ml[ily]?$" . tuareg-mode)
	          ("\\.topml$" . tuareg-mode))
                  auto-mode-alist))

(add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/sublime-themes-20160111.122")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (spolsky)))
 '(custom-safe-themes (quote ("9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" default)))
 '(markdown-enable-math t))

 ;; line numbers
(global-linum-mode t)


;;; llvm-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (llvm-mode) "llvm-mode" "llvm-mode.el" (22439 58226
;;;;;;  0 0))
;;; Generated autoloads from llvm-mode.el

(autoload 'llvm-mode "llvm-mode" "\
Major mode for editing LLVM source files.
\\{llvm-mode-map}
  Runs `llvm-mode-hook' on startup.

\(fn)" t nil)

(add-to-list 'auto-mode-alist (cons (purecopy "\\.ll\\'") 'llvm-mode))

;;;***

;;;### (autoloads (tablegen-mode) "tablegen-mode" "tablegen-mode.el"
;;;;;;  (22439 58226 0 0))
;;; Generated autoloads from tablegen-mode.el

(autoload 'tablegen-mode "tablegen-mode" "\
Major mode for editing TableGen description files.
\\{tablegen-mode-map}
  Runs `tablegen-mode-hook' on startup.

\(fn)" t nil)

(add-to-list 'auto-mode-alist (cons (purecopy "\\.td\\'") 'tablegen-mode))

;;;***

;;;### (autoloads nil nil ("llvm-mode-pkg.el") (22439 58226 436000
;;;;;;  0))

;;;***

(provide 'llvm-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; llvm-mode-autoloads.el ends here

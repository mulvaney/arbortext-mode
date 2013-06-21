;; small list of keywords for now

(setq arbortextKeywords
 '(
   ("doc_close\\|doc_open\\|java_instance\\|java_constructor\\|java_delete\\|oid_attr\\|oid_has_attr\\|oid_content\\|response\\|sh" . font-lock-function-name-face)
   ("catch\\|if\\|else\\|while\\|for\\|switch\\|package\\|function\\|local\\|return" . font-lock-keyword-face)
  )
)

;; ACL is a lot like Javascript so it is easiest to start there.
;; Obviously a lot of javascript-mode isn't going to work, but
;; indentation works pretty well, and that's pretty much all I want
;; anyway

(define-derived-mode arbortext-mode javascript-mode
  "Arbortext Mode"
  (setq font-lock-defaults '(arbortextKeywords))
  (setq mode-name "arbortext")

  (setq comment-start "#")
  (setq comment-end "")

  (modify-syntax-entry ?# "< b" arbortext-mode-syntax-table)
  (modify-syntax-entry ?\n "> b" arbortext-mode-syntax-table)
)

(add-to-list 'auto-mode-alist '("\\.acl$" . arbortext-mode))

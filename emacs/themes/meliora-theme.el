;;; meliora-theme.el --- Meliora theme -*- lexical-binding: t; -*-

(deftheme meliora
  "A warm, muted dark theme inspired by the Helix Meliora theme.")

(let* ((class '((class color) (min-colors 89)))

       ;; Palette
       (red "#d29595")
       (orange "#cbab8a")
       (yellow "#c9b58e")
       (blue "#a49db9")
       (magenta "#b494af")

       (comment "#707035")

       (light-black "#252220")
       (light-black2 "#292725")
       (light-black3 "#302D2B")
       (black "#1c1917")
       (dark-black "#191514")
       (dark-light-black "#211d1c")

       (white "#dad7d5")
       (dark-white "#aaa7a6")
       (dark-white2 "#949290")
       (light-grey "#6a6867")
       (grey "#605e5d")
       (dark-grey "#4c4b49")
       (dark-grey2 "#383735")
       (secondary-white "#c2b4a8"))

  (custom-theme-set-faces
   'meliora

   ;; Basic UI
   `(default ((,class (:background ,black :foreground ,white))))
   `(cursor ((,class (:background ,light-grey :foreground ,black))))
   `(fringe ((,class (:background ,dark-black))))
   `(region ((,class (:background ,light-black3))))
   `(highlight ((,class (:background ,light-black))))
   `(lazy-highlight ((,class (:background ,dark-grey))))
   `(shadow ((,class (:foreground ,dark-white2))))
   `(link ((,class (:foreground ,comment :underline t))))
   `(link-visited ((,class (:foreground ,comment :underline t))))
   `(vertical-border ((,class (:foreground ,dark-grey))))
   `(window-divider ((,class (:foreground ,light-black3))))
   `(minibuffer-prompt ((,class (:foreground ,blue :weight bold))))
   `(escape-glyph ((,class (:foreground ,orange))))
   `(error ((,class (:foreground ,red :weight bold))))
   `(warning ((,class (:foreground ,orange :weight bold))))
   `(success ((,class (:foreground ,blue))))

   ;; Line numbers
   `(line-number
     ((,class (:foreground ,grey :background ,dark-black))))
   `(line-number-current-line
     ((,class (:foreground ,dark-white
                           :background ,dark-light-black))))

   ;; Mode line
   `(mode-line
     ((,class (:background ,light-black3
                           :foreground ,dark-white
                           :box nil))))
   `(mode-line-inactive
     ((,class (:background ,light-black
                           :foreground ,dark-white2
                           :box nil))))

   ;; Font Lock
   `(font-lock-builtin-face ((,class (:foreground ,orange))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment))))
   `(font-lock-constant-face ((,class (:foreground ,magenta))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,blue))))
   `(font-lock-keyword-face ((,class (:foreground ,orange))))
   `(font-lock-negation-char-face ((,class (:foreground ,red))))
   `(font-lock-preprocessor-face ((,class (:foreground ,orange))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,orange))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,orange))))
   `(font-lock-string-face ((,class (:foreground ,yellow))))
   `(font-lock-type-face ((,class (:foreground ,secondary-white))))
   `(font-lock-variable-name-face ((,class (:foreground ,white))))
   `(font-lock-warning-face ((,class (:foreground ,orange :weight bold))))

   ;; Tree-sitter (Emacs 29+)
   `(treesit-font-lock-comment-face ((,class (:foreground ,comment))))
   `(treesit-font-lock-string-face ((,class (:foreground ,yellow))))
   `(treesit-font-lock-keyword-face ((,class (:foreground ,orange))))
   `(treesit-font-lock-function-face ((,class (:foreground ,blue))))
   `(treesit-font-lock-variable-face ((,class (:foreground ,white))))
   `(treesit-font-lock-type-face ((,class (:foreground ,secondary-white))))
   `(treesit-font-lock-constant-face ((,class (:foreground ,magenta))))
   `(treesit-font-lock-number-face ((,class (:foreground ,magenta))))
   `(treesit-font-lock-operator-face ((,class (:foreground ,secondary-white))))
   `(treesit-font-lock-property-face ((,class (:foreground ,white))))
   `(treesit-font-lock-punctuation-face ((,class (:foreground ,secondary-white))))

   ;; Search
   `(isearch
     ((,class (:background ,orange :foreground ,black))))
   `(lazy-highlight
     ((,class (:background ,light-black3))))

   ;; Matching parens
   `(show-paren-match
     ((,class (:background ,dark-grey :weight bold))))
   `(show-paren-mismatch
     ((,class (:background ,red :foreground ,black))))

   ;; Completion
   `(completions-common-part
     ((,class (:foreground ,orange :weight bold))))
   `(completions-first-difference
     ((,class (:foreground ,magenta))))

   ;; Diff
   `(diff-added
     ((,class (:foreground ,blue))))
   `(diff-removed
     ((,class (:foreground ,red))))
   `(diff-changed
     ((,class (:foreground ,magenta))))

   ;; Flymake/Flycheck
   `(flymake-error
     ((,class (:underline (:style wave :color ,red)))))
   `(flymake-warning
     ((,class (:underline (:style wave :color ,orange)))))
   `(flymake-note
     ((,class (:underline (:style wave :color ,blue)))))

   ;; Company / Corfu
   `(company-tooltip
     ((,class (:background ,light-black
                           :foreground ,dark-white))))
   `(company-tooltip-selection
     ((,class (:background ,orange
                           :foreground ,black))))
   `(company-tooltip-common
     ((,class (:foreground ,orange))))
   `(corfu-default
     ((,class (:background ,light-black
                           :foreground ,dark-white))))
   `(corfu-current
     ((,class (:background ,orange
                           :foreground ,black))))

   ;; Org
   `(org-level-1
     ((,class (:foreground ,orange :weight bold))))
   `(org-level-2
     ((,class (:foreground ,blue :weight bold))))
   `(org-level-3
     ((,class (:foreground ,magenta :weight bold))))
   `(org-code
     ((,class (:foreground ,blue))))
   `(org-block
     ((,class (:background ,dark-black))))
   `(org-verbatim
     ((,class (:foreground ,yellow))))
   `(org-link
     ((,class (:foreground ,comment :underline t))))
   `(org-quote
     ((,class (:foreground ,yellow :slant italic))))

   ;; Markdown
   `(markdown-header-face-1
     ((,class (:foreground ,orange :weight bold))))
   `(markdown-header-face-2
     ((,class (:foreground ,blue :weight bold))))
   `(markdown-inline-code-face
     ((,class (:foreground ,blue))))
   `(markdown-code-face
     ((,class (:foreground ,blue))))
   `(markdown-link-face
     ((,class (:foreground ,comment :underline t))))))

(provide-theme 'meliora)

;;; meliora-theme.el ends here

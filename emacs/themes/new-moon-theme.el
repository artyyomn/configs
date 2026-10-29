(deftheme new-moon)

(let ((class '((class color) (min-colors 89)))

      ;; Palette
      (darkest "#2d2d2d")
      (medium "#777c85")
      (light "#b3b9c5")
      (lightest "#ffffff")
      (red "#f2777a")
      (orange "#fca369")
      (yellow "#ffd479")
      (light-yellow "#ffeea6")
      (green "#92d192")
      (blue "#6ab0f3")
      (darker-blue "#007acc")
      (darkest-blue "#264f78")
      (aqua "#76d4d6")
      (purple "#e1a6f2")
      (beige "#ac8d58")
      (light-gray "#eeeeee")
      (dark-gray-virtual "#606060")
      (light-gray-virtual "#909090")
      (active-line "#252525")

      (text "#d4d4d4")
      (cursor "#a6a6a6")
      (widget "#252526")
      (borders "#323232"))

  (custom-theme-set-faces
   'new-moon

   ;; =========================================================================
   ;; Core UI
   ;; =========================================================================

   `(default ((,class (:foreground ,text :background ,darkest))))
   `(cursor ((,class (:background ,cursor))))
   `(fringe ((,class (:background ,darkest))))
   `(region ((,class (:background "#3a3d41"))))
   `(highlight ((,class (:background ,active-line))))
   `(lazy-highlight ((,class (:background "#3a3d41"))))
   `(match ((,class (:background "#3a3d41" :underline t))))

   `(vertical-border ((,class (:foreground ,borders))))
   `(window-divider ((,class (:foreground ,borders))))
   `(minibuffer-prompt ((,class (:foreground ,blue))))

   `(mode-line
     ((,class (:foreground ,lightest
                           :background ,darker-blue
                           :box nil))))
   `(mode-line-inactive
     ((,class (:foreground ,text
                           :background ,widget
                           :box nil))))

   `(header-line
     ((,class (:foreground ,text
                           :background ,widget
                           :box nil))))

   `(line-number
     ((,class (:foreground ,dark-gray-virtual
                           :background ,darkest))))
   `(line-number-current-line
     ((,class (:foreground ,light-gray-virtual
                           :background ,active-line))))

   `(hl-line ((,class (:background ,active-line))))

   ;; =========================================================================
   ;; Font Lock
   ;; =========================================================================

   `(font-lock-comment-face ((,class (:foreground ,medium))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,medium))))

   `(font-lock-keyword-face ((,class (:foreground ,light-yellow))))
   `(font-lock-builtin-face ((,class (:foreground ,blue))))

   `(font-lock-function-name-face
     ((,class (:foreground ,lightest))))

   `(font-lock-variable-name-face
     ((,class (:foreground ,red))))

   `(font-lock-type-face
     ((,class (:foreground ,blue))))

   `(font-lock-constant-face
     ((,class (:foreground ,purple))))

   `(font-lock-string-face
     ((,class (:foreground ,green))))

   `(font-lock-doc-face
     ((,class (:foreground ,green))))

   `(font-lock-warning-face
     ((,class (:foreground ,yellow :weight bold))))

   `(font-lock-preprocessor-face
     ((,class (:foreground ,light-yellow))))

   `(font-lock-negation-char-face
     ((,class (:foreground ,beige))))

   `(font-lock-regexp-face
     ((,class (:foreground ,orange))))

   `(font-lock-regexp-grouping-backslash
     ((,class (:foreground ,aqua))))

   `(font-lock-regexp-grouping-construct
     ((,class (:foreground ,orange))))

   ;; =========================================================================
   ;; Treesit (Emacs 29+)
   ;; =========================================================================

   `(treesit-font-lock-type-face
     ((,class (:foreground ,blue))))

   `(treesit-font-lock-builtin-type-face
     ((,class (:foreground ,blue))))

   `(treesit-font-lock-variable-face
     ((,class (:foreground ,red))))

   `(treesit-font-lock-property-face
     ((,class (:foreground ,red))))

   `(treesit-font-lock-variable-use-face
     ((,class (:foreground ,red))))

   `(treesit-font-lock-constant-face
     ((,class (:foreground ,purple))))

   `(treesit-font-lock-number-face
     ((,class (:foreground ,orange))))

   `(treesit-font-lock-string-face
     ((,class (:foreground ,green))))

   `(treesit-font-lock-escape-face
     ((,class (:foreground ,aqua))))

   `(treesit-font-lock-function-face
     ((,class (:foreground ,lightest))))

   `(treesit-font-lock-function-call-face
     ((,class (:foreground ,lightest))))

   `(treesit-font-lock-method-call-face
     ((,class (:foreground ,lightest))))

   `(treesit-font-lock-keyword-face
     ((,class (:foreground ,light-yellow))))

   `(treesit-font-lock-operator-face
     ((,class (:foreground ,beige))))

   `(treesit-font-lock-delimiter-face
     ((,class (:foreground ,text))))

   `(treesit-font-lock-punctuation-face
     ((,class (:foreground ,text))))

   `(treesit-font-lock-bracket-face
     ((,class (:foreground ,text))))

   `(treesit-font-lock-label-face
     ((,class (:foreground ,blue))))

   `(treesit-font-lock-attribute-face
     ((,class (:foreground ,yellow))))

   `(treesit-font-lock-tag-face
     ((,class (:foreground ,blue))))

   `(treesit-font-lock-doc-face
     ((,class (:foreground ,green))))

   `(treesit-font-lock-comment-face
     ((,class (:foreground ,medium))))

   ;; =========================================================================
   ;; Markdown / Org
   ;; =========================================================================

   `(markdown-header-face
     ((,class (:foreground ,blue :weight bold))))

   `(markdown-bold-face
     ((,class (:foreground ,blue :weight bold))))

   `(markdown-italic-face
     ((,class (:slant italic))))

   `(markdown-inline-code-face
     ((,class (:foreground ,orange))))

   `(markdown-link-face
     ((,class (:underline t))))

   `(markdown-url-face
     ((,class (:underline t))))

   `(org-level-1
     ((,class (:foreground ,blue :weight bold))))

   ;; =========================================================================
   ;; Diff
   ;; =========================================================================

   `(diff-added
     ((,class (:foreground ,green))))

   `(diff-removed
     ((,class (:foreground ,red))))

   `(diff-changed
     ((,class (:foreground ,blue))))

   ;; =========================================================================
   ;; Diagnostics
   ;; =========================================================================

   `(error ((,class (:foreground ,red))))
   `(warning ((,class (:foreground ,yellow))))
   `(success ((,class (:foreground ,green))))

   `(flymake-error
     ((,class (:underline (:style wave :color ,red)))))

   `(flymake-warning
     ((,class (:underline (:style wave :color ,yellow)))))

   `(flymake-note
     ((,class (:underline (:style wave :color ,blue)))))

   `(flycheck-error
     ((,class (:underline (:style wave :color ,red)))))

   `(flycheck-warning
     ((,class (:underline (:style wave :color ,yellow)))))

   `(flycheck-info
     ((,class (:underline (:style wave :color ,blue)))))))

(provide-theme 'new-moon)

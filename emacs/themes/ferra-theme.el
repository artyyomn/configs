(deftheme ferra
  "Ferra theme")

(let* ((class '((class color) (min-colors 89)))

       ;; Palette
       (ferra-night "#2b292d")
       (ferra-ash "#383539")
       (ferra-umber "#4d424b")
       (ferra-bark "#6F5D63")
       (ferra-mist "#D1D1E0")
       (ferra-sage "#B1B695")
       (ferra-blush "#fecdb2")
       (ferra-coral "#ffa07a")
       (ferra-rose "#F6B6C9")
       (ferra-ember "#e06b75")
       (ferra-honey "#F5D76E"))

  (custom-theme-set-faces
   'ferra

   ;; =========================================================================
   ;; Basic UI
   ;; =========================================================================

   `(default ((,class (:foreground ,ferra-blush :background ,ferra-night))))
   `(cursor ((,class (:foreground ,ferra-night :background ,ferra-blush))))
   `(region ((,class (:background ,ferra-umber))))
   `(highlight ((,class (:background ,ferra-ash))))
   `(fringe ((,class (:background ,ferra-night :foreground ,ferra-bark))))
   `(vertical-border ((,class (:foreground ,ferra-bark))))
   `(link ((,class (:foreground ,ferra-rose :underline t))))
   `(shadow ((,class (:foreground ,ferra-bark))))
   `(minibuffer-prompt ((,class (:foreground ,ferra-coral :weight bold))))
   `(line-number ((,class (:foreground ,ferra-bark :background ,ferra-night))))
   `(line-number-current-line ((,class (:foreground ,ferra-blush :background ,ferra-night))))
   `(hl-line ((,class (:background ,ferra-ash))))
   `(success ((,class (:foreground ,ferra-sage))))
   `(warning ((,class (:foreground ,ferra-honey))))
   `(error ((,class (:foreground ,ferra-ember))))
   `(match ((,class (:foreground ,ferra-night :background ,ferra-bark))))

   ;; =========================================================================
   ;; Font Lock
   ;; =========================================================================

   `(font-lock-comment-face
     ((,class (:foreground ,ferra-bark :slant italic))))
   `(font-lock-comment-delimiter-face
     ((,class (:foreground ,ferra-bark :slant italic))))

   `(font-lock-constant-face
     ((,class (:foreground ,ferra-sage))))

   `(font-lock-function-name-face
     ((,class (:foreground ,ferra-coral))))

   `(font-lock-keyword-face
     ((,class (:foreground ,ferra-mist))))

   `(font-lock-builtin-face
     ((,class (:foreground ,ferra-rose))))

   `(font-lock-variable-name-face
     ((,class (:foreground ,ferra-blush))))

   `(font-lock-type-face
     ((,class (:foreground ,ferra-rose))))

   `(font-lock-string-face
     ((,class (:foreground ,ferra-sage))))

   `(font-lock-doc-face
     ((,class (:foreground ,ferra-bark))))

   `(font-lock-preprocessor-face
     ((,class (:foreground ,ferra-mist))))

   `(font-lock-warning-face
     ((,class (:foreground ,ferra-honey :weight bold))))

   `(font-lock-negation-char-face
     ((,class (:foreground ,ferra-mist))))

   `(font-lock-regexp-grouping-backslash
     ((,class (:foreground ,ferra-mist))))

   `(font-lock-regexp-grouping-construct
     ((,class (:foreground ,ferra-mist))))

   ;; =========================================================================
   ;; Treesit (Emacs 29+)
   ;; =========================================================================

   `(treesit-font-lock-comment-face
     ((,class (:inherit font-lock-comment-face))))

   `(treesit-font-lock-constant-face
     ((,class (:foreground ,ferra-sage))))

   `(treesit-font-lock-function-face
     ((,class (:foreground ,ferra-coral))))

   `(treesit-font-lock-function-call-face
     ((,class (:foreground ,ferra-coral))))

   `(treesit-font-lock-keyword-face
     ((,class (:foreground ,ferra-mist))))

   `(treesit-font-lock-operator-face
     ((,class (:foreground ,ferra-mist))))

   `(treesit-font-lock-punctuation-face
     ((,class (:foreground ,ferra-blush))))

   `(treesit-font-lock-string-face
     ((,class (:foreground ,ferra-sage))))

   `(treesit-font-lock-type-face
     ((,class (:foreground ,ferra-rose))))

   `(treesit-font-lock-variable-face
     ((,class (:foreground ,ferra-blush))))

   `(treesit-font-lock-property-face
     ((,class (:foreground ,ferra-blush))))

   `(treesit-font-lock-label-face
     ((,class (:foreground ,ferra-sage))))

   `(treesit-font-lock-number-face
     ((,class (:foreground ,ferra-sage))))

   `(treesit-font-lock-escape-face
     ((,class (:foreground ,ferra-coral))))

   ;; =========================================================================
   ;; Markdown / Org
   ;; =========================================================================

   `(markdown-header-face
     ((,class (:foreground ,ferra-sage :weight bold))))

   `(markdown-inline-code-face
     ((,class (:foreground ,ferra-coral))))

   `(markdown-code-face
     ((,class (:foreground ,ferra-coral))))

   `(markdown-link-face
     ((,class (:foreground ,ferra-rose :underline t))))

   `(markdown-url-face
     ((,class (:foreground ,ferra-rose :underline t))))

   `(org-level-1
     ((,class (:foreground ,ferra-sage :weight bold))))

   `(org-link
     ((,class (:foreground ,ferra-rose :underline t))))

   `(org-code
     ((,class (:foreground ,ferra-coral))))

   `(org-verbatim
     ((,class (:foreground ,ferra-coral))))

   `(org-block
     ((,class (:background ,ferra-ash))))

   `(org-quote
     ((,class (:foreground ,ferra-bark :slant italic))))

   ;; =========================================================================
   ;; Mode Line
   ;; =========================================================================

   `(mode-line
     ((,class (:foreground ,ferra-blush
                            :background ,ferra-ash
                            :box nil))))

   `(mode-line-inactive
     ((,class (:foreground ,ferra-bark
                            :background ,ferra-ash
                            :box nil))))

   ;; =========================================================================
   ;; Company / Corfu
   ;; =========================================================================

   `(tooltip
     ((,class (:foreground ,ferra-blush
                            :background ,ferra-ash))))

   `(completions-common-part
     ((,class (:foreground ,ferra-coral))))

   `(completions-first-difference
     ((,class (:foreground ,ferra-rose))))

   ;; =========================================================================
   ;; Diff
   ;; =========================================================================

   `(diff-added
     ((,class (:foreground ,ferra-sage))))

   `(diff-removed
     ((,class (:foreground ,ferra-ember))))

   `(diff-changed
     ((,class (:foreground ,ferra-blush))))

   ;; =========================================================================
   ;; Flymake / Flycheck
   ;; =========================================================================

   `(flymake-error
     ((,class (:underline (:style wave :color ,ferra-ember)))))

   `(flymake-warning
     ((,class (:underline (:style wave :color ,ferra-honey)))))

   `(flymake-note
     ((,class (:underline (:style wave :color ,ferra-blush)))))

   `(flycheck-error
     ((,class (:underline (:style wave :color ,ferra-ember)))))

   `(flycheck-warning
     ((,class (:underline (:style wave :color ,ferra-honey)))))

   `(flycheck-info
     ((,class (:underline (:style wave :color ,ferra-blush)))))))

(provide-theme 'ferra)

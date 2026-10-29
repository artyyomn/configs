;;; quiet-theme.el --- Mostly monochrome theme -*- lexical-binding: t; -*-
;;
;; Converted from the Vim colorscheme "quiet"
;; Original author: Maxence Weynans
;; URL: https://github.com/vim/colorschemes
;; License: Vim License
;;
;;; Commentary:
;;
;; A mostly monochrome theme with restrained accent colors.
;; Customize `quiet-theme-variant' to select dark or light.
;;
;;; Code:

(require 'color)

(defgroup quiet-theme nil
  "A mostly monochrome colorscheme."
  :group 'faces)

(defcustom quiet-theme-variant 'dark
  "Variant of the Quiet theme."
  :type '(choice (const :tag "Dark" dark)
                 (const :tag "Light" light))
  :group 'quiet-theme)

(deftheme quiet
  "A mostly monochrome theme with a few niceties.")

(let* ((dark (eq quiet-theme-variant 'dark))
       (bg       (if dark "#000000" "#d7d7d7"))
       (fg       (if dark "#dadada" "#000000"))
       (comment  (if dark "#707070" "#000000"))
       (muted    (if dark "#585858" "#a8a8a8"))
       (subtle   (if dark "#1c1c1c" "#e4e4e4"))
       (current  (if dark "#303030" "#eeeeee"))
       (popup    "#a8a8a8")
       (red      (if dark "#ff005f" "#af0000"))
       (green    (if dark "#00af00" "#87d787"))
       (yellow   "#ffaf00")
       (blue     (if dark "#00afff" "#00afff"))
       (magenta  (if dark "#ff5fff" "#ff5fff"))
       (cyan     "#00afaf")
       (diff-blue (if dark "#87afd7" "#afafd7"))
       (diff-red  (if dark "#d75f5f" "#d78787"))
       (diff-magenta "#d787d7")
       (selection-fg (if dark "#ffaf00" "#ffaf00"))
       (modeline-bg (if dark fg "#000000"))
       (modeline-fg (if dark "#000000" "#eeeeee")))

  (custom-theme-set-faces
   'quiet

   ;; Core editor
   `(default ((t (:foreground ,fg :background ,bg))))
   `(cursor ((t (:inverse-video t))))
   `(region ((t (:foreground ,selection-fg
                             :background ,bg
                             :inverse-video t))))
   `(highlight ((t (:background ,current))))
   `(hl-line ((t (:background ,current))))
   `(fringe ((t (:foreground ,comment :background ,bg))))
   `(border ((t (:foreground ,comment))))
   `(vertical-border ((t (:foreground ,comment))))
   `(shadow ((t (:foreground ,comment))))
   `(link ((t (:foreground ,fg :underline t))))
   `(link-visited ((t (:foreground ,comment :underline t))))
   `(escape-glyph ((t (:foreground ,cyan))))
   `(nobreak-space ((t (:foreground ,comment))))

   ;; Syntax highlighting: intentionally restrained
   `(font-lock-builtin-face ((t (:foreground ,fg))))
   `(font-lock-comment-face ((t (:foreground ,comment :weight bold))))
   `(font-lock-comment-delimiter-face
     ((t (:foreground ,comment :weight bold))))
   `(font-lock-constant-face ((t (:foreground ,fg))))
   `(font-lock-doc-face ((t (:foreground ,comment))))
   `(font-lock-function-name-face ((t (:foreground ,fg))))
   `(font-lock-keyword-face ((t (:foreground ,fg))))
   `(font-lock-string-face ((t (:foreground ,fg))))
   `(font-lock-type-face ((t (:foreground ,fg))))
   `(font-lock-variable-name-face ((t (:foreground ,fg))))
   `(font-lock-warning-face
     ((t (:foreground ,red :weight bold))))

   ;; Line numbers
   `(line-number ((t (:foreground ,(if dark "#585858" "#a8a8a8")
                                  :background ,bg))))
   `(line-number-current-line
     ((t (:foreground ,fg :background ,bg :weight bold))))

   ;; Search and matching
   `(isearch ((t (:foreground ,yellow :background ,bg :inverse-video t))))
   `(isearch-fail ((t (:foreground ,red :background ,bg :inverse-video t))))
   `(lazy-highlight ((t (:foreground ,blue :background ,bg
                                     :inverse-video t))))
   `(match ((t (:foreground ,magenta :weight bold))))
   `(show-paren-match ((t (:foreground ,magenta :weight bold))))
   `(show-paren-mismatch
     ((t (:foreground ,red :weight bold :inverse-video t))))

   ;; Completion and minibuffer
   `(minibuffer-prompt ((t (:foreground ,fg :weight bold))))
   `(completions-common-part ((t (:foreground ,red))))
   `(completions-first-difference ((t (:foreground ,fg :weight bold))))
   `(completions-annotations ((t (:foreground ,comment))))
   `(vertico-current ((t (:foreground ,bg :background ,fg))))
   `(marginalia-documentation ((t (:foreground ,comment))))
   `(company-tooltip
     ((t (:foreground "#000000" :background ,popup))))
   `(company-tooltip-selection
     ((t (:foreground "#000000" :background ,fg))))
   `(company-tooltip-common ((t (:foreground ,red))))
   `(company-tooltip-common-selection
     ((t (:foreground ,red :weight bold))))
   `(company-scrollbar-bg ((t (:background ,muted))))
   `(company-scrollbar-fg ((t (:background ,fg))))

   ;; Modeline
   `(mode-line
     ((t (:foreground ,modeline-fg
                      :background ,modeline-bg
                      :weight bold
                      :box nil))))
   `(mode-line-inactive
     ((t (:foreground ,comment
                      :background ,bg
                      :box nil))))
   `(mode-line-buffer-id ((t (:foreground ,modeline-fg :weight bold))))
   `(header-line
     ((t (:foreground ,fg :background ,muted :box nil))))
   `(tab-bar ((t (:foreground ,comment :background ,bg))))
   `(tab-bar-tab
     ((t (:foreground ,modeline-fg
                      :background ,modeline-bg
                      :weight bold))))
   `(tab-bar-tab-inactive
     ((t (:foreground ,comment :background ,bg))))

   ;; Messages and prompts
   `(error ((t (:foreground ,red :weight bold))))
   `(warning ((t (:foreground ,yellow :weight bold))))
   `(success ((t (:foreground ,green))))
   `(help-key-binding ((t (:foreground ,fg :weight bold))))
   `(tooltip ((t (:foreground "#000000" :background ,popup))))

   ;; Diff
   `(diff-added
     ((t (:foreground ,green :background ,bg :inverse-video t))))
   `(diff-removed
     ((t (:foreground ,diff-red :background ,bg :inverse-video t))))
   `(diff-changed
     ((t (:foreground ,diff-blue :background ,bg :inverse-video t))))
   `(diff-refine-added
     ((t (:foreground ,green :background ,bg :weight bold))))
   `(diff-refine-removed
     ((t (:foreground ,diff-red :background ,bg :weight bold))))
   `(diff-refine-changed
     ((t (:foreground ,diff-magenta :background ,bg :weight bold))))
   `(diff-header ((t (:foreground ,fg :weight bold))))
   `(diff-file-header ((t (:foreground ,fg :weight bold))))

   ;; Compilation and diagnostics
   `(compilation-error ((t (:foreground ,red :weight bold))))
   `(compilation-warning ((t (:foreground ,yellow :weight bold))))
   `(compilation-info ((t (:foreground ,green))))
   `(flymake-error ((t (:underline (:style wave :color ,red)))))
   `(flymake-warning ((t (:underline (:style wave :color ,yellow)))))
   `(flymake-note ((t (:underline (:style wave :color ,cyan)))))
   `(flycheck-error ((t (:underline (:style wave :color ,red)))))
   `(flycheck-warning ((t (:underline (:style wave :color ,yellow)))))
   `(flycheck-info ((t (:underline (:style wave :color ,cyan)))))

   ;; Org mode
   `(org-level-1 ((t (:foreground ,fg :weight bold))))
   `(org-level-2 ((t (:foreground ,fg :weight bold))))
   `(org-level-3 ((t (:foreground ,fg))))
   `(org-level-4 ((t (:foreground ,comment))))
   `(org-document-title ((t (:foreground ,fg :weight bold))))
   `(org-link ((t (:foreground ,fg :underline t))))
   `(org-code ((t (:foreground ,fg))))
   `(org-verbatim ((t (:foreground ,fg))))
   `(org-block ((t (:foreground ,fg :background ,subtle))))
   `(org-block-begin-line ((t (:foreground ,comment))))
   `(org-block-end-line ((t (:foreground ,comment))))
   `(org-todo ((t (:foreground ,magenta :weight bold))))
   `(org-done ((t (:foreground ,comment))))
   `(org-date ((t (:foreground ,cyan :underline t))))
   `(org-agenda-date-today ((t (:foreground ,fg :weight bold))))
   `(org-tag ((t (:foreground ,comment))))

   ;; Markdown
   `(markdown-header-face ((t (:foreground ,fg :weight bold))))
   `(markdown-header-face-1 ((t (:foreground ,fg :weight bold))))
   `(markdown-header-face-2 ((t (:foreground ,fg :weight bold))))
   `(markdown-header-face-3 ((t (:foreground ,fg))))
   `(markdown-inline-code-face ((t (:foreground ,fg))))
   `(markdown-code-face ((t (:foreground ,fg :background ,subtle))))
   `(markdown-pre-face ((t (:foreground ,fg :background ,subtle))))
   `(markdown-link-face ((t (:foreground ,fg :underline t))))
   `(markdown-url-face ((t (:foreground ,comment))))

   ;; Whitespace and trailing characters
   `(trailing-whitespace ((t (:background ,red))))
   `(whitespace-space ((t (:foreground ,comment))))
   `(whitespace-tab ((t (:foreground ,comment))))
   `(whitespace-trailing ((t (:background ,red))))
   `(whitespace-line ((t (:background ,subtle))))

   ;; Miscellaneous
   `(widget-field ((t (:foreground ,fg :background ,current))))
   `(widget-button ((t (:foreground ,fg :weight bold))))
   `(bookmark-face ((t (:foreground ,magenta :weight bold))))
   `(calendar-today ((t (:foreground ,fg :weight bold :underline t))))
   `(diary ((t (:foreground ,cyan))))
   `(icomplete-first-match ((t (:foreground ,red :weight bold))))
   `(pulse-highlight-start-face ((t (:background ,current))))
   `(pulse-highlight-face ((t (:background ,current))))
   `(next-error ((t (:foreground ,yellow :weight bold))))
   `(undo-tree-visualizer-current-face ((t (:foreground ,fg))))
   `(undo-tree-visualizer-default-face ((t (:foreground ,comment))))
   `(undo-tree-visualizer-unmodified-face ((t (:foreground ,green))))
   `(undo-tree-visualizer-register-face ((t (:foreground ,magenta))))))

(provide-theme 'quiet)

;;; quiet-theme.el ends here

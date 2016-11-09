(deftheme elite
  "Dark color theme named in honor of the great Elite game.")

(let* ((class '((class color) (min-colors 89)))
       (elite-bg         "#2B2B2B")
       (elite-fg         "#CCCCCC")
       (elite-target     "#FFFF77")
       (elite-path       "#3F3F3F")
       (elite-laser      "#FFED42")
       (elite-sunlight   "#EEEEA0")
       (elite-greenlight "#A0F0A0")
       (elite-waterlight "#C0E0FF")
       (elite-grass      "#C0E991")
       (elite-dark       "gray13")
       (elite-fire       "#FF2222")
       (elite-blue       "#528DBA")
       (elite-teal       "#52BAB6")
       (elite-green      "#80BA51")
       (elite-yellow     "#E6B012")
       (elite-red        "#E14E66")
       (elite-brown      "#9B7F6E")
       (elite-pink       "#DF8BAB")
       (elite-orange     "#F57900"))
  (custom-theme-set-faces
   'elite
   `(default ((t (:foreground ,elite-fg :background ,elite-bg))))
   `(cursor ((t (:background ,elite-target))))
   `(hl-line ((t (:background ,elite-path :inverse-video nil))))
   `(mode-line ((t (:foreground ,elite-fg :background "gray35"))))
   `(mode-line-inactive ((t (:foreground ,elite-fg :background "gray25"))))

   ;; Highlighting faces
   `(fringe ((t (:background "gray60" :foreground "gray40"))))
   `(highlight ((t (:background ,elite-waterlight))))
   `(region ((t (:foreground ,elite-bg :background "gray55"))))
   `(cua-rectangle ((t (:foreground ,elite-bg :background ,elite-grass))))
   `(secondary-selection ((t (:foreground ,elite-bg :background ,elite-greenlight))))
   ;; isearch
   `(isearch ((t (:foreground ,elite-bg :background ,elite-sunlight :inverse-video nil))))
   `(lazy-highlight ((t (:foreground ,elite-bg :background ,elite-greenlight :inverse-video nil))))

   `(flx-highlight-face ((t (:width condensed :foreground ,elite-teal))))

   `(idle-highlight ((t (:background ,"gray25"))))
   `(trailing-whitespace ((t (:background ,elite-fire))))

   ;; Escape and prompt faces
   `(minibuffer-prompt ((t (:weight bold :foreground ,elite-blue))))
   `(escape-glyph ((t (:foreground ,elite-teal))))
   `(error ((t (:foreground ,elite-red))))
   `(warning ((t (:foreground ,elite-orange))))
   `(success ((t (:foreground ,elite-green))))

   ;; Font lock faces
   `(font-lock-builtin-face ((t (:foreground ,elite-teal))))
   `(font-lock-comment-face ((t (:foreground "gray50"))))
   `(font-lock-constant-face ((t (:foreground ,elite-teal))))
   `(font-lock-function-name-face ((t (:weight extra-bold :foreground ,elite-blue))))
   `(font-lock-keyword-face ((t (:weight semi-bold :foreground ,elite-yellow))))
   `(font-lock-string-face ((t (:foreground ,elite-green))) t)
   `(font-lock-type-face ((t (:foreground ,elite-brown :weight extra-bold))))
   `(font-lock-variable-name-face ((t (:width condensed :foreground ,elite-pink))))
   `(font-lock-warning-face ((t (:foreground ,elite-red :weight bold))))

   ;;Highlight pair parentheses
   `(show-paren-match ((t (:foreground ,elite-laser :weight extra-bold))))
   `(show-paren-mismatch ((t (:foreground ,elite-fire :weight extra-bold))))

   `(button ((t (:foreground ,elite-blue))))

   ;; nXML
   `(hl-tags-face ((t (:background ,elite-dark))))

      ;; dired
   `(diredp-dir-heading ((t (:foreground ,elite-yellow))))
   `(diredp-dir-name ((t (:foreground ,elite-blue))))
   `(diredp-file-name ((t (:foreground ,elite-teal))))
   `(diredp-file-suffix ((t (:foreground ,elite-green))))

   ;; rainbow-delimiters
   ;; (1 (2 (3 (4 (5 (6 (7 (8 (9 (10 (11 (12))))))))))))
   `(rainbow-delimiters-depth-1-face ((t (:foreground "#777777" :background ,elite-bg :weight semi-bold))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground "#7171D5" :background ,elite-bg :weight semi-bold))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground "#528DBA" :background ,elite-bg :weight semi-bold))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground "#00A89B" :background ,elite-bg :weight semi-bold))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground "#80BA51" :background ,elite-bg :weight semi-bold))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground "#AFAF00" :background ,elite-bg :weight semi-bold))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground "#F57900" :background ,elite-bg :weight semi-bold))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground "#E14E66" :background ,elite-bg :weight semi-bold))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground "#EE66E8" :background ,elite-bg :weight semi-bold))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground ,elite-fire  :background ,elite-bg :weight extra-bold))))
   ))

(custom-theme-set-variables
 'elite
 ;; fill-column-indicator
 `(fci-rule-color "gray50")

 ;; marker
 `(highlight-symbol-colors
   '("#EFFF00" "#73CD4F" "#83DDFF" "MediumPurple1" "#66CDAA"
     "DarkOrange" "HotPink1" "#809FFF" "#ADFF2F")))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'elite)

;;; elite-theme.el ends here

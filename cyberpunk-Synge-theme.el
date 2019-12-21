;;; cyberpunk-Synge-theme.el --- cyberpunk-Synge Color Theme

;; Copyright 2012-2018, Nicholas M. Van Horn

;; Author: Nicholas M. Van Horn <nvanhorn@protonmail.com>
;; Homepage: https://github.com/n3mo/cyberpunk-Synge-theme.el
;; Keywords: color theme cyberpunk-Synge
;; Version: 1.21

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;

;; "and he'd still see the matrix in his sleep, bright lattices of logic
;; unfolding across that colorless void..."
;; William Gibson, Neuromancer.

;;; Commentary:

;; This theme is a port of Sam Aaron's overtone/emacs-live theme of the 
;; same name (https://github.com/overtone/emacs-live). The original theme 
;; was designed for use with the color-theme package. This theme adopts 
;; the new built-in theme support deftheme. Additionally, this
;; theme strives to offer as many mode-specific customizations as
;; possible, with further tweaks that suit my fancy.

(deftheme cyberpunk-Synge "The cyberpunk-Synge color theme")

(defcustom cyberpunk-Synge-transparent-background nil
  "Make transparent background in terminal. (Workaround)")

(let ((class '((class color) (min-colors 89)))
      ;; cyberpunk-Synge palette
      (cyberpunk-Synge-fg "#dcdccc")
      (cyberpunk-Synge-bg-1 "#2b2b2b")
      (cyberpunk-Synge-bg-05 "#383838")
      (cyberpunk-Synge-bg "#191920")
      (cyberpunk-Synge-bg+1 "#4f4f4f")
      (cyberpunk-Synge-bg+2 "#5f5f5f")
      (cyberpunk-Synge-bg+3 "#6f6f6f")
      (cyberpunk-Synge-red+1 "#dca3a3")
      (cyberpunk-Synge-red "#ff0000")
      (cyberpunk-Synge-red-1 "#8b0000")
      (cyberpunk-Synge-red-2 "#8b0000")
      (cyberpunk-Synge-red-3 "#9c6363")
      (cyberpunk-Synge-red-4 "#8c5353")
      (cyberpunk-Synge-red-5 "#7F073F")
      (cyberpunk-Synge-pink "#ff69b4")
      (cyberpunk-Synge-pink-1 "#ff1493")
      (cyberpunk-Synge-pink-2 "#cd1076")
      (cyberpunk-Synge-orange-2 "#FF6400")
      (cyberpunk-Synge-orange-1 "#ff8c00") ;; DarkOrange
      (cyberpunk-Synge-orange "#ffa500")
      (cyberpunk-Synge-yellow "#ffff00")
      (cyberpunk-Synge-yellow-1 "#FBDE2D")
      (cyberpunk-Synge-yellow-2 "#d0bf8f")
      (cyberpunk-Synge-yellow-3 "#D8FA3C")
      (cyberpunk-Synge-yellow-4 "#E9C062")
      (cyberpunk-Synge-yellow-5 "#ffd700")
      (cyberpunk-Synge-green-2 "#006400")
      (cyberpunk-Synge-green-1 "#2e8b57")
      (cyberpunk-Synge-green "#00ff00")
      (cyberpunk-Synge-green+1 "#61CE3C")
      (cyberpunk-Synge-green+2 "#9fc59f")
      (cyberpunk-Synge-green+3 "#afd8af")
      (cyberpunk-Synge-green+4 "#bfebbf")
      (cyberpunk-Synge-cyan "#93e0e3")
      (cyberpunk-Synge-blue+1 "#94bff3")
      (cyberpunk-Synge-blue "#0000ff")    ;; blue
      (cyberpunk-Synge-blue-1 "#7b68ee")  ;; medium slate blue
      (cyberpunk-Synge-blue-2 "#6a5acd")  ;; slate blue
      (cyberpunk-Synge-blue-3 "#add8e6")  ;; light blue
      (cyberpunk-Synge-blue-4 "#b2dfee")  ;; LightBlue2
      (cyberpunk-Synge-blue-5 "#4c83ff")
      (cyberpunk-Synge-blue-6 "#96CBFE")
      (cyberpunk-Synge-blue-7 "#00ffff")
      (cyberpunk-Synge-blue-8 "#4F94CD")
      (cyberpunk-Synge-magenta "#dc8cc3")
      (cyberpunk-Synge-black (if (and cyberpunk-Synge-transparent-background
                                (not (display-graphic-p))
                                (eq system-type 'darwin))
                           "ARGBBB000000"
                         "#191920"))
      (cyberpunk-Synge-black-2 "#0C1021")
      (cyberpunk-Synge-black-3 "#0A0A0A")
      (cyberpunk-Synge-gray "#d3d3d3")
      (cyberpunk-Synge-gray-2 "#8B8989")
      (cyberpunk-Synge-gray-3 "#919191")
      (cyberpunk-Synge-gray-4 "#999999")
      (cyberpunk-Synge-gray-5 "#333333")
      (cyberpunk-Synge-gray-6 "#1A1A1A")
      (cyberpunk-Synge-gray-7 "#4D4D4D")
      (cyberpunk-Synge-gray-8 "#262626")
      (cyberpunk-Synge-white "#ffffff")
      (cyberpunk-Synge-white-2 "#F8F8F8")
      (cyberpunk-Synge-white-3 "#fffafa"))

 (custom-theme-set-faces
   'cyberpunk-Synge
   '(button ((t (:underline t))))
   `(link ((,class (:foreground ,cyberpunk-Synge-yellow :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,cyberpunk-Synge-yellow-2 :underline t :weight normal))))
   `(blue ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(bold ((,class (:bold t))))
   `(border-glyph ((,class (nil))))
   `(buffers-tab ((,class (:background ,cyberpunk-Synge-black-2 :foreground ,cyberpunk-Synge-white-2))))

   ;;; basic coloring
   `(default ((,class (:foreground ,cyberpunk-Synge-gray :background ,cyberpunk-Synge-black))))
   `(cursor ((,class (:background ,cyberpunk-Synge-fg))))
   `(escape-glyph-face ((,class (:foreground ,cyberpunk-Synge-red))))
   `(fringe ((,class (:foreground ,cyberpunk-Synge-fg :background ,cyberpunk-Synge-bg-1))))
   `(header-line ((,class (:foreground ,cyberpunk-Synge-yellow
                                       :background ,cyberpunk-Synge-bg-1
                                       :box (:line-width -1 :style released-button)))))
   `(highlight ((,class (:background ,cyberpunk-Synge-gray-5))))

   ;;; compilation
   `(compilation-column-face ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(compilation-enter-directory-face ((,class (:foreground ,cyberpunk-Synge-green))))
   `(compilation-error-face ((,class (:foreground ,cyberpunk-Synge-red-1 :weight bold :underline t))))
   `(compilation-face ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(compilation-info-face ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(compilation-info ((,class (:foreground ,cyberpunk-Synge-green+4 :underline t))))
   `(compilation-leave-directory-face ((,class (:foreground ,cyberpunk-Synge-green))))
   `(compilation-line-face ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(compilation-line-number ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(compilation-message-face ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(compilation-warning-face ((,class (:foreground ,cyberpunk-Synge-yellow-1 :weight bold :underline t))))

   ;;; grep
   `(grep-context-face ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-pink-1))))
   `(grep-error-face ((,class (:foreground ,cyberpunk-Synge-red :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-red))))
   `(grep-match-face ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-pink-1))))
   `(match ((,class (:background ,cyberpunk-Synge-black :foreground ,cyberpunk-Synge-pink-1))))


   ;;; multiple-cursors
   `(mc/cursor-face ((,class (:inverse-video nil, :background ,cyberpunk-Synge-pink :foreground ,cyberpunk-Synge-black))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-pink-1))))
   `(isearch-fail ((,class (:background ,cyberpunk-Synge-red-1))))

   `(lazy-highlight ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-yellow))))
   `(query-replace ((,class (:background ,cyberpunk-Synge-gray-5))))
   `(Highline-face ((,class (:background ,cyberpunk-Synge-green-1))))
   `(left-margin ((,class (nil))))
   `(toolbar ((,class (nil))))
   `(text-cursor ((,class (:background ,cyberpunk-Synge-yellow :foreground ,cyberpunk-Synge-black))))

   `(menu ((,class (:foreground ,cyberpunk-Synge-fg :background ,cyberpunk-Synge-bg))))
   `(minibuffer-prompt ((,class (:foreground ,cyberpunk-Synge-green+1 :background ,cyberpunk-Synge-black))))
   `(mode-line
     ((,class (:foreground ,cyberpunk-Synge-blue-5
                           :background ,cyberpunk-Synge-gray-5
                           :box (:line-width -1 :color ,cyberpunk-Synge-blue-5)))))
   ;; `(mode-line-buffer-id ((,class (:foreground ,cyberpunk-Synge-yellow :weight bold))))
   `(mode-line-inactive
     ((,class (:foreground ,cyberpunk-Synge-gray-7
                           :background ,cyberpunk-Synge-gray-6
                           :box (:line-width -1 :color ,cyberpunk-Synge-blue-5)))))
   `(region ((,class (:background ,cyberpunk-Synge-red-5))))
   `(secondary-selection ((,class (:background ,cyberpunk-Synge-bg+2))))
   `(trailing-whitespace ((,class (:background ,cyberpunk-Synge-red))))
   `(vertical-border ((,class (:foreground ,cyberpunk-Synge-gray-5 :background ,cyberpunk-Synge-black))))

   ;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,cyberpunk-Synge-blue-5))))
   `(font-lock-comment-face ((,class (:foreground ,cyberpunk-Synge-gray-2 :italic t))))
   ;; `(font-lock-comment-delimiter-face ((,class (:foreground ,cyberpunk-Synge-green))))
   `(font-lock-constant-face ((,class (:foreground ,cyberpunk-Synge-blue-6))))
   ;; `(font-lock-doc-face ((,class (:foreground ,cyberpunk-Synge-green+1))))
   `(font-lock-doc-face ((,class (:foreground ,cyberpunk-Synge-yellow-1))))
   `(font-lock-function-name-face ((,class (:foreground ,cyberpunk-Synge-pink-1))))
   `(font-lock-keyword-face ((,class (:foreground ,cyberpunk-Synge-blue-5))))
   ;; `(font-lock-negation-char-face ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(font-lock-preprocessor-face ((,class (:foreground ,cyberpunk-Synge-gray-3))))
   `(font-lock-string-face ((,class (:foreground ,cyberpunk-Synge-green+1))))
   `(font-lock-type-face ((,class (:foreground ,cyberpunk-Synge-green+3))))
   `(font-lock-variable-name-face ((,class (:foreground ,cyberpunk-Synge-pink))))
   `(font-lock-warning-face ((,class (:foreground ,cyberpunk-Synge-pink))))
   `(font-lock-reference-face ((,class (:foreground ,cyberpunk-Synge-gray))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,cyberpunk-Synge-yellow-4))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,cyberpunk-Synge-red))))

   `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

   `(gui-element ((,class (:background ,cyberpunk-Synge-gray-5 :foreground ,cyberpunk-Synge-blue-6))))

   ;;; newsticker
   ;; These are currently placeholders that probably look terrible.
   ;; Someone who uses newsticker is welcome to change these
   `(newsticker-date-face ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(newsticker-default-face ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(newsticker-enclosure-face ((,class (:foreground ,cyberpunk-Synge-green+3))))
   `(newsticker-extra-face ((,class (:foreground ,cyberpunk-Synge-bg+2 :height 0.8))))
   `(newsticker-feed-face ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(newsticker-immortal-item-face ((,class (:foreground ,cyberpunk-Synge-green))))
   `(newsticker-new-item-face ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(newsticker-obsolete-item-face ((,class (:foreground ,cyberpunk-Synge-red))))
   `(newsticker-old-item-face ((,class (:foreground ,cyberpunk-Synge-bg+3))))
   `(newsticker-statistics-face ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(newsticker-treeview-face ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(newsticker-treeview-immortal-face ((,class (:foreground ,cyberpunk-Synge-green))))
   `(newsticker-treeview-listwindow-face ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(newsticker-treeview-new-face ((,class (:foreground ,cyberpunk-Synge-blue :weight bold))))
   `(newsticker-treeview-obsolete-face ((,class (:foreground ,cyberpunk-Synge-red))))
   `(newsticker-treeview-old-face ((,class (:foreground ,cyberpunk-Synge-bg+3))))
   `(newsticker-treeview-selection-face ((,class (:foreground ,cyberpunk-Synge-yellow))))

   ;;; external

   ;; full-ack
   `(ack-separator ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(ack-file ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(ack-line ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(ack-match ((,class (:foreground ,cyberpunk-Synge-orange :background ,cyberpunk-Synge-bg-1 :weigth bold))))

   ;; auctex
   `(font-latex-bold ((,class (:inherit bold))))
   `(font-latex-warning ((,class (:inherit font-lock-warning))))
   `(font-latex-sedate ((,class (:foreground ,cyberpunk-Synge-yellow :weight bold))))
   `(font-latex-string ((,class (:foreground ,cyberpunk-Synge-green))))
   `(font-latex-title-4 ((,class (:inherit variable-pitch :weight bold))))
   `(font-latex-sectioning-0 ((,class (:foreground ,cyberpunk-Synge-blue :background ,cyberpunk-Synge-black :scale 1.5))))
   `(font-latex-sectioning-1 ((,class (:foreground ,cyberpunk-Synge-blue :background ,cyberpunk-Synge-black :scale 1.5))))

   ;; auto-complete
   `(ac-completion-face ((,class (:background ,cyberpunk-Synge-gray-2 :underline t))))
   `(ac-candidate-face ((,class (:background ,cyberpunk-Synge-gray-4 :foreground ,cyberpunk-Synge-black))))
   `(ac-selection-face ((,class (:background ,cyberpunk-Synge-pink-1 :foreground ,cyberpunk-Synge-black))))
   `(popup-tip-face ((,class (:background ,cyberpunk-Synge-gray-5 :foreground ,cyberpunk-Synge-white))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,cyberpunk-Synge-black-3))))
   `(popup-scroll-bar-background-face ((,class (:background ,cyberpunk-Synge-gray-5))))
   `(popup-isearch-match ((,class (:background ,cyberpunk-Synge-black :foreground ,cyberpunk-Synge-pink-1))))

   `(window-number-face ((,class (:background ,cyberpunk-Synge-gray-6 :foreground ,cyberpunk-Synge-blue-5))))

   ;; company-mode
   `(company-tooltip ((,class (:background ,cyberpunk-Synge-gray-2 :foreground ,cyberpunk-Synge-yellow))))
   `(company-tooltip-common ((,class (:inherit company-tooltip :foreground ,cyberpunk-Synge-blue))))
   `(company-tooltip-common-selection ((,class (:inherit company-tooltip-selection :foreground ,cyberpunk-Synge-blue))))
   `(company-tooltip-selection ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-pink-1))))
   `(company-tooltip-annotation ((,class (:inherit company-tooltip :foreground ,cyberpunk-Synge-black-3))))
   `(company-scrollbar-fg ((,class (:background ,cyberpunk-Synge-black-3))))
   `(company-scrollbar-bg ((,class (:background ,cyberpunk-Synge-gray-5))))
   `(company-preview ((,class (:foreground ,cyberpunk-Synge-gray :background ,cyberpunk-Synge-pink-1))))
   `(company-preview-common ((,class (:foreground ,cyberpunk-Synge-gray :background ,cyberpunk-Synge-pink-1))))

   ;; diff
   `(diff-added ((,class (:foreground ,cyberpunk-Synge-green))))
   `(diff-changed ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(diff-removed ((,class (:foreground ,cyberpunk-Synge-red))))
   `(diff-header ((,class (:background ,cyberpunk-Synge-bg+2))))
   `(diff-file-header ((,class (:background ,cyberpunk-Synge-bg+2 :foreground ,cyberpunk-Synge-fg :bold t))))

   ;; ediff
   `(ediff-current-diff-Ancestor ((,class (:foreground ,cyberpunk-Synge-fg :background ,cyberpunk-Synge-pink))))
   `(ediff-current-diff-A ((,class (:foreground ,cyberpunk-Synge-fg :background ,cyberpunk-Synge-bg-05))))
   `(ediff-current-diff-B ((,class (:foreground ,cyberpunk-Synge-fg :background ,cyberpunk-Synge-bg+1))))
   `(ediff-current-diff-C ((,class (:foreground ,cyberpunk-Synge-fg :background ,cyberpunk-Synge-bg+2))))
   `(ediff-even-diff-Ancestor ((,class (:foreground ,cyberpunk-Synge-white :background ,cyberpunk-Synge-bg-05))))
   `(ediff-even-diff-A ((,class (:foreground ,cyberpunk-Synge-white :background ,cyberpunk-Synge-bg+1))))
   `(ediff-even-diff-B ((,class (:foreground ,cyberpunk-Synge-white :background ,cyberpunk-Synge-bg+2))))
   `(ediff-even-diff-C ((,class (:foreground ,cyberpunk-Synge-white :background ,cyberpunk-Synge-bg+3))))
   `(ediff-fine-diff-Ancestor ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-pink))))
   `(ediff-fine-diff-A ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-blue-5))))
   `(ediff-fine-diff-B ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-blue-5))))
   `(ediff-fine-diff-C ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-blue-5))))
   `(ediff-odd-diff-Ancestor ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-gray-2))))
   `(ediff-odd-diff-A ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-gray-3))))
   `(ediff-odd-diff-B ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-gray-4))))
   `(ediff-odd-diff-C ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-gray))))

   ;; ert
   `(ert-test-result-expected ((,class (:foreground ,cyberpunk-Synge-green+4 :background ,cyberpunk-Synge-bg))))
   `(ert-test-result-unexpected ((,class (:foreground ,cyberpunk-Synge-red :background ,cyberpunk-Synge-bg))))

   ;; eshell
   `(eshell-prompt ((,class (:foreground ,cyberpunk-Synge-blue-5 :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,cyberpunk-Synge-magenta :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,cyberpunk-Synge-blue+1 :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,cyberpunk-Synge-red+1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:foreground ,cyberpunk-Synge-yellow :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,cyberpunk-Synge-cyan :weight bold))))

   ;; flymake
   `(flymake-errline ((,class (:foreground ,cyberpunk-Synge-red-1 :weight bold :underline t))))
   `(flymake-warnline ((,class (:foreground ,cyberpunk-Synge-yellow-1 :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate ((,class (:foreground ,cyberpunk-Synge-yellow-1 :weight bold :underline t))))
   `(flyspell-incorrect ((,class (:foreground ,cyberpunk-Synge-orange-2 :weight bold :underline t))))

   ;; erc
   `(erc-action-face ((,class (:inherit erc-default-face))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,cyberpunk-Synge-blue :weight bold))))
   `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
   `(erc-default-face ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(erc-direct-msg-face ((,class (:inherit erc-default))))
   `(erc-error-face ((,class (:inherit font-lock-warning))))
   `(erc-fool-face ((,class (:inherit erc-default))))
   `(erc-highlight-face ((,class (:inherit hover-highlight))))
   `(erc-input-face ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(erc-keyword-face ((,class (:foreground ,cyberpunk-Synge-blue :weight bold))))
   `(erc-nick-default-face ((,class (:foreground ,cyberpunk-Synge-yellow :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,cyberpunk-Synge-red :weigth bold))))
   `(erc-nick-msg-face ((,class (:inherit erc-default))))
   `(erc-notice-face ((,class (:foreground ,cyberpunk-Synge-green))))
   `(erc-pal-face ((,class (:foreground ,cyberpunk-Synge-orange :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,cyberpunk-Synge-orange :background ,cyberpunk-Synge-bg :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,cyberpunk-Synge-green+1))))
   `(erc-underline-face ((t (:underline t))))

   ;; gnus
   `(gnus-group-mail-1 ((,class (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty ((,class (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2 ((,class (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty ((,class (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3 ((,class (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty ((,class (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4 ((,class (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty ((,class (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5 ((,class (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty ((,class (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6 ((,class (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty ((,class (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low ((,class (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1 ((,class (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2 ((,class (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3 ((,class (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4 ((,class (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5 ((,class (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6 ((,class (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low ((,class (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content ((,class (:inherit message-header-other))))
   `(gnus-header-from ((,class (:inherit message-header-from))))
   `(gnus-header-name ((,class (:inherit message-header-name))))
   `(gnus-header-newsgroups ((,class (:inherit message-header-other))))
   `(gnus-header-subject ((,class (:inherit message-header-subject))))
   `(gnus-summary-cancelled ((,class (:foreground ,cyberpunk-Synge-orange))))
   `(gnus-summary-high-ancient ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(gnus-summary-high-read ((,class (:foreground ,cyberpunk-Synge-green :weight bold))))
   `(gnus-summary-high-ticked ((,class (:foreground ,cyberpunk-Synge-orange :weight bold))))
   `(gnus-summary-high-unread ((,class (:foreground ,cyberpunk-Synge-fg :weight bold))))
   `(gnus-summary-low-ancient ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(gnus-summary-low-read ((t (:foreground ,cyberpunk-Synge-green))))
   `(gnus-summary-low-ticked ((,class (:foreground ,cyberpunk-Synge-orange :weight bold))))
   `(gnus-summary-low-unread ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,cyberpunk-Synge-blue+1))))
   `(gnus-summary-normal-read ((,class (:foreground ,cyberpunk-Synge-green))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,cyberpunk-Synge-orange :weight bold))))
   `(gnus-summary-normal-unread ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(gnus-summary-selected ((,class (:foreground ,cyberpunk-Synge-yellow :weight bold))))
   `(gnus-cite-1 ((,class (:foreground ,cyberpunk-Synge-yellow-2))))
   `(gnus-cite-10 ((,class (:foreground ,cyberpunk-Synge-yellow-1))))
   `(gnus-cite-11 ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(gnus-cite-2 ((,class (:foreground ,cyberpunk-Synge-blue-1))))
   `(gnus-cite-3 ((,class (:foreground ,cyberpunk-Synge-blue-2))))
   `(gnus-cite-4 ((,class (:foreground ,cyberpunk-Synge-green+2))))
   `(gnus-cite-5 ((,class (:foreground ,cyberpunk-Synge-green+1))))
   `(gnus-cite-6 ((,class (:foreground ,cyberpunk-Synge-green))))
   `(gnus-cite-7 ((,class (:foreground ,cyberpunk-Synge-red))))
   `(gnus-cite-8 ((,class (:foreground ,cyberpunk-Synge-red-1))))
   `(gnus-cite-9 ((,class (:foreground ,cyberpunk-Synge-red-2))))
   `(gnus-group-news-1-empty ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(gnus-group-news-2-empty ((,class (:foreground ,cyberpunk-Synge-green+3))))
   `(gnus-group-news-3-empty ((,class (:foreground ,cyberpunk-Synge-green+1))))
   `(gnus-group-news-4-empty ((,class (:foreground ,cyberpunk-Synge-blue-2))))
   `(gnus-group-news-5-empty ((,class (:foreground ,cyberpunk-Synge-blue-3))))
   `(gnus-group-news-6-empty ((,class (:foreground ,cyberpunk-Synge-bg+2))))
   `(gnus-group-news-low-empty ((,class (:foreground ,cyberpunk-Synge-bg+2))))
   `(gnus-signature ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(gnus-x ((,class (:background ,cyberpunk-Synge-fg :foreground ,cyberpunk-Synge-bg))))

   ;; helm
   `(helm-header
     ((,class (:foreground ,cyberpunk-Synge-green
                           :background ,cyberpunk-Synge-bg
                           :underline nil
                           :box nil))))
   `(helm-source-header
     ((,class (:foreground ,cyberpunk-Synge-yellow
                           :background ,cyberpunk-Synge-bg-1
                           :underline nil
                           :weight bold
                           :box (:line-width -1 :style released-button)))))
   `(helm-selection ((,class (:background ,cyberpunk-Synge-bg-1 :underline nil))))
   `(helm-selection-line ((,class (:background ,cyberpunk-Synge-bg+1))))
   `(helm-visible-mark ((,class (:foreground ,cyberpunk-Synge-bg :background ,cyberpunk-Synge-yellow-2))))
   `(helm-candidate-number ((,class (:foreground ,cyberpunk-Synge-green+4 :background ,cyberpunk-Synge-bg-1))))
   `(helm-ff-directory ((,class (:foreground ,cyberpunk-Synge-pink :background ,cyberpunk-Synge-bg))))
   `(helm-ff-dotted-directory ((,class (:foreground ,cyberpunk-Synge-pink :background ,cyberpunk-Synge-bg))))

   ;; hl-line-mode
   `(hl-sexp-face ((,class (:background ,cyberpunk-Synge-gray-5))))
   `(hl-line-face ((,class (:background ,cyberpunk-Synge-gray-5))))

   ;; ido-mode
   `(ido-first-match ((,class (:foreground ,cyberpunk-Synge-pink-1 :background ,cyberpunk-Synge-black))))
   `(ido-only-match ((,class (:foreground ,cyberpunk-Synge-pink-1 :background ,cyberpunk-Synge-black))))
   `(ido-subdir ((,class (:foreground ,cyberpunk-Synge-gray-4 :backgroun ,cyberpunk-Synge-black))))
   `(ido-indicator ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-pink-1))))

   ;; js2-mode
   `(js2-warning-face ((,class (:underline ,cyberpunk-Synge-orange))))
   `(js2-error-face ((,class (:foreground ,cyberpunk-Synge-red :weight bold))))
   `(js2-jsdoc-tag-face ((,class (:foreground ,cyberpunk-Synge-green-1))))
   `(js2-jsdoc-type-face ((,class (:foreground ,cyberpunk-Synge-green+2))))
   `(js2-jsdoc-value-face ((,class (:foreground ,cyberpunk-Synge-green+3))))
   `(js2-function-param-face ((,class (:foreground ,cyberpunk-Synge-green+3))))
   `(js2-external-variable-face ((,class (:foreground ,cyberpunk-Synge-orange))))

   ;; jabber-mode
   `(jabber-roster-user-away ((,class (:foreground ,cyberpunk-Synge-green+2))))
   `(jabber-roster-user-online ((,class (:foreground ,cyberpunk-Synge-blue-1))))
   `(jabber-roster-user-dnd ((,class (:foreground ,cyberpunk-Synge-red+1))))
   `(jabber-rare-time-face ((,class (:foreground ,cyberpunk-Synge-green+1))))
   `(jabber-chat-prompt-local ((,class (:foreground ,cyberpunk-Synge-blue-1))))
   `(jabber-chat-prompt-foreign ((,class (:foreground ,cyberpunk-Synge-red+1))))
   `(jabber-activity-face((,class (:foreground ,cyberpunk-Synge-red+1))))
   `(jabber-activity-personal-face ((,class (:foreground ,cyberpunk-Synge-blue+1))))
   `(jabber-title-small ((,class (:height 1.1 :weight bold))))
   `(jabber-title-medium ((,class (:height 1.2 :weight bold))))
   `(jabber-title-large ((,class (:height 1.3 :weight bold))))

   ;; linum-mode
   `(linum ((,class (:foreground ,cyberpunk-Synge-green+2 :background ,cyberpunk-Synge-bg))))

   ;;linum-relative
   `(linum-relative-current-face ((,class (:inherit linum :foreground ,cyberpunk-Synge-white :weight bold))))

   ;; magit
   ;; magit headings and diffs
   `(magit-section-highlight ((t (:background ,cyberpunk-Synge-bg+1))))
   `(magit-section-heading ((t (:foreground ,cyberpunk-Synge-blue+1 :weight bold))))
   `(magit-section-heading-selection ((t (:foreground ,cyberpunk-Synge-red+1 :weight bold))))
   `(magit-diff-file-heading           ((t (:weight bold))))
   `(magit-diff-file-heading-highlight ((t (:background ,cyberpunk-Synge-bg+2  :weight bold))))
   `(magit-diff-file-heading-selection ((t (:background ,cyberpunk-Synge-bg+2
                                            :foreground ,cyberpunk-Synge-blue-6 :weight bold))))
   `(magit-diff-hunk-heading           ((t (:background ,cyberpunk-Synge-bg))))
   `(magit-diff-hunk-heading-highlight ((t (:background ,cyberpunk-Synge-bg+1))))
   `(magit-diff-hunk-heading-selection ((t (:background ,cyberpunk-Synge-bg+1
                                            :foreground ,cyberpunk-Synge-blue-6))))
   `(magit-diff-lines-heading          ((t (:background ,cyberpunk-Synge-blue-6
                                            :foreground ,cyberpunk-Synge-bg+1))))
   `(magit-diff-added                  ((t (:foreground ,cyberpunk-Synge-blue-5))))
   `(magit-diff-added-highlight        ((t (:inherit magit-diff-added :weight bold))))
   `(magit-diff-removed                ((t (:foreground ,cyberpunk-Synge-magenta))))
   `(magit-diff-removed-highlight      ((t (:inherit magit-diff-removed :weight bold))))
   `(magit-diff-context                ((t (:foreground ,cyberpunk-Synge-gray))))
   `(magit-diff-context-highlight      ((t (:inherit magit-diff-context :weight bold))))
   `(magit-diffstat-added   ((t (:inherit magit-diff-added))))
   `(magit-diffstat-removed ((t (:inherit magit-diff-removed))))
   ;; magit popup
   `(magit-popup-heading             ((t (:foreground ,cyberpunk-Synge-pink-1  :weight bold))))
   `(magit-popup-key                 ((t (:foreground ,cyberpunk-Synge-blue+1 :weight bold))))
   `(magit-popup-argument            ((t (:foreground ,cyberpunk-Synge-blue-4   :weight bold))))
   `(magit-popup-disabled-argument   ((t (:foreground ,cyberpunk-Synge-fg    :weight normal))))
   `(magit-popup-option-value        ((t (:foreground ,cyberpunk-Synge-blue-2  :weight bold))))
   ;; ;; magit process
   `(magit-process-ok    ((t (:foreground ,cyberpunk-Synge-green+1  :weight bold))))
   `(magit-process-ng    ((t (:foreground ,cyberpunk-Synge-pink-2    :weight bold))))
   ;; ;; magit log
   `(magit-log-author    ((t (:foreground ,cyberpunk-Synge-pink))))
   `(magit-log-date      ((t (:foreground ,cyberpunk-Synge-gray))))
   `(magit-log-graph     ((t (:foreground ,cyberpunk-Synge-white-2))))
   ;; ;; magit sequence
   `(magit-sequence-pick ((t (:foreground ,cyberpunk-Synge-magenta))))
   `(magit-sequence-stop ((t (:foreground ,cyberpunk-Synge-green+1))))
   `(magit-sequence-part ((t (:foreground ,cyberpunk-Synge-pink-1))))
   `(magit-sequence-head ((t (:foreground ,cyberpunk-Synge-blue+1))))
   `(magit-sequence-drop ((t (:foreground ,cyberpunk-Synge-orange))))
   `(magit-sequence-done ((t (:foreground ,cyberpunk-Synge-gray-2))))
   `(magit-sequence-onto ((t (:foreground ,cyberpunk-Synge-gray-2))))
   ;; ;; magit bisect
   `(magit-bisect-good ((t (:foreground ,cyberpunk-Synge-green+1))))
   `(magit-bisect-skip ((t (:foreground ,cyberpunk-Synge-pink-1))))
   `(magit-bisect-bad  ((t (:foreground ,cyberpunk-Synge-orange))))
   ;; ;; magit blame
   `(magit-blame-heading ((t (:background ,cyberpunk-Synge-bg+1 :foreground ,cyberpunk-Synge-green))))
   `(magit-blame-hash    ((t (:background ,cyberpunk-Synge-bg+1 :foreground ,cyberpunk-Synge-green))))
   `(magit-blame-name    ((t (:background ,cyberpunk-Synge-bg+1 :foreground ,cyberpunk-Synge-pink-1))))
   `(magit-blame-date    ((t (:background ,cyberpunk-Synge-bg+1 :foreground ,cyberpunk-Synge-yellow-1))))
   `(magit-blame-summary ((t (:background ,cyberpunk-Synge-bg+1 :foreground ,cyberpunk-Synge-blue-4
                                          :weight bold))))
   ;; ;; magit references etc
   `(magit-dimmed         ((t (:foreground ,cyberpunk-Synge-bg+3))))
   `(magit-hash           ((t (:foreground ,cyberpunk-Synge-bg+1))))
   `(magit-tag            ((t (:foreground ,cyberpunk-Synge-pink-1 :weight bold))))
   `(magit-branch-remote  ((t (:foreground ,cyberpunk-Synge-green+2  :weight bold))))
   `(magit-branch-local   ((t (:foreground ,cyberpunk-Synge-blue+1   :weight bold))))
   `(magit-branch-current ((t (:foreground ,cyberpunk-Synge-green   :weight bold :box t))))
   `(magit-head           ((t (:foreground ,cyberpunk-Synge-blue   :weight bold))))
   `(magit-refname        ((t (:background ,cyberpunk-Synge-bg+2 :foreground ,cyberpunk-Synge-fg :weight bold))))
   `(magit-refname-stash  ((t (:background ,cyberpunk-Synge-bg+2 :foreground ,cyberpunk-Synge-fg :weight bold))))
   `(magit-refname-wip    ((t (:background ,cyberpunk-Synge-bg+2 :foreground ,cyberpunk-Synge-fg :weight bold))))
   `(magit-signature-good      ((t (:foreground ,cyberpunk-Synge-green))))
   `(magit-signature-bad       ((t (:foreground ,cyberpunk-Synge-red))))
   `(magit-signature-untrusted ((t (:foreground ,cyberpunk-Synge-yellow))))
   `(magit-cherry-unmatched    ((t (:foreground ,cyberpunk-Synge-cyan))))
   `(magit-cherry-equivalent   ((t (:foreground ,cyberpunk-Synge-magenta))))
   `(magit-reflog-commit       ((t (:foreground ,cyberpunk-Synge-green))))
   `(magit-reflog-amend        ((t (:foreground ,cyberpunk-Synge-magenta))))
   `(magit-reflog-merge        ((t (:foreground ,cyberpunk-Synge-green))))
   `(magit-reflog-checkout     ((t (:foreground ,cyberpunk-Synge-blue))))
   `(magit-reflog-reset        ((t (:foreground ,cyberpunk-Synge-red))))
   `(magit-reflog-rebase       ((t (:foreground ,cyberpunk-Synge-magenta))))
   `(magit-reflog-cherry-pick  ((t (:foreground ,cyberpunk-Synge-green))))
   `(magit-reflog-remote       ((t (:foreground ,cyberpunk-Synge-cyan))))
   `(magit-reflog-other        ((t (:foreground ,cyberpunk-Synge-cyan))))

   `(eval-sexp-fu-flash ((,class (:background ,cyberpunk-Synge-gray-8 :foreground ,cyberpunk-Synge-pink-2))))

   ;; message-mode
   `(message-cited-text ((,class (:inherit font-lock-comment))))
   `(message-header-name ((,class (:foreground ,cyberpunk-Synge-blue-5))))
   `(message-header-other ((,class (:foreground ,cyberpunk-Synge-green))))
   `(message-header-to ((,class (:foreground ,cyberpunk-Synge-pink-1 :weight bold))))
   `(message-header-from ((,class (:foreground ,cyberpunk-Synge-yellow :weight bold))))
   `(message-header-cc ((,class (:foreground ,cyberpunk-Synge-yellow :weight bold))))
   `(message-header-newsgroups ((,class (:foreground ,cyberpunk-Synge-yellow :weight bold))))
   `(message-header-subject ((,class (:foreground ,cyberpunk-Synge-orange :weight bold))))
   `(message-header-xheader ((,class (:foreground ,cyberpunk-Synge-green))))
   `(message-mml ((,class (:foreground ,cyberpunk-Synge-yellow :weight bold))))
   `(message-separator ((,class (:inherit font-lock-comment))))

   ;; mew
   `(mew-face-header-subject ((,class (:foreground ,cyberpunk-Synge-orange))))
   `(mew-face-header-from ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(mew-face-header-date ((,class (:foreground ,cyberpunk-Synge-green))))
   `(mew-face-header-to ((,class (:foreground ,cyberpunk-Synge-red))))
   `(mew-face-header-key ((,class (:foreground ,cyberpunk-Synge-green))))
   `(mew-face-header-private ((,class (:foreground ,cyberpunk-Synge-green))))
   `(mew-face-header-important ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(mew-face-header-marginal ((,class (:foreground ,cyberpunk-Synge-fg :weight bold))))
   `(mew-face-header-warning ((,class (:foreground ,cyberpunk-Synge-red))))
   `(mew-face-header-xmew ((,class (:foreground ,cyberpunk-Synge-green))))
   `(mew-face-header-xmew-bad ((,class (:foreground ,cyberpunk-Synge-red))))
   `(mew-face-body-url ((,class (:foreground ,cyberpunk-Synge-orange))))
   `(mew-face-body-comment ((,class (:foreground ,cyberpunk-Synge-fg :slant italic))))
   `(mew-face-body-cite1 ((,class (:foreground ,cyberpunk-Synge-green))))
   `(mew-face-body-cite2 ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(mew-face-body-cite3 ((,class (:foreground ,cyberpunk-Synge-orange))))
   `(mew-face-body-cite4 ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(mew-face-body-cite5 ((,class (:foreground ,cyberpunk-Synge-red))))
   `(mew-face-mark-review ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(mew-face-mark-escape ((,class (:foreground ,cyberpunk-Synge-green))))
   `(mew-face-mark-delete ((,class (:foreground ,cyberpunk-Synge-red))))
   `(mew-face-mark-unlink ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(mew-face-mark-refile ((,class (:foreground ,cyberpunk-Synge-green))))
   `(mew-face-mark-unread ((,class (:foreground ,cyberpunk-Synge-red-2))))
   `(mew-face-eof-message ((,class (:foreground ,cyberpunk-Synge-green))))
   `(mew-face-eof-part ((,class (:foreground ,cyberpunk-Synge-yellow))))

   ;; mic-paren
   `(paren-face-match ((,class (:foreground ,cyberpunk-Synge-cyan :background ,cyberpunk-Synge-bg :weight bold))))
   `(paren-face-mismatch ((,class (:foreground ,cyberpunk-Synge-bg :background ,cyberpunk-Synge-magenta :weight bold))))
   `(paren-face-no-match ((,class (:foreground ,cyberpunk-Synge-bg :background ,cyberpunk-Synge-red :weight bold))))

   ;; nav
   `(nav-face-heading ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(nav-face-button-num ((,class (:foreground ,cyberpunk-Synge-cyan))))
   `(nav-face-dir ((,class (:foreground ,cyberpunk-Synge-green))))
   `(nav-face-hdir ((,class (:foreground ,cyberpunk-Synge-red))))
   `(nav-face-file ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(nav-face-hfile ((,class (:foreground ,cyberpunk-Synge-red-4))))

   ;; mumamo
   `(mumamo-background-chunk-major ((,class (:background ,cyberpunk-Synge-black))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,cyberpunk-Synge-black))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,cyberpunk-Synge-bg+2))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,cyberpunk-Synge-bg+3))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,cyberpunk-Synge-bg+1))))

   ;; org-mode
   `(org-document-title ((,class (:foreground ,cyberpunk-Synge-blue-3 :background ,cyberpunk-Synge-black :weight bold :height 1.5))))
   `(org-document-info ((,class (:foreground ,cyberpunk-Synge-blue-3 :background ,cyberpunk-Synge-black :weight bold))))
   `(org-document-info-keyword ((,class (:foreground ,cyberpunk-Synge-gray-2 :background ,cyberpunk-Synge-black))))
   `(org-agenda-date-today
     ((,class (:foreground ,cyberpunk-Synge-orange-2 :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((,class (:inherit font-lock-comment-face))))
   `(org-archived ((,class (:slant italic))))
   `(org-checkbox ((,class (:background ,cyberpunk-Synge-gray-2 :foreground ,cyberpunk-Synge-black
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((,class (:foreground ,cyberpunk-Synge-blue-7 :underline t))))
   `(org-done ((,class (:bold t :weight bold :foreground ,cyberpunk-Synge-green
                              :box (:line-width 1 :style none)))))
   `(org-todo ((,class (:bold t :foreground ,cyberpunk-Synge-orange :weight bold
                              :box (:line-width 1 :style none)))))
   `(org-level-1 ((,class (:foreground ,cyberpunk-Synge-pink-1 :height 1.3))))
   `(org-level-2 ((,class (:foreground ,cyberpunk-Synge-yellow :height 1.2))))
   `(org-level-3 ((,class (:foreground ,cyberpunk-Synge-blue-5 :height 1.1))))
   `(org-level-4 ((,class (:foreground ,cyberpunk-Synge-green))))
   `(org-level-5 ((,class (:foreground ,cyberpunk-Synge-orange))))
   `(org-level-6 ((,class (:foreground ,cyberpunk-Synge-pink))))
   `(org-level-7 ((,class (:foreground ,cyberpunk-Synge-green+3))))
   `(org-level-8 ((,class (:foreground ,cyberpunk-Synge-blue-1))))
   `(org-link ((,class (:foreground ,cyberpunk-Synge-blue-6 :underline t))))
   `(org-tag ((,class (:bold t :weight bold))))
   `(org-column ((,class (:background ,cyberpunk-Synge-gray-7 :foreground ,cyberpunk-Synge-black))))
   `(org-column-title ((,class (:background ,cyberpunk-Synge-gray-7 :underline t :weight bold))))
   `(org-block ((,class (:foreground ,cyberpunk-Synge-fg :background ,cyberpunk-Synge-bg-05))))
   `(org-block-begin-line
     ((,class (:foreground "#008ED1" :background ,cyberpunk-Synge-bg-1))))
   `(org-block-background ((,class (:background ,cyberpunk-Synge-bg-05))))
   `(org-block-end-line
     ((,class (:foreground "#008ED1" :background ,cyberpunk-Synge-bg-1))))

   ;; `(org-deadline-announce ((,class (:foreground ,cyberpunk-Synge-red-1))))
   ;; `(org-scheduled ((,class (:foreground ,cyberpunk-Synge-green+4))))
   ;; `(org-scheduled-previously ((,class (:foreground ,cyberpunk-Synge-red-4))))
   ;; `(org-scheduled-today ((,class (:foreground ,cyberpunk-Synge-blue+1))))
   ;; `(org-special-keyword ((,class (:foreground ,cyberpunk-Synge-yellow-1))))
   ;; `(org-table ((,class (:foreground ,cyberpunk-Synge-green+2))))
   ;; `(org-time-grid ((,class (:foreground ,cyberpunk-Synge-orange))))
   ;; `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
   ;; `(org-warning ((,class (:bold t :foreground ,cyberpunk-Synge-red :weight bold :underline nil))))
   ;; `(org-formula ((,class (:foreground ,cyberpunk-Synge-yellow-2))))
   ;; `(org-headline-done ((,class (:foreground ,cyberpunk-Synge-green+3))))
   ;; `(org-hide ((,class (:foreground ,cyberpunk-Synge-bg-1))))

   ;; outline
   `(outline-8 ((,class (:inherit default))))
   `(outline-7 ((,class (:inherit outline-8 :height 1.0))))
   `(outline-6 ((,class (:inherit outline-7 :height 1.0))))
   `(outline-5 ((,class (:inherit outline-6 :height 1.0))))
   `(outline-4 ((,class (:inherit outline-5 :height 1.0))))
   `(outline-3 ((,class (:inherit outline-4 :height 1.0))))
   `(outline-2 ((,class (:inherit outline-3 :height 1.0))))
   `(outline-1 ((,class (:inherit outline-2 :height 1.0))))

   ;; emms
   `(emms-browser-year/genre-face ((,class (:foreground ,cyberpunk-Synge-blue-3 :height 1.0))))
   `(emms-browser-artist-face ((,class (:foreground ,cyberpunk-Synge-pink-1 :height 1.0))))
   `(emms-browser-composer-face ((,class (:foreground ,cyberpunk-Synge-blue-3 :height 1.0))))
   `(emms-browser-performer-face ((,class (:foreground ,cyberpunk-Synge-blue-3 :height 1.0))))
   `(emms-browser-album-face ((,class (:foreground ,cyberpunk-Synge-yellow :height 1.0))))
   `(emms-browser-track-face ((,class (:foreground ,cyberpunk-Synge-blue-5 :height 1.0))))

   ;; Calfw
   `(cfw:face-title ((,class (:foreground ,cyberpunk-Synge-pink-1 :weight bold :height 1.8))))
   `(cfw:face-header ((,class (:foreground ,cyberpunk-Synge-yellow-5 :weight bold))))
   `(cfw:face-sunday ((,class (:foreground ,cyberpunk-Synge-red :weight bold))))
   `(cfw:face-saturday ((,class (:foreground ,cyberpunk-Synge-green :weight bold))))
   `(cfw:face-holiday ((,class (:foreground ,cyberpunk-Synge-pink-2 :weight bold))))
   `(cfw:face-grid ((,class (:foreground ,cyberpunk-Synge-gray-3))))
   `(cfw:face-default-content ((,class (:foreground ,cyberpunk-Synge-cyan))))
   `(cfw:face-periods ((,class (:foreground ,cyberpunk-Synge-cyan :weight bold))))
   `(cfw:face-day-title ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(cfw:face-default-day ((,class (:foreground ,cyberpunk-Synge-fg :weight bold))))
   `(cfw:face-annotation ((,class (:foreground ,cyberpunk-Synge-gray))))
   `(cfw:face-disable ((,class (:foreground ,cyberpunk-Synge-gray-2 :weight bold))))
   `(cfw:face-today-title ((,class (:foreground ,cyberpunk-Synge-blue :background ,cyberpunk-Synge-magenta))))
   `(cfw:face-today ((,class (:foreground ,cyberpunk-Synge-fg :weight bold))))
   `(cfw:face-select ((,class (:background ,cyberpunk-Synge-bg+2))))
   `(cfw:face-toolbar ((,class (:background ,cyberpunk-Synge-blue-8))))
   `(cfw:face-toolbar-button-off ((,class (:foreground ,cyberpunk-Synge-white :background ,cyberpunk-Synge-blue-8 :weight bold))))
   `(cfw:face-toolbar-button-on ((,class (:foreground ,cyberpunk-Synge-white :background ,cyberpunk-Synge-orange-1 :weight bold))))

   ;; racket-mode
   `(racket-keyword-argument-face ((t (:inherit font-lock-constant-face))))
   `(racket-selfeval-face ((t (:inherit font-lock-type-face))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,cyberpunk-Synge-red-1))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,cyberpunk-Synge-green-2))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,cyberpunk-Synge-pink-1))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,cyberpunk-Synge-green))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,cyberpunk-Synge-blue-3))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,cyberpunk-Synge-orange))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,cyberpunk-Synge-blue-2))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,cyberpunk-Synge-gray))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,cyberpunk-Synge-white))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,cyberpunk-Synge-blue+1))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,cyberpunk-Synge-red-4))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((,class (:foreground ,cyberpunk-Synge-green))))
   `(rpm-spec-doc-face ((,class (:foreground ,cyberpunk-Synge-green))))
   `(rpm-spec-ghost-face ((,class (:foreground ,cyberpunk-Synge-red))))
   `(rpm-spec-macro-face ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,cyberpunk-Synge-red))))
   `(rpm-spec-package-face ((,class (:foreground ,cyberpunk-Synge-red))))
   `(rpm-spec-section-face ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(rpm-spec-var-face ((,class (:foreground ,cyberpunk-Synge-red))))

   ;; rst-mode
   `(rst-level-1-face ((,class (:foreground ,cyberpunk-Synge-orange))))
   `(rst-level-2-face ((,class (:foreground ,cyberpunk-Synge-green+1))))
   `(rst-level-3-face ((,class (:foreground ,cyberpunk-Synge-blue-1))))
   `(rst-level-4-face ((,class (:foreground ,cyberpunk-Synge-yellow-2))))
   `(rst-level-5-face ((,class (:foreground ,cyberpunk-Synge-cyan))))
   `(rst-level-6-face ((,class (:foreground ,cyberpunk-Synge-green-1))))

   ;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,cyberpunk-Synge-red-3 :background ,cyberpunk-Synge-black))))
   `(show-paren-match ((,class (:foreground ,cyberpunk-Synge-black :background ,cyberpunk-Synge-pink-1))))

   `(naeu-green-face ((,class (:foreground ,cyberpunk-Synge-green :background ,cyberpunk-Synge-black))))
   `(naeu-pink-face ((,class (:foreground ,cyberpunk-Synge-pink-1 :background ,cyberpunk-Synge-black))))
   `(naeu-blue-face ((,class (:foreground ,cyberpunk-Synge-blue-1 :background ,cyberpunk-Synge-black))))
   `(naeu-orange-face ((,class (:foreground ,cyberpunk-Synge-yellow-1 :background ,cyberpunk-Synge-black))))
   `(naeu-red-face ((,class (:foreground ,cyberpunk-Synge-orange :background ,cyberpunk-Synge-black))))
   `(naeu-grey-face ((,class (:foreground ,cyberpunk-Synge-gray-7 :background ,cyberpunk-Synge-black))))

   ;; SLIME
   `(slime-repl-inputed-output-face ((,class (:foreground ,cyberpunk-Synge-red))))

  ;;; ansi-term
   `(term-color-black ((,class (:foreground ,cyberpunk-Synge-bg
                                            :background ,cyberpunk-Synge-bg-1))))
   `(term-color-red ((,class (:foreground ,cyberpunk-Synge-red-2
                                          :background ,cyberpunk-Synge-red-4))))
   `(term-color-green ((,class (:foreground ,cyberpunk-Synge-green
                                            :background ,cyberpunk-Synge-green+2))))
   `(term-color-yellow ((,class (:foreground ,cyberpunk-Synge-orange
                                             :background ,cyberpunk-Synge-yellow))))
   `(term-color-blue ((,class (:foreground ,cyberpunk-Synge-blue-1
                                           :background ,cyberpunk-Synge-blue-4))))
   `(term-color-magenta ((,class (:foreground ,cyberpunk-Synge-magenta
                                              :background ,cyberpunk-Synge-red))))
   `(term-color-cyan ((,class (:foreground ,cyberpunk-Synge-cyan
                                           :background ,cyberpunk-Synge-blue))))
   `(term-color-white ((,class (:foreground ,cyberpunk-Synge-fg
                                            :background ,cyberpunk-Synge-bg-1))))
   `(term-default-fg-color ((,class (:inherit term-color-white))))
   `(term-default-bg-color ((,class (:inherit term-color-black))))

   ;; volatile-highlights
   `(vhl/default-face ((,class (:background ,cyberpunk-Synge-gray-5))))

   `(undo-tree-visualizer-active-branch-face ((,class (:foreground ,cyberpunk-Synge-pink-1 :background ,cyberpunk-Synge-black))))

   ;; whitespace-mode
   `(whitespace-space ((,class (:background ,cyberpunk-Synge-bg :foreground ,cyberpunk-Synge-bg+1))))
   `(whitespace-hspace ((,class (:background ,cyberpunk-Synge-bg :foreground ,cyberpunk-Synge-bg+1))))
   `(whitespace-tab ((,class (:background ,cyberpunk-Synge-bg :foreground ,cyberpunk-Synge-red))))
   `(whitespace-newline ((,class (:foreground ,cyberpunk-Synge-bg+1))))
   `(whitespace-trailing ((,class (:foreground ,cyberpunk-Synge-red :background ,cyberpunk-Synge-bg))))
   `(whitespace-line ((,class (:background ,cyberpunk-Synge-bg-05 :foreground ,cyberpunk-Synge-magenta))))
   `(whitespace-space-before-tab ((,class (:background ,cyberpunk-Synge-orange :foreground ,cyberpunk-Synge-orange))))
   `(whitespace-indentation ((,class (:background ,cyberpunk-Synge-yellow :foreground ,cyberpunk-Synge-red))))
   `(whitespace-empty ((,class (:background ,cyberpunk-Synge-yellow :foreground ,cyberpunk-Synge-red))))
   `(whitespace-space-after-tab ((,class (:background ,cyberpunk-Synge-yellow :foreground ,cyberpunk-Synge-red))))

   ;; wanderlust
   `(wl-highlight-folder-few-face ((,class (:foreground ,cyberpunk-Synge-red-2))))
   `(wl-highlight-folder-many-face ((,class (:foreground ,cyberpunk-Synge-red-1))))
   `(wl-highlight-folder-path-face ((,class (:foreground ,cyberpunk-Synge-orange))))
   `(wl-highlight-folder-unread-face ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(wl-highlight-folder-zero-face ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(wl-highlight-folder-unknown-face ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(wl-highlight-message-citation-header ((,class (:foreground ,cyberpunk-Synge-red-1))))
   `(wl-highlight-message-cited-text-1 ((,class (:foreground ,cyberpunk-Synge-red))))
   `(wl-highlight-message-cited-text-2 ((,class (:foreground ,cyberpunk-Synge-green+2))))
   `(wl-highlight-message-cited-text-3 ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(wl-highlight-message-cited-text-4 ((,class (:foreground ,cyberpunk-Synge-blue+1))))
   `(wl-highlight-message-header-contents-face ((,class (:foreground ,cyberpunk-Synge-green))))
   `(wl-highlight-message-headers-face ((,class (:foreground ,cyberpunk-Synge-red+1))))
   `(wl-highlight-message-important-header-contents ((,class (:foreground ,cyberpunk-Synge-green+2))))
   `(wl-highlight-message-header-contents ((,class (:foreground ,cyberpunk-Synge-green+1))))
   `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,cyberpunk-Synge-green+2))))
   `(wl-highlight-message-signature ((,class (:foreground ,cyberpunk-Synge-green))))
   `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(wl-highlight-summary-answered-face ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(wl-highlight-summary-disposed-face ((,class (:foreground ,cyberpunk-Synge-fg
                                                         :slant italic))))
   `(wl-highlight-summary-new-face ((,class (:foreground ,cyberpunk-Synge-blue))))
   `(wl-highlight-summary-normal-face ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(wl-highlight-summary-thread-top-face ((,class (:foreground ,cyberpunk-Synge-yellow))))
   `(wl-highlight-thread-indent-face ((,class (:foreground ,cyberpunk-Synge-magenta))))
   `(wl-highlight-summary-refiled-face ((,class (:foreground ,cyberpunk-Synge-fg))))
   `(wl-highlight-summary-displaying-face ((,class (:underline t :weight bold))))

   ;; which-func-mode
   `(which-func ((,class (:foreground ,cyberpunk-Synge-green+4))))

   ;; yasnippet
   `(yas/field-highlight-face ((,class (:background ,cyberpunk-Synge-pink-1 :foreground ,cyberpunk-Synge-black))))

   ;; enh-ruby-mode enh-ruby-op-face
   `(enh-ruby-op-face ((,class (:foreground ,cyberpunk-Synge-blue-7))))
   `(enh-ruby-heredoc-delimiter-face ((,class (:foreground ,cyberpunk-Synge-green+2))))
   `(enh-ruby-string-delimiter-face ((,class (:foreground ,cyberpunk-Synge-green+2))))
   `(enh-ruby-regexp-delimiter-face ((,class (:foreground ,cyberpunk-Synge-blue-1))))

   ;; yascroll
   `(yascroll:thumb-text-area ((,class (:background ,cyberpunk-Synge-bg-1))))
   `(yascroll:thumb-fringe ((,class (:background ,cyberpunk-Synge-bg-1 :foreground ,cyberpunk-Synge-bg-1))))

   ;; customize
   `(custom-button ((,class (:box (:line-width 2 :style released-button)
                                  :background ,cyberpunk-Synge-bg-05 :foreground ,cyberpunk-Synge-fg))))
   `(custom-button-unraised ((,class (:background ,cyberpunk-Synge-bg-05 :foreground ,cyberpunk-Synge-fg))))
   )

  ;;; custom theme variables
  (custom-theme-set-variables
   'cyberpunk-Synge
   `(ansi-color-names-vector [,cyberpunk-Synge-bg ,cyberpunk-Synge-red-2 ,cyberpunk-Synge-green ,cyberpunk-Synge-orange
                                          ,cyberpunk-Synge-blue-1 ,cyberpunk-Synge-magenta ,cyberpunk-Synge-cyan ,cyberpunk-Synge-fg])
   ;; fill-column-indicator
   `(fci-rule-color ,cyberpunk-Synge-bg-05)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'cyberpunk-Synge)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; cyberpunk-Synge-theme.el ends here.

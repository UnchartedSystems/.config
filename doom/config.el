;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Dan Whitaker"
      user-mail-address "dan@uncharted.systems")

(setq +doom-dashboard-banner-file "zcacodemon.png"
      +doom-dashboard-banner-dir "~/.config/doom/")

;; Hotkeys!

(global-set-key (kbd "<f1>") 'helm-ag)
(global-set-key (kbd "<f2>") 'elpher)

;; Settings

(setq-default
 undo-in-region t                       ; Select a region to prioritize regional undos
 pixel-scroll-precision-mode nil        ; smooth scrolling
 delete-by-moving-to-trash t            ; Delete files to trash
 evil-want-fine-undo t                  ; Make INSERT change granular
 uniquify-buffer-name-style 'forward    ; Uniquify buffer names
 inhibit-compacting-font-caches t       ; When there are lots of glyphs, keep them in memory                                        ;
 window-combination-resize t            ; take new window space from all relevant windows (not just current)
 x-stretch-cursor t
 confirm-kill-emacs nil)
; truncate-string-ellipsis "…"           ; Unicode ellispis are nicer than "...", and also save /precious/ space
; (delete-selection-mode 1)               ; Replace selection when inserting text
; (setq line-spacing 0.3)                ; seems like a nice line spacing balance.

;; Theme

(setq doom-theme 'doom-vibrant)
(custom-set-faces!
  '(doom-modeline-buffer-modified :foreground "orange"))

;; Font

(setq
 doom-font (font-spec :family "Mononoki Nerd Font" :size 19)
 doom-unicode-font (font-spec :family "Mononoki Nerd Font Mono" :size 19)
 doom-big-font (font-spec :family "Mononoki Nerd Font" :size 24))

;; LSP editing

; (setq lsp-treemacs-sync-mode 1)
; (setq lsp-lens-enable t)
; (setq lsp-ui-doc-enable t)
; (setq lsp-ui-doc-show-with-cursor t)
; (setq lsp-ui-doc-show-with-mouse nil)
; (setq lsp-ui-sideline-enable t)
; (setq lsp-ui-sideline-show-code-actions t)
; (setq lsp-modeline-code-actions-enable t)

;; Code Editing

;; For debugging empty stack traces!
;; (setq cider-clojure-cli-global-options "-J-XX:-OmitStackTraceInFastThrow")


;; Base Config Text:

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

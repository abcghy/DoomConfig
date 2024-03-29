;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Huiyu Gao"
      user-mail-address "beatbox_gao@hotmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
(setq doom-font (font-spec :family "Sarasa Mono SC" :size 18))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dracula)

;; https://www.orgroam.com/manual.html#Getting-Started
;(setq org-roam-directory "~/Dropbox/org-roam/")


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
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
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;(map! (:leader
       ;(:prefix ("r" . "Org Roam")
        ;:desc "find file" :nv "f" #'org-roam-find-file
        ;:desc "insert file" :nv "i" #'org-roam-insert
        ;(:prefix ("t" . "tag")
         ;:desc "add tag" :nv "n" #'org-roam-tag-add
         ;:desc "delete tag" :nv "d" #'org-roam-tag-delete))))

(evil-define-key nil evil-normal-state-map
                 "J" "5j"
                 "K" "5k")
(evil-define-key nil evil-visual-state-map
                 "J" "5j"
                 "K" "5k")

(setq doom-localleader-key ",")

(setq which-key-idle-delay 0.5)
;(add-hook 'after-init-hook 'org-roam-mode)

;; add ~ pair for org mode
(sp-local-pair 'org-mode "~" "~")

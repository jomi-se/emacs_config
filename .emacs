(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
  (package-initialize))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(c-basic-offset 4)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (hc-zenburn)))
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "9d91458c4ad7c74cf946bd97ad085c0f6a40c370ac0a1cbeb2e3879f15b40553" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4c7a1f0559674bf6d5dd06ec52c8badc5ba6e091f954ea364a020ed702665aa1" "3624dc67449f6f6647aaacad495833a78d7b371537d73b6c7a34c1f9f88cb97b" "c21e0b92ccf022724a356fa4d485110892b06b92b38fd8f6709c1d6090e6a682" "b48b67a58e7367b94324e2f42ad5b73225f2887da3f96b869d3e6833c816a479" "bcc6775934c9adf5f3bd1f428326ce0dcd34d743a92df48c128e6438b815b44f" "4e753673a37c71b07e3026be75dc6af3efbac5ce335f3707b7d6a110ecb636a3" default)))
 '(fci-rule-color "#383838" t)
 '(ibuffer-saved-filter-groups nil)
 '(ibuffer-saved-filters
   (quote
    (("gnus"
      ((or
        (mode . message-mode)
        (mode . mail-mode)
        (mode . gnus-group-mode)
        (mode . gnus-summary-mode)
        (mode . gnus-article-mode))))
     ("programming"
      ((or
        (mode . emacs-lisp-mode)
        (mode . cperl-mode)
        (mode . c-mode)
        (mode . java-mode)
        (mode . idl-mode)
        (mode . lisp-mode)))))))
 '(line-number-mode nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")) t)
 '(package-selected-packages
   (quote
    (vala-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-theme-buffer-local multi-term markdown-mode xah-replace-pairs helm highlight-symbol jdee p4 autopair rainbow-delimiters smex ido-vertical-mode flx-ido rainbow-mode company-distel flycheck-tip flycheck company popup sparql-mode plantuml-mode sr-speedbar xcscope evil yasnippet volatile-highlights org-plus-contrib buffer-move magit zenburn-theme scion haskell-mode cl-lib)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")) t)
 '(plantuml-jar-path "/path/to/Plantuml/plantuml.jar" t)
 '(sparql-indent-offset 4 t)
 '(speedbar-tag-hierarchy-method (quote (speedbar-prefix-group-tag-hierarchy)))
 '(speedbar-tag-regroup-maximum-length 50)
 '(vc-annotate-background "#2B2B2B" t)
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))) t)
 '(vc-annotate-very-old-color "#DC8CC3" t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(term-color-black ((t (:background "gray4" :foreground "black"))))
 '(term-color-blue ((t (:background "#0233A5" :foreground "#0752FF"))))
 '(term-color-cyan ((t (:background "cyan3" :foreground "cyan2"))))
 '(term-color-green ((t (:background "#00FF00" :foreground "#00C800"))))
 '(term-color-magenta ((t (:background "magenta" :foreground "dark magenta"))))
 '(term-color-red ((t (:background "#FF0000" :foreground "#DA0000"))))
 '(term-color-white ((t (:background "#000000" :foreground "#FFFFFF")))))

;; Set keybindings to move between windows in a single frame using the arrow keys and Shift
(global-set-key (kbd "C-;") 'other-window)
(global-set-key (kbd "C-,") 'prev-window)

(defun prev-window ()
  (interactive)
  (other-window -1))

;; Set custom theme/ based on hc-zenburn with some modifs/ do not take MELPA version
(add-to-list 'custom-theme-load-path "~/.emacs.d/perso_themes/blackboard-theme")
(add-to-list 'custom-theme-load-path "~/.emacs.d/perso_themes/hc-zenburn-emacs")
(defun reload-hc-zenburn ()
  (interactive)
  (load-theme 'hc-zenburn))
(load-theme 'hc-zenburn)
;;(set-background-color "#152539")
(fset 'disable-current-theme
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217848 100 105 115 97 98 108 101 45 116 104 101 109 101 return tab return] 0 "%d")) arg)))

;; Better defaults and better M-x
(require 'ido)
(require 'flx-ido)
(require 'ido-vertical-mode)
(require 'smex)
(require 'autopair)
(require 'ibuffer)
(require 'uniquify)

;; Use C-c left/right arrow to undo/redo last window
;; configuration change (e.g revert last C-x 1)
(when (fboundp 'winner-mode)
  (winner-mode 1))

(setq uniquify-buffer-name-style 'forward)

(ido-mode t)
(setq-default ido-enable-flex-matching t)
(ido-vertical-mode)
(ido-vertical-mode 1)
(setq-default ido-vertical-define-keys 'C-n-C-p-up-and-down)
(global-set-key (kbd "M-x") 'smex)

(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR." t)
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "M-/") 'hippie-expand)
(show-paren-mode 1)

(defun my-rainbow-hook ()
  (rainbow-delimiters-mode 1)
  (rainbow-mode 1))

(add-hook 'org-mode-hook 'my-rainbow-hook)
(add-hook 'c-mode-hook   'rainbow-delimiters-mode) ;;this happens with: #defines DERP
(add-hook 'erlang-mode-hook 'my-rainbow-hook)
(add-hook 'erlang-shell-mode-hook 'my-rainbow-hook)
(add-hook 'emacs-lisp-mode-hook 'my-rainbow-hook)
(add-hook 'lisp-interaction-mode-hook 'my-rainbow-hook)
(add-hook 'plantuml-mode-hook 'my-rainbow-hook)


(setq inhibit-splash-screen t
      initial-scratch-message nil)
(tool-bar-mode -1)
(setq column-number-mode t)
(autopair-global-mode)


(global-set-key (kbd "C-x C-b") 'ibuffer)

;; /Better defaults

;; Fix hard to see highlight colors TODO: add into highlight mode hooks or smth
;;(set-face-background 'hi-black-b' "#3F3F3F")
;;(set-face-background 'hi-black-hb' "#DCDCCC")

;; Line numbers on all modes
(global-linum-mode t)

;; Don't switch frames when calling switch buffer if target buffer is already open in another frame
(setq ido-default-buffer-method 'selected-window)

;; org-mode modifications
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; Use Line wrapping for org-mode
(setq org-startup-truncated 'nil)
(add-hook 'org-mode-hook (lambda () (setq word-wrap t)))
;; Org Agenda Files
(setq org-agenda-files '("~/Org_Agenda_Files"))
(add-hook 'org-finalize-agenda-hook (lambda () (setq truncate-lines t)))

;; Org Effort Estimates Tweaks:
;; Set Day duration total to 8h : ALREADY SET BY DEFAULT
;; Set Effort segments as fractions of a Day (i.e. 8h)
;; Set the Clocksum to use our Effort total duration
(setq org-time-clocksum-use-effort-durations t)
(setq org-global-properties (quote (("Effort_ALL"."0 0:30 1h 2h 3h 4h 5h 6h 7h 1d 2d 3d 4d 5d 2w 3w 4w"))))
(setq org-columns-default-format "%40ITEM(Task) %17Effort(Estimated Effort){:} %12CLOCKSUM")
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

;; Format can be(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

;; O and o equivalents set to C-return and C-S-return
(defun vi-open-line-above ()
  "Insert a newline above the current line and put point at beginning."
  (interactive)
  (unless (bolp)
    (beginning-of-line))
  (newline)
  (forward-line -1)
  (indent-according-to-mode))

(defun vi-open-line-below ()
  "Insert a newline below the current line and put point at beginning."
  (interactive)
  (unless (eolp)
    (end-of-line))
  (newline-and-indent))

(defun vi-open-line (&optional abovep)
  "Insert a newline below the current line and put point at beginning.
With a prefix argument, insert a newline above the current line."
  (interactive "P")
  (if abovep
      (vi-open-line-above)
    (vi-open-line-below)))
(global-set-key (kbd "<C-return>") 'vi-open-line)
(global-set-key (kbd "<C-S-return>") 'vi-open-line-above)

;; Show trailing whitespaces
;; Format can be changed using the trailing-whitespace "face"
(setq-default show-trailing-whitespace t)
(defun toggle-show-trailing-whitespace ()
  "Toggle show-trailing-whitespace between t and nil"
  (interactive)
  (setq show-trailing-whitespace (not show-trailing-whitespace)))

;;; INFO See whitespace-mode to show different kinds of whitespaces and newlines and stuff
;;; Could be configured to emulate ":set line" in Vim

;; Switch from horizontal split to vertical split
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
         (next-win-buffer (window-buffer (next-window)))
         (this-win-edges (window-edges (selected-window)))
         (next-win-edges (window-edges (next-window)))
         (this-win-2nd (not (and (<= (car this-win-edges)
                     (car next-win-edges))
                     (<= (cadr this-win-edges)
                     (cadr next-win-edges)))))
         (splitter
          (if (= (car this-win-edges)
             (car (window-edges (next-window))))
          'split-window-horizontally
        'split-window-vertically)))
    (delete-other-windows)
    (let ((first-win (selected-window)))
      (funcall splitter)
      (if this-win-2nd (other-window 1))
      (set-window-buffer (selected-window) this-win-buffer)
      (set-window-buffer (next-window) next-win-buffer)
      (select-window first-win)
      (if this-win-2nd (other-window 1))))))

(global-set-key (kbd "C-x |") 'toggle-window-split)

;; P4 in emacs
(require 'p4)
;; Always ask for changelist when modifying file
(setq p4-open-in-changelist t)

(defun p4-change-client-and-sync ()
  "Change current client workspace, sync and update so that we load current changelists and stuf"
  (interactive)
  (call-interactively 'p4-set-client-name)
  (p4-sync)
  (p4-update))

;; Keyboard Macro to change file's author and creation date
;; Currently, inserted date is hard coded ()
(fset 'my-update-name-and-date
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([19 97 117 116 104 111 114 return 11 32 32 32 46 74 backspace backspace 74 46 32 65 82 82 79 89 79 19 100 97 116 101 return 11 32 32 32 32 32 31 31 11 32 32 32 32 32 kp-1 kp-0 32 97 118 114 32 kp-2 kp-0 kp-1 kp-7] 0 "%d")) arg)))
(defun insert-file-name ()
  (interactive)
  (insert (file-name-nondirectory (buffer-file-name))))
(fset 'my-update-filename
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([19 102 105 108 101 return 134217830 134217826 11 134217848 105 110 115 101 114 116 45 102 105 108 101 45 110 97 109 101 return] 0 "%d")) arg)))
(defun modify-file-signature ()
  (interactive)
  (my-update-filename)
  (my-update-name-and-date))

(fset 'insert-header-guards-from-register-h
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([134217788 C-S-return 35 105 102 110 100 101 102 32 24 114 105 104 return 35 100 101 102 105 110 101 32 95 95 backspace backspace 24 114 105 104 134217790 C-return 35 101 110 100 102 backspace 105 102 32 kp-divide kp-multiply 32 24 114 105 104 32 kp-multiply kp-divide] 0 "%d")) arg)))

(defun my-insert-pair-around-line (str)
  (interactive "sSurrounding text: ")
  (goto-char (line-beginning-position))
  (insert str)
  (end-of-line)
  (insert str))

(defun my-insert-pair-line-or-mark (str)
  (interactive "sSurrounding text:")
  (if (use-region-p)
      (insert-pair 1 str str)
    my-insert-pair-line-or-mark))

;; Functions to increment/decrement decimal numbers (can be prefixed with C-u <number>)
(defun my-increment-number-decimal (&optional arg)
  "Increment the number forward from point by 'arg'."
  (interactive "p*")
  (save-excursion
    (save-match-data
      (let (inc-by field-width answer)
        (setq inc-by (if arg arg 1))
        (skip-chars-backward "0123456789")
        (when (re-search-forward "[0-9]+" nil t)
          (setq field-width (- (match-end 0) (match-beginning 0)))
          (setq answer (+ (string-to-number (match-string 0) 10) inc-by))
          (when (< answer 0)
            (setq answer (+ (expt 10 field-width) answer)))
          (replace-match (format (concat "%0" (int-to-string field-width) "d")
                                 answer)))))))

(defun my-decrement-number-decimal (&optional arg)
  (interactive "p*")
  (my-increment-number-decimal (if arg (- arg) -1)))

;; Buffer move keybindings
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

;; Highlight and search next occurrence with C-* (C-u C-* for prev)
(require 'highlight-symbol)
(setq highlight-symbol-on-navigation-p t)
(defun my-highlight-symbol-at-point-no-toggle (&optional symbol)
  "Highlight symbol at point if it isn't already highlighted"
  (interactive)
  (let ((symbol (or symbol
                    (highlight-symbol-get-symbol)
                    (error "No symbol at point"))))
    (if (highlight-symbol-symbol-highlighted-p symbol)
        nil
      (highlight-symbol-add-symbol symbol)
      (when (member 'explicit highlight-symbol-occurrence-message)
        (highlight-symbol-count symbol t)))))

(defun my-highlight-and-search-next ()
  "Highlight symbol under point and search for the next occurence in buffer."
  (interactive)
  (my-highlight-symbol-at-point-no-toggle)
  (highlight-symbol-next))
(defun my-highlight-and-search-prev ()
  "Highlight symbol under point and search for the next occurence in buffer."
  (interactive)
  (my-highlight-symbol-at-point-no-toggle)
  (highlight-symbol-prev))
(defun my-emulate-vim-search-symbol-at-point (&optional prev)
  "Highlight and search as in Vim"
  (interactive "P")
  (if prev
      (my-highlight-and-search-prev)
    (my-highlight-and-search-next)))
(global-set-key (kbd "C-*") 'my-emulate-vim-search-symbol-at-point)
(global-set-key (kbd "C-S-*") 'my-highlight-and-search-prev)

;; C PROGRAMMING HOOKS
;; Set linux kernel C programming style
(setq c-default-style "linux")
(setq-default indent-tabs-mode nil)
(add-hook 'c-mode-hook
          (lambda () (setq c-basic-offset 4)))

;; Always turn on hi-lock (highlighting) minor mode in C
(add-hook 'c-mode-hook 'hi-lock-mode)

;; set dabbrev-expand to C-TAB for C-mode
(add-hook 'c-mode-hook
	  (lambda () (local-set-key (kbd "<C-tab>") 'hippie-expand)))

;; set S-TAB for indent-relative in C-mode
(add-hook 'c-mode-hook
	  (lambda () (local-set-key (kbd "<backtab>") 'indent-relative)))

;; set C-x C-a to ff-find-other-file to easily switch between header and source
(add-hook 'c-mode-hook
	  (lambda () (local-set-key (kbd "C-x C-a") 'ff-find-other-file)))

;; set increment/decrement decimals func to C-c +/-
(add-hook 'c-mode-hook
	  (lambda () (local-set-key (kbd "C-c +") 'my-increment-number-decimal)))
(add-hook 'c-mode-hook
	  (lambda () (local-set-key (kbd "C-c -") 'my-decrement-number-decimal)))


(add-hook 'c-mode-hook
	  (lambda () (cscope-minor-mode)))

;; Activate global ede mode and semantic mode when in C-mode
(require 'semantic/sb)
(add-hook 'c-mode-hook
          (lambda () (global-ede-mode 1) (semantic-mode 1)))
(add-to-list 'load-path "~/.emacs.d/ecb")
(require 'ecb)

;; END OF C PROGRAMMING HOOKS

;; xcscope configuration
(setq cscope-option-use-inverted-index 't)
(setq cscope-option-do-not-update-database 't)

;; Source: http://www.emacswiki.org/emacs-en/download/misc-cmds.el
(defun revert-buffer-no-confirm ()
    "Revert buffer without confirmation."
    (interactive)
    (revert-buffer :ignore-auto :noconfirm))

;; file backups config
(setq backup-directory-alist '(("." . "~/.backups_emacs"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

;; Disable suspend func
(put 'suspend-frame 'disabled t)

(defun my-sr-speedbar-close-and-balance ()
  (sr-speedbar-close)
  (balance-windows))

;; Ensure Speedbar is activated
(defun my-sr-speedbar-toogle-and-expand-current ()
    (interactive)
    (setq current-file (buffer-file-name))
    (if (and (fboundp 'sr-speedbar-exist-p)  (sr-speedbar-exist-p))
        (my-sr-speedbar-close-and-balance)
      (sr-speedbar-open)
      (sr-speedbar-select-window)
      (speedbar-find-selected-file current-file)
      (speedbar-expand-line)
      (sr-speedbar-refresh)))

(global-set-key (kbd "C-<f8>") 'my-sr-speedbar-toogle-and-expand-current)

(setq sr-speedbar-right-side nil)
(setq sr-speedbar-auto-refresh t)

;;Multi-term setup
(require 'multi-term)
(add-hook 'term-mode-hook
          (lambda ()
            (add-to-list 'term-bind-key-alist '("M-<prior>" . multi-term-prev))
            (add-to-list 'term-bind-key-alist '("M-<next>" . multi-term-next))
            (set-face-attribute 'default (selected-frame) :background "#000000")
            (face-remap-add-relative 'default :background "#000000")
            (linum-mode 0)
            (setq show-trailing-whitespace nil)))

;; Activate truncate lines globally
(set-default 'truncate-lines t)

;; Show whether searches and replaces case insensitive by default (duh)
(add-to-list 'minor-mode-alist '(case-fold-search " CFS"))

;; Toggle CFS func
(defun toggle-case () (interactive) (setq case-fold-search (not case-fold-search)))

;; Set CFS to nil by default
(setq-default case-fold-search nil)

;; Enable plantuml-mode for PlantUML files
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))

(add-hook 'plantuml-mode-hook
	  (lambda () (local-set-key (kbd "<C-tab>") 'plantuml-complete-symbol)))

;; Insert date func
(defun insert-current-date () (interactive)
       (insert (shell-command-to-string "echo -n $(date +%d-%m-%Y)")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;             ERLANG CONFIG            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Taken from http://www.lambdacat.com/post-modern-emacs-setup-for-erlang/

;;Erlang-mode from current build
(setq load-path (cons "/path/to/Erlang/install/<version>/lib/tools-2.8.3/emacs" load-path))
(setq erlang-root-dir "/path/to/Erlang/install/<version>/")
(setq exec-path (cons "/path/to/Erlang/install/<version>/bin" exec-path))
(setq erlang-man-root-dir "/path/to/Erlang/install/<version>/man")
(require 'erlang-start)

;; fly-check for Erlang
(require 'flycheck)
(flycheck-define-checker erlang-otp
                         "An Erlang syntax checker using the Erlang interpreter."
                         :command ("erlc" "-o" temporary-directory "-Wall"
                                   "-I" "../include" "-I" "../../include"
                                   "-I" "../../../include" source)
                         :modes erlang-mode
                         :error-patterns
                         ((warning line-start (file-name) ":" line ": Warning:" (message) line-end)
                          (error line-start (file-name) ":" line ": " (message) line-end)))

(add-hook 'erlang-mode-hook
          (lambda ()
            (flycheck-select-checker 'erlang-otp)
            (flycheck-mode)))

(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))

;; Distel setup
(add-to-list 'load-path "/path/to/distel/elisp")
(require 'distel)
(distel-setup)

(defun my-erlang-mode-hook ()
        ;; when starting an Erlang shell in Emacs, default in the node name
        (setq inferior-erlang-machine-options '("-sname" "emacs"))
        ;; add Erlang functions to an imenu menu
        (imenu-add-to-menubar "imenu"))

;; Some Erlang customizations
;; Auto-complete
(add-hook 'erlang-mode-hook 'company-mode)
(add-hook 'erlang-mode-hook
          (lambda ()
            (setq company-backends '(company-distel))))
(add-hook 'erlang-mode-hook 'my-erlang-mode-hook)
(add-hook 'erlang-mode-hook
	  (lambda () (local-set-key (kbd "<C-tab>") 'company-complete)))

;; Erlang Shell autocomplete
(add-hook 'erlang-shell-mode-hook 'company-mode)
(add-hook 'erlang-shell-mode-hook
          (lambda ()
            (setq company-backends '(company-distel))))

;; Erlang Shell custom keys
(add-hook 'erlang-shell-mode-hook
	  (lambda () (local-set-key (kbd "<C-tab>") 'company-complete)))
(add-hook 'erlang-shell-mode-hook
	  (lambda () (local-set-key (kbd "C-c g") 'erl-find-source-under-point)))
(add-hook 'erlang-shell-mode-hook
	  (lambda () (local-set-key (kbd "C-c t") 'erl-find-source-unwind)))

;; Make Erlang Shell prompt and pas output read-only:
;; (this method is valid for all comint-derived modes)

(add-hook 'erlang-shell-mode-hook
          (lambda ()
            (setq comint-prompt-read-only t)))

(defun my-comint-preoutput-turn-buffer-read-only (text)
  (propertize text 'read-only t))

(add-hook 'erlang-shell-mode-hook
          (lambda ()
            (add-hook 'comint-preoutput-filter-functions
                      'my-comint-preoutput-turn-buffer-read-only)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;          ERLANG CONFIG END           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Kconfig Major Mode (taken from https://github.com/y2q-actionman/Kconfig-Mode.git)
(load-library "~/.emacs.d/Kconfig-Mode/kconfig-mode.el")
(add-to-list 'auto-mode-alist '("\\.in\\'" . kconfig-mode))

;; Makefile add mk.inc and mk.spec to Makefile types
(add-to-list 'auto-mode-alist '("\\mk.inc\\'" . makefile-mode))
(add-to-list 'auto-mode-alist '("\\mk.inc\\'" . makefile-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;               IBUFFER                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(setq ibuffer-saved-filter-groups
;;      '(("home"
;;	 ("emacs-config" (or (filename . ".emacs.d")
;;			     (filename . ".emacs")))
;;	 ("Org" (or (mode . org-mode)
;;		    (filename . "OrgMode")))
;;         ("P4" (or (mode . p4-mode)
;;                   (mode . p4-basic-mode)
;;                   (mode . p4-basic-list-mode)
;;                   (mode . p4-opened-list-mode)
;;                   (mode . p4-status-list-mode)
;;                   (mode . p4-form-mode)
;;                   (mode . p4-change-form-mode)
;;                   (mode . p4-job-form-mode)
;;                   (mode . p4-filelog-mode)
;;                   (mode . p4-diff-mode)
;;                   (mode . p4-annotate-mode)
;;                   (mode . p4-grep-mode)))
;;	 ("Help" (or (name . "\*Help\*")
;;		     (name . "\*Apropos\*")
;;		     (name . "\*info\*"))))))
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;             IBUFFER END              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; yasnippet stuff
(require 'yasnippet)
(add-to-list 'yas-snippet-dirs "~/.emacs.d/yasnippet-snippets")
(yas-global-mode 1)

;; Prompt on Emacs exit for fat fingers C-x C-c
(setq confirm-kill-emacs 'y-or-n-p)

;; Set default start directory to Home
(setq default-directory "~/")

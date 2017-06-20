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
 '(column-number-mode nil)
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
    (bind-key flyspell-lazy flyspell-popup flyspell-correct-helm flyspell-correct auto-dictionary helm-xref helm-projectile xref-js2 fullframe ibuffer-vc session js2-mode helm-gtags ggtags vala-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-theme-buffer-local multi-term markdown-mode xah-replace-pairs helm highlight-symbol jdee p4 autopair rainbow-delimiters smex ido-vertical-mode flx-ido rainbow-mode company-distel flycheck-tip flycheck company popup sparql-mode plantuml-mode xcscope evil yasnippet volatile-highlights org-plus-contrib buffer-move magit zenburn-theme scion haskell-mode cl-lib)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")) t)
 '(plantuml-jar-path "/path/to/Plantuml/plantuml.jar" t)
 '(session-use-package t nil (session))
 '(sparql-indent-offset 4)
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
(require 'bind-key)
(bind-key* (kbd "C-;") 'other-window)
(bind-key* (kbd "C-,") 'prev-window)

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

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

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
(require 'fullframe)

;; Use C-c left/right arrow to undo/redo last window
;; configuration change (e.g revert last C-x 1)
(when (fboundp 'winner-mode)
  (winner-mode 1))

(setq uniquify-buffer-name-style 'forward)

;; (ido-mode t)
(setq-default ido-enable-flex-matching t)
;; (ido-vertical-mode)
;; (ido-vertical-mode 1)
(setq-default ido-vertical-define-keys 'C-n-C-p-up-and-down)
;; TODO: add a viariable or something to choose between smex or helm
;; Maybe add a lightweight v/s helm config?
;; (global-set-key (kbd "M-x") 'smex)

(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR." t)
(bind-key* (kbd "M-z") 'zap-up-to-char)

;; From Purcell's utils
(if (fboundp 'with-eval-after-load)
    (defalias 'after-load 'with-eval-after-load)
  (defmacro after-load (feature &rest body)
    "After FEATURE is loaded, evaluate BODY."
    (declare (indent defun))
    `(eval-after-load ,feature
       '(progn ,@body))))

;; Hippie expand stuff
(bind-key* (kbd "M-/") 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(try-complete-file-name-partially
        try-complete-file-name
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill))

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
(scroll-bar-mode -1)
(setq column-number-mode t)
(autopair-global-mode)

;; Ibuffer stuff
(bind-key* (kbd "C-x C-b") 'ibuffer)
(when (require 'winner nil 'noerror)
  (define-key ibuffer-mode-map (kbd "q") 'winner-undo))

;; Full frame stuff
(after-load 'ibuffer
  (fullframe ibuffer ibuffer-quit))

;; /Better defaults

;; Fix hard to see highlight colors TODO: add into highlight mode hooks or smth
;;(set-face-background 'hi-black-b' "#3F3F3F")
;;(set-face-background 'hi-black-hb' "#DCDCCC")

;; Line numbers on most modes
(require 'linum-off)
(add-to-list 'linum-disabled-modes-list 'term-mode)
(add-to-list 'linum-disabled-modes-list 'helm-mode)
(setq linum-disable-starred-buffers t)
(setq linum-disable-max-file-lines 4000)
(global-linum-mode t)

;; org-mode modifications
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
;; (setq org-log-done t)

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
(bind-key* (kbd "<C-return>") 'vi-open-line)
(bind-key* (kbd "<C-S-return>") 'vi-open-line-above)

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

(bind-key* (kbd "C-x |") 'toggle-window-split)

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
(bind-key* (kbd "<C-S-up>")     'buf-move-up)
(bind-key* (kbd "<C-S-down>")   'buf-move-down)
(bind-key* (kbd "<C-S-left>")   'buf-move-left)
(bind-key* (kbd "<C-S-right>")  'buf-move-right)

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
(bind-key* (kbd "C-*") 'my-emulate-vim-search-symbol-at-point)
(bind-key* (kbd "C-S-*") 'my-highlight-and-search-prev)

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

;; Activate semantic mode
(require 'semantic/sb)
(semantic-mode 1)
(require 'ede)
(global-ede-mode)
;; Add the following to a .dir-locals.el at the root of a C/C++ project for completion stuff
;; (eval ede-cpp-root-project "Test" :name "Test Project" :file "~/Path/to/file/in/project/root" :include-path
;;       (quote
;;        ("/"))
;;       :system-include-path
;;       (quote
;;        ("~/path/to/project/include1" "~/path/to/project/include2")))

;; END OF C PROGRAMMING HOOKS

;; Semantic configuration
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(global-semantic-decoration-mode 0)
(global-semantic-idle-summary-mode 1)
(semanticdb-enable-gnu-global-databases 'c-mode t)
(semanticdb-enable-gnu-global-databases 'c++-mode t)

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

;;Multi-term setup
(require 'multi-term)
(add-hook 'term-mode-hook
          (lambda ()
            (add-to-list 'term-bind-key-alist '("M-<prior>" . multi-term-prev))
            (add-to-list 'term-bind-key-alist '("M-<next>" . multi-term-next))
            (set-face-attribute 'default (selected-frame) :background "#000000")
            (face-remap-add-relative 'default :background "#000000")
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
;;              JAVASCRIPT              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'js2-mode)
(require 'flycheck)

(defcustom preferred-javascript-mode
  (first (remove-if-not #'fboundp '(js2-mode js-mode)))
  "Javascript mode to use for .js files."
  :type 'symbol
  :group 'programming
  :options '(js2-mode js-mode))

(defconst preferred-javascript-indent-level 2)

;; Need to first remove from list if present, since elpa adds entries too, which
;; may be in an arbitrary order
;; This is the equivalent of doing something like:
;; redefine A = New-list-entry + (A - js-modes)
(eval-when-compile (require 'cl))
(setq auto-mode-alist (cons `("\\.\\(js\\|es6\\)\\(\\.erb\\)?\\'" . ,preferred-javascript-mode)
                            (loop for entry in auto-mode-alist
                                  unless (eq preferred-javascript-mode (cdr entry))
                                  collect entry)))

(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(setq js2-idle-timer-delay 2)
;; Change some defaults: customize them to override
(setq-default js2-basic-offset 2
              js2-bounce-indent-p nil)
(after-load 'js2-mode
  ;; Disable js2 mode's syntax error highlighting by default...
  (setq-default js2-mode-show-parse-errors t
                js2-mode-show-strict-warnings t)
  ;; ... but enable it if flycheck can't handle javascript
  (autoload 'flycheck-get-checker-for-buffer "flycheck")
   (defun sanityinc/disable-js2-checks-if-flycheck-active ()
     (unless (flycheck-get-checker-for-buffer)
       (set (make-local-variable 'js2-mode-show-parse-errors) t)
       (set (make-local-variable 'js2-mode-show-strict-warnings) t)))
  (add-hook 'js2-mode-hook 'sanityinc/disable-js2-checks-if-flycheck-active)

  (add-hook 'js2-mode-hook (lambda () (setq mode-name "JS2")

  (after-load 'js2-mode
    (js2-imenu-extras-setup)))))

(setq-default js-indent-level preferred-javascript-indent-level)

;;Javascript nests {} and () a lot, so I find this helpful
(if (and (executable-find "ag")
         (require 'xref-js2 nil 'noerror))
    (after-load 'js2-mode
      (define-key js2-mode-map (kbd "M-.") nil)
      (add-hook 'js2-mode-hook
                (lambda () (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t))))
  (message "ag or xref-js2 missing"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;          END JAVASCRIPT              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;              HELM CONFIG             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Taken from https://tuhdo.github.io/helm-intro.html

;; Key Binding  Command                 Description
;; M-x          helm-M-x                List commands
;; M-y          helm-show-kill-ring     Shows the content of the kill ring
;; C-x b        helm-mini               Shows open buffers, recently opened files
;; C-x C-f      helm-find-files         The helm version of find-file
;; C-s          helm-ff-run-grep        Run grep from within helm-find-files
;; C-c h i      helm-semantic-or-imenu  Helm interface to semantic/imenu
;; C-c h m      helm-man-woman          Jump to any man entry
;; C-c h /      helm-find               Helm interface to find
;; C-c h l      helm-locate             Helm interface to locate
;; C-c h o      helm-occur              Helm interface for occur
;; C-c h a      helm-apropos            Describes commands, functions, variables, …
;; C-c h h g    helm-info-gnus
;; C-c h h i    helm-info-at-point
;; C-c h h r    helm-info-emacs
;; C-c h b      helm-resume              Resumes a previous helm session
;; C-h SPC      helm-all-mark-rings      Views contents of local and global mark rings
;; C-c h r      helm-regex               Visualizes regex matches
;; C-c h x      helm-register            Shows content of registers
;; C-c h t      helm-top                 Helm interface to top
;; C-c h s      helm-surfraw             Command line interface to many web search engines
;; C-c h g      helm-google-suggest      Interactively enter search terms and get results from Google in helm buffer
;; C-c h c      helm-color               Lists all available faces
;; C-c h C-,    helm-calcul-expression   Helm interface to calc
;; C-c C-l      helm-eshell-history      Interface to eshell history
;; C-c C-l      helm-comint-input-ring   Interface to shell history
;; C-c C-l      helm-mini-buffer-history Interface to mini-buffer history

;; C-c h M-:    helm-eval-expression-with-eldoc Get instant results for Emacs lisp expressions in the helm buffer
;; C-c h <tab>  helm-lisp-completion-at-point   Provides a list of available functions

(require 'helm)
(require 'helm-config)
(require 'projectile)
(require 'helm-projectile)
(require 'helm-xref)
(require 'helm-gtags)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(bind-key* (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(bind-keys :map helm-map
           ("<tab>" . helm-execute-persistent-action) ; rebind tab to run persistent action
           ("C-i" . helm-execute-persistent-action) ; make TAB work in terminal
           ("C-z" .  helm-select-action)) ; list actions using C-z

(bind-key* (kbd "M-y") 'helm-show-kill-ring)
(bind-key* (kbd "M-x") 'helm-M-x)
(bind-key* (kbd "C-c h o") 'helm-occur)
(global-set-key (kbd "C-h <SPC>") 'helm-all-mark-rings)
(bind-key* (kbd "C-x b") 'helm-mini)
(bind-key* (kbd "C-x C-f") 'helm-find-files)

(when (executable-find "curl")
  (setq helm-net-prefer-curl t))

(setq helm-buffers-fuzzy-matching           t
      helm-recentf-fuzzy-match              t
      helm-M-x-fuzzy-match                  t
      helm-split-window-in-side-p           nil
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t
      helm-echo-input-in-header-line 	    t)

;; Use this to toggle opening helm buffer inside current window, not occupy whole other window
(defun my-toggle-helm-use-whole-frame-when-in-split-window ()
  "Toggle helm-split-window-in-side-p between t and nil"
  (interactive)
  (setq helm-split-window-in-side-p (not helm-split-window-in-side-p)))

(with-eval-after-load 'helm-semantic
      (push '(c-mode . semantic-format-tag-summarize) helm-semantic-display-style)
      (push '(c++-mode . semantic-format-tag-summarize) helm-semantic-display-style)
      (push '(js2-mode . semantic-format-tag-summarize) helm-semantic-display-style))

(setq helm-autoresize-max-height 0)
(setq helm-autoresize-min-height 40)
(helm-autoresize-mode 1)

(setq
 helm-gtags-ignore-case t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-suggested-key-mapping t
 )

(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)

(bind-keys :map helm-gtags-mode-map
           ("C-c g a" . helm-gtags-tags-in-this-function)
           ("M-." . helm-gtags-dwim)
           ("M-," . helm-gtags-pop-stack)
           ("C-c <" . helm-gtags-previous-history)
           ("C-c >" . helm-gtags-next-history))

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-switch-project-action 'helm-projectile-find-file)
(setq projectile-enable-caching t)
(helm-projectile-on)

(setq projectile-indexing-method 'alien)

(add-to-list 'projectile-globally-ignored-file-suffixes ".o")
(add-to-list 'projectile-globally-ignored-file-suffixes ".d")
(add-to-list 'projectile-globally-ignored-file-suffixes ".Plo")
(add-to-list 'projectile-globally-ignored-file-suffixes ".Po")
(add-to-list 'projectile-globally-ignored-file-suffixes ".lo")
(add-to-list 'projectile-globally-ignored-file-suffixes ".so")
(add-to-list 'projectile-globally-ignored-file-suffixes ".la")
(add-to-list 'projectile-globally-ignored-file-suffixes ".pyc")
(add-to-list 'projectile-globally-ignored-file-suffixes ".min.js")
(add-to-list 'projectile-globally-ignored-file-suffixes ".gz")
(add-to-list 'projectile-globally-ignored-file-suffixes ".jpg")
(add-to-list 'projectile-globally-ignored-file-suffixes ".zip")

(setq xref-show-xrefs-function 'helm-xref-show-xrefs)

(helm-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;            HELM CONFIG END           ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;           SPELL-CHECKING             ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Variable names taken from spacemacs
(defvar spell-checking-enable-by-default t
  "Enable spell checking by default.")

(defvar spell-checking-enable-auto-dictionary t
  "Specify if auto-dictionary should be enabled or not.")

(defvar enable-flyspell-auto-completion nil
  "If not nil, show speeling suggestions in popups.")

(defun my-setup-spell-check ()
  "Set up all spell check stuff"
  (require 'auto-dictionary)
  (require 'flyspell)
  (require 'flyspell-correct)
  (require 'flyspell-correct-helm)
  (when 'enable-flyspell-auto-completion
    (require 'flyspell-popup)
    (define-key flyspell-mode-map (kbd "C-!") #'flyspell-popup-correct))
  (require 'flyspell-lazy)

  ;; {{ flyspell setup for js2-mode (taken from bin chen)
  (defun js-flyspell-verify ()
    (let* ((f (get-text-property (- (point) 1) 'face)))
      ;; *whitelist*
      ;; only words with following font face will be checked
      (memq f '(js2-function-call
                js2-function-param
                js2-object-property
                font-lock-variable-name-face
                font-lock-string-face
                font-lock-function-name-face
                font-lock-builtin-face
                rjsx-tag
                rjsx-attr))))
  (put 'js2-mode 'flyspell-mode-predicate 'js-flyspell-verify)
  ;; }}
  (after-load 'flyspell
    '((progn )
     (require 'flyspell-lazy)
     (flyspell-lazy-mode 1)))
  (setq ispell-program-name "aspell")
  ;;(setq-default ispell-extra-args "--sug-mode=ultra"
  (add-hook 'prog-mode-hook 'flyspell-prog-mode)
  (add-hook 'text-mode-hook 'flyspell-mode)

  ;; move point to previous error
  ;; based on code by hatschipuh at
  ;; http://emacs.stackexchange.com/a/14912/2017
  (defun flyspell-goto-previous-error (arg)
    "Go to arg previous spelling error."
    (interactive "p")
    (while (not (= 0 arg))
      (let ((pos (point))
            (min (point-min)))
        (if (and (eq (current-buffer) flyspell-old-buffer-error)
                 (eq pos flyspell-old-pos-error))
            (progn
              (if (= flyspell-old-pos-error min)
                  ;; goto beginning of buffer
                  (progn
                    (message "Restarting from end of buffer")
                    (goto-char (point-max)))
                (backward-word 1))
              (setq pos (point))))
        ;; seek the next error
        (while (and (> pos min)
                    (let ((ovs (overlays-at pos))
                          (r '()))
                      (while (and (not r) (consp ovs))
                        (if (flyspell-overlay-p (car ovs))
                            (setq r t)
                          (setq ovs (cdr ovs))))
                      (not r)))
          (backward-word 1)
          (setq pos (point)))
        ;; save the current location for next invocation
        (setq arg (1- arg))
        (setq flyspell-old-pos-error pos)
        (setq flyspell-old-buffer-error (current-buffer))
        (goto-char pos)
        (if (= pos min)
            (progn
              (message "No more miss-spelled word!")
              (setq arg 0))
          (forward-word)))))

  (defun my-flyspell-goto-next-error-repeatable ()
    "Call call-flyspell-goto-next-error and repeat"
    (interactive)
    (flyspell-goto-next-error)
    (let ((repeat-key last-command-event))
      (unless (current-message)
        (message "(Type %s to repeat goto next error)" (format-kbd-macro (vector repeat-key) nil)))
      (set-transient-map
       (let ((map (make-sparse-keymap)))
         (define-key map (vector repeat-key)
           `my-flyspell-goto-next-error-repeatable)
         map))))
  (defun my-flyspell-goto-previous-error-repeatable ()
    "Call call-flyspell-goto-next-error and repeat"
    (interactive)
    (flyspell-goto-previous-error 1)
    (backward-word)
    (let ((repeat-key last-command-event))
      (unless (current-message)
        (message "(Type %s to repeat goto next error)" (format-kbd-macro (vector repeat-key) nil)))
      (set-transient-map
       (let ((map (make-sparse-keymap)))
         (define-key map (vector repeat-key)
           `my-flyspell-goto-previous-error-repeatable)
         map))))

  (define-key flyspell-mode-map (kbd "C-c s n") 'my-flyspell-goto-next-error-repeatable)
  (define-key flyspell-mode-map (kbd "C-c s p") 'my-flyspell-goto-previous-error-repeatable)
  (define-key flyspell-mode-map (kbd "C-$") 'flyspell-auto-correct-word)
  (define-key flyspell-mode-map (kbd "C-!") 'flyspell-correct-previous-word-generic)
  (define-key flyspell-mode-map (kbd "C-c s b") 'flyspell-buffer)

  (defun my-change-dictionary ()
    "Call the correct change dictionary version depending on whether
auto-dictionary is enabled or not"
    (if 'spell-checking-enable-auto-dictionary
        (adict-change-dictionary)
      (call-interactively 'ispell-change-dictionary)))
  (when 'spell-checking-enable-auto-dictionary
    (add-hook 'flyspell-mode-hook (lambda () (auto-dictionary-mode 1)))))

(if (and (executable-find "aspell")
         'spell-checking-enable-by-default)
    (my-setup-spell-check)
  (message "aspell not found, no spell-checking available"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;           SPELL-CHECKING END         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Kconfig Major Mode (taken from https://github.com/y2q-actionman/Kconfig-Mode.git)
(load-library "~/.emacs.d/Kconfig-Mode/kconfig-mode.el")
(add-to-list 'auto-mode-alist '("\\.in\\'" . kconfig-mode))

;; Makefile add mk.inc and mk.spec to Makefile types
(add-to-list 'auto-mode-alist '("\\mk.inc\\'" . makefile-mode))
(add-to-list 'auto-mode-alist '("\\mk.inc\\'" . makefile-mode))

;; Session.el stuff
(setq session-save-file "~/.emacs.d/.session")
(add-hook 'after-init-hook 'session-initialize)

;; yasnippet stuff
(require 'yasnippet)
(add-to-list 'yas-snippet-dirs "~/.emacs.d/yasnippet-snippets")
(yas-global-mode 1)

;; Prompt on Emacs exit for fat fingers C-x C-c
(setq confirm-kill-emacs 'y-or-n-p)

;; Set default start directory to Home
(setq default-directory "~/")

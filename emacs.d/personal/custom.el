(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository

;; there are necessary
(defun ensure-package-installed (&rest packages)
  (mapcar
   (lambda (package)
     ;; (package-installed-p 'evil)
     (if (package-installed-p package)
         nil
       (if t
           (package-install package)
         package)))
   packages))

(or (file-exists-p package-user-dir)
    (package-refresh-contents))

;;add your packages here
(ensure-package-installed 'htmlize
                          'window-numbering
                          'git-gutter
                          'project-explorer
                          'paredit
                          'speed-type
                          'magit-gitflow
                          'monokai-theme)
;;init
(package-initialize)
;;this has to be on top. or modications require confirmation
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(custom-safe-themes
   (quote
    ("05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" "33bb2c9b6e965f9c3366c57f8d08a94152954d4e2124dc621953f5a8d7e9ca41" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "2d7e4feac4eeef3f0610bf6b155f613f372b056a2caae30a361947eab5074716" "08851585c86abcf44bb1232bced2ae13bc9f6323aeda71adfa3791d6e7fea2b6" "7bde52fdac7ac54d00f3d4c559f2f7aa899311655e7eb20ec5491f3b5c533fe8" "3d2dcf491da01e04b00941036fa9e6828f9ebc2bdac41f06458ac2ccaa66eb52" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "e80932ca56b0f109f8545576531d3fc79487ca35a9a9693b62bf30d6d08c9aaf" "b2d5f5ef7fd031e602a5fa9715a3e9b7c024852b7002538a47610dcbc41aada8" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "9b5b8562882c5393daa590bef170ff0b200ce11684cb95674f3f1857456b5d05" "0251780e8e79d2a5e75eec7ee3b6c646b882495cb884d9dd32f30c60f9d65db6" "b2449984e24368015629ff7a3c9e5108849bff2e34d592c7f480c73ad89351eb" "a041a61c0387c57bb65150f002862ebcfe41135a3e3425268de24200b82d6ec9" "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(fci-rule-color "#383838")
 '(magit-use-overlays nil)
 '(package-selected-packages
   (quote
    (go-mode markdown-mode web-mode geiser company-anaconda anaconda-mode company-auctex cdlatex auctex json-mode js2-mode haskell-mode rainbow-mode elisp-slime-nav slime coffee-mode cider clojure-mode rainbow-delimiters mediawiki key-chord company helm-ag helm-descbinds helm-projectile helm smex ido-ubiquitous flx-ido vkill exec-path-from-shell zop-to-char zenburn-theme volatile-highlights undo-tree smartrep smartparens operate-on-number move-text magit projectile ov guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl easy-kill diminish diff-hl discover-my-major browse-kill-ring anzu ace-window ace-jump-buffer ace-jump-mode)))
 '(vc-annotate-background "#2B2B2B")
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
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))

;;ui tweaks
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))


(global-hl-line-mode -1)

;; personal styling
(set-default-font "Monaco 16")
(load-theme 'monokai);;https://github.com/tonsky/FiraCode

                                        ;(set-face-attribute 'default nil :height 140)
(scroll-bar-mode -1)

;; show line numbers
(global-linum-mode +1)

;(setq linum-format " ")
                                        ;(setq linum-format " \u2442 ")
(setq linum-format "%4d  ")

;; change command and option key
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;; you know mac
(keyboard-translate ?\C-x ?\C-u)
(keyboard-translate ?\C-u ?\C-x)


(setenv "PATH"
        (concat
         "/usr/local/bin/" ":"
         (getenv "PATH") ; inherited from OS
         ))

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))
;;let's add real shortcut for eshell


;; No splash screen please ... jeez
(setq inhibit-startup-message t)

(require 'clojure-mode)
(require 'cider)
 ;; clojure related stuff
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(setq nrepl-log-messages t)
(setq nrepl-hide-special-buffers t)
(setq cider-prefer-local-resources t)
(setq cider-repl-pop-to-buffer-on-connect nil)
(setq cider-show-error-buffer nil)
(setq cider-auto-select-error-buffer nil)
(setq cider-stacktrace-default-filters '(tooling dup))
(setq cider-stacktrace-fill-column 80)
(setq nrepl-buffer-name-separator "-")
(setq nrepl-buffer-name-show-port t)
(setq cider-repl-display-in-current-window t)
(setq cider-prompt-save-file-on-load nil)
(setq cider-repl-result-prefix ";; => ")
(setq cider-interactive-eval-result-prefix ";; => ")
(setq cider-repl-use-clojure-font-lock t)
(setq cider-switch-to-repl-command 'cider-switch-to-current-repl-buffer)
(setq cider-repl-wrap-history t)
(setq cider-repl-history-size 1000)

(add-hook 'cider-repl-mode-hook 'company-mode)
(add-hook 'cider-mode-hook 'company-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'smartparens-strict-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

;; tramp , remote file manipulation
(setq tramp-chunksize 500)
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))
(setq tramp-debug-buffer t)
(setq tramp-verbose 10)


;;changing default temp dir
(put 'temporary-file-directory 'standard-value '((file-name-as-directory "/tmp")))
;; snippets , this is working quite nice now.
;; Custom blog related stuff

(setq org-src-fontify-natively t)
;(set-input-mode t nil t)
(require 'erc-join)
(setq erc-hide-list '("JOIN" "PART" "QUIT"))
(erc-autojoin-mode 1)
(setq erc-max-buffer-size 700000)
(setq erc-autojoin-channels-alist
      '(("freenode.net" "#emacs"  "#statistics"
         "#R"  "#machinelearning"  "#lisp"  "#git"
         "#networking" "#reactjs" "#clojure")))


(require 'magit-gitflow)
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)

;; full screen magit-status
(defun magit-toggle-whitespace ()
  (interactive)
  (if (member "-w" magit-diff-options)
      (magit-dont-ignore-whitespace)
    (magit-ignore-whitespace)))

(defun magit-ignore-whitespace ()
  (interactive)
  (add-to-list 'magit-diff-options "-w")
  (magit-refresh))

(defun magit-dont-ignore-whitespace ()
  (interactive)
  (setq magit-diff-options (remove "-w" magit-diff-options))
  (magit-refresh))

(define-key magit-status-mode-map (kbd "W") 'magit-toggle-whitespace)

(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))

(defun magit-quit-session ()
  "Restores the previous window configuration and kills the magit buffer"
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))

(define-key magit-status-mode-map (kbd "q") 'magit-quit-session)


;; let's make changed code visible to us.
(require 'git-gutter)
(global-git-gutter-mode +1)

;;1B1D1E
;; background color ,modified for monokai
;(set-face-foreground 'git-gutter:modified "#282828") monokai default color
(set-face-foreground 'git-gutter:modified "#1B1D1E")
(set-face-foreground 'git-gutter:added "#1B1D1E")
(set-face-foreground 'git-gutter:deleted "#1B1D1E")

;; line management
(defun open-line-below ()
  (interactive)
  (end-of-line)
  (newline)
  (indent-for-tab-command))

(defun open-line-above ()
  (interactive)
  (beginning-of-line)
  (newline)
  (forward-line -1)
  (indent-for-tab-command))

(global-set-key (kbd "<C-return>") 'open-line-below)
(global-set-key (kbd "<C-S-return>") 'open-line-above)

;; jumping made a little bit easier
;; Move more quickly
(global-set-key (kbd "C-S-n")
                (lambda ()
                  (interactive)
                  (ignore-errors (next-line 5))))

(global-set-key (kbd "C-S-p")
                (lambda ()
                  (interactive)
                  (ignore-errors (previous-line 5))))

(global-set-key (kbd "C-S-f")
                (lambda ()
                  (interactive)
                  (ignore-errors (forward-char 5))))

(global-set-key (kbd "C-S-b")
                (lambda ()
                  (interactive)
                  (ignore-errors (backward-char 5))))

;; basic movement
;;(global-set-key (kbd "M-c") 'previous-line)
;;(global-set-key (kbd "M-t") 'next-line)
;;(global-set-key (kbd "M-h") 'backward-char)
;;(global-set-key (kbd "M-n") 'forward-char)


;;(global-set-key (kbd "M-C") 'scroll-down)
;;(global-set-key (kbd "M-T") 'scroll-up)


;;(global-set-key (kbd "M-H") 'scroll-down-command)
;;(global-set-key (kbd "M-N") 'scroll-up-command)

;(global-set-key (kbd "M-g") 'backward-word)
;(global-set-key (kbd "M-r") 'forward-word)

(global-set-key (kbd "M-G") 'beginning-of-buffer)
(global-set-key (kbd "M-R") 'end-of-buffer)


;(global-set-key (kbd "M-e") 'delete-forward-char)
;(global-set-key (kbd "M-u") 'delete-backward-char)

;(key-chord-define-global "''" 'other-window)
(key-chord-define-global ",," 'prelude-switch-to-previous-buffer)
(key-chord-define-global "aa" 'helm-mini)
;(key-chord-define-global "@@" 'cider-restart)
(key-chord-define-global "$$" 'project-explorer-open)
(key-chord-define-global "zz" 'cider-connect)

(setq cider-test-show-report-on-success t)

(require 'cider-mode)
(require 'clojure-mode)
(define-key clojure-mode-map (kbd "C-x c") 'cider-eval-last-sexp-to-repl)
;(define-key clojure-mode-map (kbd "C-x j") 'cider-jack-in)
;(define-key clojure-mode-map (kbd "C-x J") 'cider-restart)
(define-key clojure-mode-map (kbd "C-x F") 'cider-format-buffer)



(define-key helm-find-files-map (kbd "<tab>") 'helm-execute-persistent-action)

(defun yui-compress ()
  (interactive)
  (call-process-region
   (point-min) (point-max) "yuicompressor" t t nil (buffer-file-name)))


(require 'project-explorer)
(setq pe/omit-gitignore t)
(setq pe/width 35)

;;refresh all namespaces
(defun nrepl-refresh ()
  (interactive)
  (call-interactively 'cider-switch-to-relevant-repl-buffer)
  (goto-char (point-max))
  (insert "(clojure.tools.namespace.repl/refresh)")
  (cider-repl-return))

;; reset your system
(defun nrepl-reset ()
  (interactive)
  (call-interactively 'cider-switch-to-relevant-repl-buffer)
  (goto-char (point-max))
  (insert "(user/reset)")
  (cider-repl-return))

(defun temp-buffer ()
  (interactive)
  (switch-to-buffer "*temp*"))


(defun detabify-buffer ()
  "Calls untabify on the current buffer"
  (interactive)
  (untabify (point-min) (point-max)))

(defun clean-up-whitespace ()
  "Calls untabify and delete-trailing-whitespace on the current buffer."
  (interactive)
  (detabify-buffer)
  (delete-trailing-whitespace))

(defun mbp-clojure-mode-keybindings ()
  
  (local-set-key (kbd "<f1>") 'nrepl-reset)
  (local-set-key (kbd "<f2>") 'nrepl-refresh))

(global-set-key (kbd "C-x t") 'temp-buffer)
;;awesome buffer

(add-hook 'clojure-mode-hook 'mbp-clojure-mode-keybindings)

;; this whitespace is kinda killing me
;(setq prelude-whitespace nil)
;(setq prelude-clean-whitespace-on-save nil)
(setq prelude-flyspell nil)
(require 'whitespace)
(setq whitespace-line-column 80000) ;; limit line length

;;encoding;
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; backwards compatibility as default-buffer-file-coding-system
;; is deprecated in 23.2.
(if (boundp 'buffer-file-coding-system)
    (setq-default buffer-file-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8))

;; Treat clipboard input as UTF-8 string first; compound text next, etc.
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;annoying whitespace
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))
(setq whitespace-display-mappings
      ;; all numbers are Unicode codepoint in decimal. try (insert-char 182 ) to see it
      '(
        ;;(space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
        ;;(newline-mark 10 [182 10]) ; 10 LINE FEED
        (tab-mark 9 [9655 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
        ))

(setenv "PATH"
        (concat (getenv "PATH") ":/usr/local/bin"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum ((t (:foreground "#343E31" :background "#1B1D1E" :box nil))))
 '(window-numbering-face ((t (:foreground "DeepPink" :underline "DeepPink" :weight bold))) t))

;; fullscreen
(toggle-frame-fullscreen)

;;all I want is working cursor
(setq-default cursor-type 'box)
(set-cursor-color "#FABD2F")
(blink-cursor-mode t)

;; Show errors in this file:
;;(setq debug-on-error t)
;(setq stack-trace-on-error t)

;; Automatically uncompress .gz files
(global-set-key "\M-z" 'redo)

;; Get rid of keys I hit accidentally:
(global-unset-key "\M-c")    ; don't want the capitalize thing


;; which screw up my directory listings.  Make it put them
;; somewhere else:
(setq auto-save-list-file-prefix "~/.emacs-saves/.saves-")

(setq-default indent-tabs-mode nil)
(setq tabify nil)
(setq fill-column 75)
(setq  cursor-in-non-selected-windows nil) 
;;set the background-color of selected region

;; make a clear selection color
(set-face-attribute 'region nil :background "#7F9F7F")
;;window management
(require 'window-numbering)
;; highlight the window number in pink color
(window-numbering-mode 1)
(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.")

;;ui performance improvement
(setq redisplay-dont-pause t)

;;I like darkep background
(set-background-color "#1B1D1E")

;; keep a smooth look of it
(set-face-background 'fringe "#1B1D1E")

;;linum colors , hide distracting information , focus on the most important things
;; I want a snappy Emacs
(global-flycheck-mode -1)

;(global-set-key [remap goto-line] 'goto-line-with-feedback)
;; (defun goto-line-with-feedback ()
;;   "Show line numbers temporarily, while prompting for the line number input"
;;   (interactive)
;;   (unwind-protect
;;       (progn
;;         (linum-mode 1)
;;         (goto-line (read-number "Goto line: ")))
;;     (linum-mode -1)))




;;better mode line
;(ocodo-svg-modelines-init)
;(smt/set-theme 'ocodo-mesh-retro-aqua-smt)


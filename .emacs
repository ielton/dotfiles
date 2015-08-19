;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  .emacs for Emacs 24  :  Ielton Ferreira Carneiro Pinto  <ieltonf@gmail.com>  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Some reminders: http://www.emacswiki.org/emacs/EmacsNewbieKeyReference

(setq toggle-text-mode-auto-fill "y")

;; Aspell
(require 'ispell)

;; aspell path for ubuntu
(setq-default ispell-program-name "/usr/bin/aspell")

;; replace y-e-s by y
(fset 'yes-or-no-p 'y-or-n-p)

;; General custom key-bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key   "\C-c\C-l" 'comment-region)
(global-unset-key "\M-=")    (global-set-key "\M-="    'delete-horizontal-space)
(global-unset-key "\C-b")    (global-set-key "\C-b"    'scroll-down)
(global-unset-key "\M-\C-h") (global-set-key "\M-\C-h" 'backward-kill-word)
(global-unset-key "\C-f")    (global-set-key "\C-f"    'forward-word)    
(global-unset-key "\M-i")    (global-set-key "\M-i"    'ispell-buffer)
(global-unset-key "\C-j")    (global-set-key "\C-j"    'fill-paragraph)
(global-unset-key "\C-cc")   (global-set-key "\C-cc"   'copy-region-as-kill)
;; key-bindings for Aspell
;; check if the current word is correct
(global-set-key (kbd "<f8>") 'ispell-word)
;; flyspell mode
(global-set-key (kbd "C-<f8>") 'flyspell-mode)
;; flyspell prog mode
(global-set-key (kbd "C-<f9>") 'flyspell-prog-mode)
;; change current dictionary
(global-set-key (kbd "<f9>") 'ispell-change-dictionary)

;; Global Highlight

(global-hl-line-mode 1)

;; startup in auto-fill [justified] mode
(setq default-major-mode 'text-mode)
(setq text-mode-hook 'turn-on-auto-fill)

;; Don't add dumb newlines
(setq next-line-add-newlines nil) 

;; Allow lowercase [downcase] command
(put 'downcase-region 'disabled nil)

;; Get rid of annoying ESC-ESC stuff.
(global-unset-key "\e\e")

;;;  Set a key to call compile command
(global-set-key "\C-xc" 'compile)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                      Font settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-faces
 '(default ((t (:foreground "white" :background "black" :family "Fixed"))))
 '(fg:black ((t (:foreground "black" :background "black"))) t)
 '(custom-variable-sample-face ((t (:foreground "tan"))))
;; Just for comments
 '(font-lock-comment-face ((t (:foreground "grey80" :background "back"))) t)
 '(gui-button-face ((t (:bold t :foreground "black" :background "gray70" :size "14"))) t)
 '(font-lock-string-face ((t (:foreground "cadetblue" :background "black"))) t)
 '(pointer ((t (:foreground "green" :background "black"))) t)
 '(font-lock-keyword-face ((t (:foreground "green2" :background "black"))) t)
 '(custom-saved-face ((t (:underline t :foreground "tan"))))
 '(isearch ((t (:foreground "red" :background "black"))) t)
 '(primary-selection ((t (:foreground "gray70" :background "gray20"))) t)
 '(paren-match ((t (:foreground "red" :background "black"))) t)
 '(custom-face-empty ((t (:foreground "orange" :background "black"))) t)
 '(font-lock-preprocessor-face ((t (:foreground "tan"))) t)
 '(zmacs-region ((t (:foreground "gray90" :background "gray20"))) t)
 '(font-lock-type-face ((t (:foreground "yellow" :background "black"))) t)
;; Just for Highlight
 '(highlight ((t (:foreground "white" :background "blue"))))
 '(font-lock-variable-name-face ((t (:foreground "yellow" :background "black"))) t)
 '(font-lock-doc-string-face ((t (:foreground "gray50" :background "black"))) t)
 '(font-lock-function-name-face ((t (:bold nil :foreground "green" :background "black"))) t)
 '(bold-italic ((t (:bold t :italic t))))
 '(secondary-selection ((t (:foreground "orange2" :background "gray20"))))
 '(text-cursor ((t (:foreground "black" :background "green"))) t))
(custom-set-faces)

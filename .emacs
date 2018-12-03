;; 1) Put this file in HOME directory and add HOME environment variable to WINDOWS or
;; 2) Edit HKEY_CURRENT_USER -> Software -> GNU -> Emacs -> HOME to whatever directory you want
;; 3) Put it in the directory Emacs thinks is home, by typing C-x C-f and then typing ~ (the home symbol) as home directory
(global-set-key [home] 'beginning-of-line) ; map Home to beginning of line
(global-set-key [f6] 'clipboard-kill-region) ; cut
(global-set-key [f7] 'clipboard-kill-ring-save) ; copy
(global-set-key [f8] 'clipboard-yank) ; paste
(global-set-key [end] 'end-of-line) ; map End to end of line
(global-set-key [C-kp-home] 'beginning-of-buffer) ; map Ctrl Home all the way home
(global-set-key [C-kp-end] 'end-of-buffer) ; map Ctrl End to end of buffer
(global-set-key [?\C-z] 'undo) ; why the ?\ 
(global-set-key [S-f5] 'query-replace);
(global-set-key [delete] 'delete-char);
;; setq is like set but it quotes first argument automatically
;; lambda is the name for an anonymous function - one without a name
(setq c-default-style "linux" c-basic-offset 2)
(setq-default asm-comment 131)
      
(setq-default vc-make-backup-files t)

(cond ((fboundp 'global-font-lock-mode)
        ;; Customize face attributes
        (setq font-lock-face-attributes
              ;; Symbol-for-Face Foreground Background Bold Italic Underline
             '((font-lock-comment-face       "green4")
               (font-lock-string-face        "red")
               (font-lock-keyword-face       "Blue")
               (font-lock-function-name-face "Black")
               (font-lock-variable-name-face "Black")
               (font-lock-type-face          "Black")
               (font-lock-constant-face     "Black")
               (font-lock-builtin-face     "Blue")
               ))
       ;; Load the font-lock package.
       (require 'font-lock)
       ;; Maximum colors
       (setq font-lock-maximum-decoration t)
       ;; Turn on font-lock in all modes that support it
       (global-font-lock-mode t)))

;;================================================ ============
;; minibuffer space completion
;;================================================ ============
(define-key minibuffer-local-filename-completion-map (kbd "SPC")
'minibuffer-complete-word)

(define-key minibuffer-local-must-match-filename-map (kbd "SPC")
  'minibuffer-complete-word)

(setq inhibit-splash-screen t)



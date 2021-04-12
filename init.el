;;; init.el --- My init.el.
;;; Commentary:
;;; Code:

;; Set encoding
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

(require 'package)

;; Add MELPA to package-archives. (https://www.emacswiki.org/emacs/MELPA)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; Avoid loading the packages again after processing the init file.
(setq package-enable-at-startup nil)

;; https://emacs.stackexchange.com/a/51772
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Load packages explicitly.
(package-initialize)

;; Load custom scripts.
(add-to-list 'load-path "~/.emacs.d/custom/")
(require 'emacs-saves)
(require 'misc)

;;; init.el ends here


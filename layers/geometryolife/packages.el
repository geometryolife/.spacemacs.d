;;; packages.el --- geometryolife layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2021 Sylvain Benner & Contributors
;;
;; Author:  <joe@mx>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `geometryolife-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `geometryolife/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `geometryolife/pre-init-PACKAGE' and/or
;;   `geometryolife/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst geometryolife-packages
  '(youdao-dictionary
    lispy
    company
    ;; (occur-mode :location built-in) ;; spacemacs 已默认设置
    (gulpjs :location (recipe :fetcher github :repo "zilongshanren/emacs-gulpjs"))
    )
  "The list of Lisp packages required by the geometryolife layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:
    - :excluded (t or nil): Prevent the package from being loaded

      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun geometryolife/init-youdao-dictionary()
  (use-package youdao-dictionary
    :defer t
    :init
    (spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+)
    )
  )

(defun geometryolife/post-init-company()
  (setq company-minimum-prefix-length 1))

;; (defun geometryolife/init-occur-mode()
;;   (evilified-state-evilify-map occur-mode-map
;;     :mode occur-mode)
;;   )

(defun geometryolife/init-gulpjs()
  (use-package gulpjs
    :init))

(defun geometryolife/init-lispy()
  (use-package lispy
    :init))

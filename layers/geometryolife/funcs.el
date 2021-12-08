(defun geometryolife/load-my-layout ()
  (interactive)
  (persp-load-state-from-file (concat persp-save-dir "geometryolife")))

(defun geometryolife/save-my-layout()
  (interactive)
  (persp-save-state-to-file (concat persp-save-dir "geometryolife")))

(defun geometryolife/my-mc-mark-next-like-this()
  (interactive)
  (if (region-active-p)
      (mc/mark-next-like-this 1)
    (er/expand-region 1)))

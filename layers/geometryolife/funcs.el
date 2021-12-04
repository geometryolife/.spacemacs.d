(defun geometryolife/load-my-layout ()
  (interactive)
  (persp-load-state-from-file (concat persp-save-dir "geometryolife")))

(defun geometryolife/save-my-layout()
  (interactive)
  (persp-save-state-to-file (concat persp-save-dir "geometryolife")))

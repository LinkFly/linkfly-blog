;;; There is patching of Restas (while not newest version)
(in-package :restas)

(defun route-render-method (route)
  (or (slot-value route 'render-method)
      (module-render-method (route-module route))
      #'identity))


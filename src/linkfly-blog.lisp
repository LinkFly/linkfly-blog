(in-package :cl-user)
(defpackage linkfly-blog
  (:use :cl :ext-blog)
  (:export #:run))
(in-package :linkfly-blog)

(defun run()
  (start)
  (read))

#|
  This file is a part of linkfly-blog project.
  Copyright (c) 2016 Sergey Katrevich (linkfly@yandex.ru)
|#

#|
  Author: Sergey Katrevich (linkfly@yandex.ru)
|#

(in-package :cl-user)
(defpackage linkfly-blog-asd
  (:use :cl :asdf))
(in-package :linkfly-blog-asd)

(defsystem linkfly-blog
  :version "0.1"
  :author "Sergey Katrevich"
  :license ""
  :depends-on (:ext-blog)
  :serial t
  :components ((:module "src"
                :components
                ((:file "monkey-patching")
		 (:file "linkfly-blog"))))
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op linkfly-blog-test))))

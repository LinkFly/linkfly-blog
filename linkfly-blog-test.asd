#|
  This file is a part of linkfly-blog project.
  Copyright (c) 2016 Sergey Katrevich (linkfly@yandex.ru)
|#

(in-package :cl-user)
(defpackage linkfly-blog-test-asd
  (:use :cl :asdf))
(in-package :linkfly-blog-test-asd)

(defsystem linkfly-blog-test
  :author "Sergey Katrevich"
  :license ""
  :depends-on (:linkfly-blog
               :prove)
  :components ((:module "t"
                :components
                ((:test-file "linkfly-blog"))))
  :description "Test system for linkfly-blog"

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))

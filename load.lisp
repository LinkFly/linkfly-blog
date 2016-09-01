;(setf *load-pathname* #P"c:/Users/User/Dropbox/my-projects/linkfly-blog/build.lisp")
(let* (sexp-filename this-dir load-data)
  (setf sexp-filename "load.sexp")
  (setf this-dir (make-pathname :defaults *load-pathname* :name nil :type nil))
  (setf load-data (with-open-file (stream (merge-pathnames sexp-filename this-dir))
		    (read stream)))
  (mapc #'load (list (getf load-data :asdf) (getf load-data :quicklisp-setup)))
  (push this-dir (symbol-value (find-symbol "*CENTRAL-REGISTRY*" :asdf)))
  )
(ql:quickload :linkfly-blog)



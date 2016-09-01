(load 
 (merge-pathnames "load.lisp" 
		  (make-pathname :defaults *load-pathname* :name nil :type nil)))
(ql:quickload :trivial-dump-core)
#|(trivial-dump-core:save-executable 
  #+:os-windows "linkfly-blog-0.0.1.exe"
  #+:linux "linkfly-blog-0.0.1.elf"
  #'linkfly-blog:run)
|#
(sb-ext:save-lisp-and-die 
  #+:os-windows "linkfly-blog-0.0.3.exe"
  #+:linux "linkfly-blog-0.0.3.elf"
 :toplevel #'linkfly-blog:run :executable t)





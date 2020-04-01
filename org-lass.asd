(defsystem "org-lass"
  :version "0.1.0"
  :author "Nikolai Matiushev"
  :license ""
  :depends-on ("lass"
               "classie")
  :defsystem-depends-on (:classie)
  :components ((:module "src"
                :components
                ((:file "main")
                 (:classie-file "org" :output "../docs/org.css")))
               (:module "docs"
                :depends-on ("src")
                :components
                ((:static-file "org.css")
                 (:static-file "demo.html")
                 (:static-file "index.html"))))
  :description "LASS styles to display HTML as Org-mode file")


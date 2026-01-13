;; Yardımcı fonksiyon: Etiketleri ve içeriği HTML formatına çevirir
(defun render-tag (tag content)
  (format t "<~A>~%  ~A~%</~A>~%" 
          (string-downcase tag) 
          content 
          (string-downcase tag)))

;; Makro: DSL'in ana motoru
(defmacro with-html (&body body)
  `(progn
     (format t "<html>~%")
     ,@(loop for expression in body
             collect (let ((tag (first expression))
                           (content (second expression)))
                       `(render-tag ',tag ,content)))
     (format t "</html>~%")))

(with-html
  (body "Bu bir gövde metnidir")
  (footer "2024 DSL Denemesi"))
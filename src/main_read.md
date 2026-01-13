# Koddaki Amaç

* Buradaki amacımız gündelik dile yakın bir şekilde söz dizimi oluşturarak çıktı olarak html söz dizimi elde etmekti.

(with-html
  (body "Bu bir gövde metnidir")
  (footer "2024 DSL Denemesi"))

* Çıktı şu şekilde olacak:
```html
<html>
<body>
  Bu bir gövde metnidir
</body>
<footer>
  2024 DSL Denemesi
</footer>
</html>
```

* Bu geliştirilebilir. Örneğin 


```json 
{
    "motor.pin" : "5",
    "motor.devir":"500",
    "motoru kapatma zamanı":"devir > 500"
}
```

* Şeklinde konuşmaya yakın bir dille yazarız ve bu arka planda C koduna çevrilebilir.

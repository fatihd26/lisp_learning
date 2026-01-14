# Bir server oluşturmanın adımları 

## Server oluşturmak ne kazandırır?

* Normal şartlar altında filename.lisp dosyamda her değişiklikte terminale 
```lisp
sbcl --script filename.lisp
```
* Yazmam gerekirdi. Live server, koddaki değişiklikleri her an izler. Hatayı anında yakalar.

### Adımlar

``` bash
sbcl
(load "C:/Users/fatih/Downloads/quicklisp.lisp")
(load "C:/Users/fatih/quicklisp/setup.lisp")
(ql:add-to-init-file)
(ql:quickload :alive-lsp)
(alive/server::start :port 8006)

```

### Bunun yanı sıra VSCODE user setting JSON dosyam şu şekilde 

``` JSON
{
    
    "alive.lsp.remote.host": "127.0.0.1",
    "alive.lsp.remote.port": 8006
}

```


### Serveri sonlandırmak için

*Bunu aynı zamanda REPL içerisine kullanmalıyız.

``` bash 

(sb-ext:exit)

```
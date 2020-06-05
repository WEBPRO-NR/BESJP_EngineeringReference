# 建築物省エネ基準（非住宅）Webプログラムの計算ロジック

## 公開用URL（HTML）
https://webpro-nr.github.io/BESJP_EngineeringReference/index.html


## 編集される方へ
誤字脱字のご指摘、分かりにくい箇所のご指摘等、大歓迎です。気軽にプルリクエストをお願いします。

* この文章は、asciidocで書かれています。詳細は[こちら][1]をご覧下さい。日本語版は[こちら][2]。
* 数式入力（latex）については、[こちら][3]に従うこととします。
* 数式記号の入力は[こちら][4]をご覧下さい。

<br>

編集される場合は、.adocファイルを編集してください。
設備ごとにファイルを分けており、対応は以下の通りです。

空気調和設備 <br>
　EngineeringReference_chapter02.adoc <br>
機械換気設備 <br>
　EngineeringReference_chapter03.adoc <br>
照明設備 <br>
　EngineeringReference_chapter04.adoc <br>
給湯設備 <br>
　EngineeringReference_chapter05.adoc <br>
昇降機 <br>
　EngineeringReference_chapter06.adoc <br>
その他一次エネルギー消費量 <br>
　EngineeringReference_chapter09.adoc <br>
基準一次エネルギー消費量 <br>
　EngineeringReference_chapter10.adoc <br>

→ htmlファイルの生成は、マージした後、管理者の方で行います。



[1]:https://asciidoctor.org/docs/user-manual/
[2]:https://takumon.github.io/asciidoc-syntax-quick-reference-japanese-translation/
[3]:http://www.latex-cmd.com/
[4]:https://oeis.org/wiki/List_of_LaTeX_mathematical_symbols

## DockerによるAsciiDocの変換
Dockerがインストールされていれば、以下のコマンドでAsciiDocファイルをHTMLに変換できます。

```
docker-compose run asciidoctor
```

# 建築物省エネ基準（非住宅建築物）<br>Webプログラムの一次エネルギー消費量算定方法の解説

[![CircleCI Build Status](https://circleci.com/gh/WEBPRO-NR/BESJP_EngineeringReference.svg?style=shield)](https://app.circleci.com/pipelines/github/WEBPRO-NR/BESJP_EngineeringReference)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/WEBPRO-NR/BESJP_EngineeringReference/blob/master/LICENSE)
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/WEBPRO-NR/BESJP_EngineeringReference)
![GitHub developping](https://img.shields.io/badge/developping-ver.3.0%CE%B2-orange)


<br>

## 公開用URL（HTML）

### 1. 一次エネルギー消費量算定方法の解説

https://webpro-nr.github.io/BESJP_EngineeringReference/index.html

### 2. 入力シートからXMLへの変換仕様

https://webpro-nr.github.io/BESJP_EngineeringReference/csv2xml/index.html

<br>

## 編集される方へ
誤字脱字のご指摘、分かりにくい箇所のご指摘等、大歓迎です。気軽にプルリクエストをお願いします。

* この文章は、asciidocで書かれています。詳細は[こちら][1]をご覧下さい。日本語版は[こちら][2]。
* 数式入力（latex）については、[こちら][3]に従うこととします。
* 数式記号の入力は[こちら][4]をご覧下さい。

<br>

編集される場合は、.adocファイルを編集してください。
「一次エネルギー消費量算定方法の解説」については、設備ごとにファイルを分けており、対応は以下の通りです。

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
コージェネレーション設備 <br>
　EngineeringReference_chapter08.adoc <br>
その他一次エネルギー消費量 <br>
　EngineeringReference_chapter09.adoc <br>
基準一次エネルギー消費量 <br>
　EngineeringReference_chapter10.adoc <br>

「入力シートからXMLへの変換仕様」については、入力シート毎にファイルを分けており、対応は以下の通りです。

様式0 基本情報入力シート <br>
　basic_information.adoc <br>
様式1 室仕様入力シート <br>
　room.adoc <br>
様式2-1 空調ゾーン入力シート <br>
　air_conditioning_zone.adoc <br>
様式2-2 外皮構成入力シート <br>
　wall_configuration.adoc <br>
様式2-3 窓仕様入力シート <br>
　window_configuration.adoc <br>
様式2-4 外皮構成入力シート <br>
　envelope.adoc <br>
様式2-5 熱源入力シート <br>
　heat_source.adoc <br>
様式2-6 二次ポンプ入力シート <br>
　secondary_pump.adoc <br>
様式2-7 空調機入力シート <br>
　air_handling_unit.adoｃ <br>
様式3-1 換気対象室入力シート <br>
　ventilation_room.adoc <br>
様式3-2 給排気送風機入力シート <br>
　ventilation_fan.adoc <br>
様式3-3 換気代替空調機入力シート <br>
　ventilation_air_conditioner.adoc <br>
様式4 照明入力シート <br>
　lighting.adoc <br>
様式5-1 給湯対象室入力シート <br>
　hot_water_room.adoc <br>
様式5-2 給湯機器入力シート <br>
　hot_water_boiler.adoc <br>
様式6 昇降機入力シート <br>
　elevator.adoc <br>
様式7-1 太陽光発電システム入力シート <br>
　photovoltaic_generation.adoc <br>
様式7-2 コージェネレーション設備入力シート（CASCADE用） <br>
　cogeneration.adoc <br>
様式7-3 コージェネレーション設備入力シート <br>
　cogeneration_details.adoc <br>
様式8 非空調室の外皮仕様入力シート <br>
　non_ac_envelope.adoc <br>
各シート共通の変換ルール <br>
　common.adoc <br>

[1]:https://asciidoctor.org/docs/user-manual/
[2]:https://takumon.github.io/asciidoc-syntax-quick-reference-japanese-translation/
[3]:http://www.latex-cmd.com/
[4]:https://oeis.org/wiki/List_of_LaTeX_mathematical_symbols

## DockerによるAsciiDocの変換
Dockerがインストールされていれば、以下のコマンドでAsciiDocファイルをHTMLに変換できます。

```
docker-compose run asciidoctor
```

## HTMLの更新
masterブランチが更新されると、CircleCI により.adocファイルから.htmlファイルが自動生成されます。

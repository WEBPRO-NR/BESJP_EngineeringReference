#!/usr/bin/env bash

DIR=$(dirname "$0")

# 計算仕様書の変換（公開用）
for ADOC in $(find "$DIR" -name '*.adoc' -maxdepth 1 -printf '%f\n'); do
    INPUT_ADOC="$ADOC"
    OUTPUT_HTML=docs/${ADOC/.adoc/.html}
    echo "Convert '$INPUT_ADOC' to '$OUTPUT_HTML'."
    asciidoctor -o "$DIR"/"$OUTPUT_HTML" "$DIR"/"$INPUT_ADOC"
done

# 計算仕様書の変換（開発者用）
for ADOC in $(find "$DIR" -name '*.adoc' -maxdepth 1 -printf '%f\n'); do
    INPUT_ADOC="$ADOC"
    OUTPUT_HTML=docs/dev/${ADOC/.adoc/.html}
    echo "Convert '$INPUT_ADOC' to '$OUTPUT_HTML'."
    asciidoctor -a for-dev -o "$DIR"/"$OUTPUT_HTML" "$DIR"/"$INPUT_ADOC"
done

# CSVからXMLへの変換仕様書の変換
INPUT_ADOC=csv2xml/index.adoc
OUTPUT_HTML=docs/csv2xml/index.html
echo "Convert '$INPUT_ADOC' to '$OUTPUT_HTML'."
asciidoctor -o "$DIR"/"$OUTPUT_HTML" "$DIR"/"$INPUT_ADOC"

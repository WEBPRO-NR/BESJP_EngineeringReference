#!/usr/bin/env bash

DIR=$(dirname "$0")
for ADOC in $(find "$DIR" -name '*.adoc' -maxdepth 1 -printf '%f\n'); do
    INPUT_ADOC="$ADOC"
    OUTPUT_HTML=docs/${ADOC/.adoc/.html}
    echo "Convert '$INPUT_ADOC' to '$OUTPUT_HTML'."
    asciidoctor -o "$DIR"/"$OUTPUT_HTML" "$DIR"/"$INPUT_ADOC"
done

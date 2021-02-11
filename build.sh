if [ ! -f SSG.jar ]; then
    sh ./download.sh
fi

java -jar SSG.jar \
    --default-template index \
    --output-path build \
    --sources-path site \
    --template-path templates \
    --section doc

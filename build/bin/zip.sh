source build/bin/config.sh

# Packaging up the files into a zip archive
mkdir -p tmp
cp -R $OUTPUT tmp/$NAME
# ... And remove the Zipped docs so they aren't included twice (for deploy scripts)
rm -rf tmp/$NAME/$NAME/*.zip
cd tmp; zip -rq ../$OUTPUT/$NAME.zip $NAME
rm -rf tmp
# -------------------------------------------------

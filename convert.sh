# files=`find . -name '*.cpp' | xargs enca -L zh | grep GB2312 | cut -d: -f1`
cpp_files=`find . -name '*.cpp'`
for f in $cpp_files
do
    # echo f
    iconv -f GBK -t UTF-8 $f > $f.utf && mv -f $f.utf $f && echo "$f done"
done

echo "change encode finish."

utf_files=`find . -name '*.utf'`
for f in $utf_files
do
    # echo f
    # iconv -f GBK -t UTF-8 $f > $f.utf && mv -f $f.utf $f && echo "$f done"
    rm -rf $f
done
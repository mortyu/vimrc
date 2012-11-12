$destdir=$(pwd)/doc
mkdir -p $destdir
find bundle -name 'doc' -type d -exec cp * $destdir \;

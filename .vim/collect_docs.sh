pwd=$(pwd)
mkdir -p doc 
find bundle -name 'doc' -type d -exec cp {} $pwd/ -r \;

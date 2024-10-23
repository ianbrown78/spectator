#!/bin/sh

export PORT=$1

/bin/echo "Setting spectator port to $PORT"

/bin/echo "PORT = $PORT;" >> public\utils.js

/bin/rm -f index.html
/bin/cat index-noport.html >> index.html
/bin/echo "PORT = $PORT;" >> index.html
/bin/echo '</script>' >> index.html
/bin/echo '</html>' >> index.html

/bin/rm -f index.html.gz
/bin/gzip -k index.html

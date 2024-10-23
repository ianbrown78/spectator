
set PORT=%1

echo setting spectator port to %PORT%

@echo off

echo PORT = %PORT%; >> public\utils.js

del index.html
cat index-noport.html >> index.html
echo PORT = %PORT%; >> index.html
echo ^</script^> >> index.html
echo ^</html^> >> index.html

del index.html.gz
gzip -k index.html


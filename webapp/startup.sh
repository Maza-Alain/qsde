apt-get install nodejs -y
apt-get install npm -y
echo 'se instalaron npm yb node'
cd webapp
# npm run build && echo '¡Se completó el build!' && ls && rm -r ../public/ && cp -r dist/ ../public/
# # echo 'se completo el build'
# # ls
npm i
npm run build
rm -r ../public/
cp -r dist/ ../public/
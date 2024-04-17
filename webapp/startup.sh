sudo apt-get install nodejs
sudo apt install npm
cd webapp
# npm run build && echo '¡Se completó el build!' && ls && rm -r ../public/ && cp -r dist/ ../public/
# # echo 'se completo el build'
# # ls
npm i
npm run build
rm -r ../public/
cp -r dist/ ../public/
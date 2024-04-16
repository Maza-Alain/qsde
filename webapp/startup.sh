cd webapp
npm run build
echo 'se completo el build'
ls
rm -r ../public/
cp -r dist/ ../public/
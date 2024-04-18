# apt-get install nodejs -y
apt-get install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \.
echo '----------------se instaló nvm'
nvm install node 20
nvm use node 20
apt-get install npm -y
echo 'se instalaron npm y node'
cd webapp
# npm run build && echo '¡Se completó el build!' && ls && rm -r ../public/ && cp -r dist/ ../public/
# # echo 'se completo el build'
# # ls
ls ../public/
npm i
npm run build
rm -r ../public/
cp -r 'dist/* ../public/'
ls ../public/
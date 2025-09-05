hugo

cd public
DATE=`date +%d/%m/%Y" - "%H:%M:%S`

git add -A 
git commit -m "nova versão do site $DATE"
git push 

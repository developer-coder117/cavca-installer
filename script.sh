for i in $(cat source.txt)
do
git clone $i
done
ls > files.txt
for f in $(cat files.txt)
do
cd $f && npm i && npm run compile && cd ..
done

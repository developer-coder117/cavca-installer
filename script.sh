for i in $(cat sources.txt)
do
git clone $i
done
ls | grep cavca > files.txt
for f in $(cat files.txt)
do
cd $f && npm i && npm run compile && cd ..
done
rm -rf files.txt

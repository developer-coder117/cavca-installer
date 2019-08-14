ls > files.txt
for f in $(cat files.txt)
do
echo "[ $f ]"
cd $f && git pull && npm run compile && cd ..
done
rm -rf files.txt

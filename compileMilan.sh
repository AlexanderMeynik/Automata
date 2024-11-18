# 1 - .mil file
# 2 - output file
./apps/cmilan.exe $1.mil ->res/$1.ms
if [ $2 -eq 0 ]
then
cat  res/$1.ms
fi
echo ""
echo ""
echo ""

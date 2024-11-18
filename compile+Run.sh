echo "compile+run:"
if [ -n "$2" ]
then
./s.sh $1 $2
else
./s.sh $1 1
fi

./r.sh $1
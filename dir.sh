echo "Enter directory name"
read dir
if [ ! -d $dir ]
then
echo "Invalid directory"
exit
fi
large=0
for file in `find $dir -typef`
do
size =`stat -c %s$file`
echo "Size of $file is $size"
if [ $size -gt $large ]
then
large=size
fi
done
echo "File with maximum size is large"



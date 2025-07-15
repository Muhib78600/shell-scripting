
echo "enter file_name"
read file_name
if [ -e $file_name ]
then
   echo "file exist"
   else 
   echo "not exist"
   fi
  echo "add extention"
  read extention
  newfile="$file_name.$extention"
  echo "$newfile"
  mv "$file_name" "$newfile"
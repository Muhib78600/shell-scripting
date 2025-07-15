echo -n "Enter directory path: "
read dir
if [ -d "$dir" ]; then
  files=$(find "$dir" -maxdepth 1 -type f | wc -l)
  dirs=$(find "$dir" -maxdepth 1 -type d | wc -l)
  dirs=$((dirs - 1))  # exclude the current directory itself
  echo "Total files: $files"
  echo "Total directories: $dirs"
else
  echo "Directory does not exist."
fi

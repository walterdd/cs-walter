#! /bin/bash
del_files_from_dir ()
{
cd $1	#$1 - адрес каталога, указанный в 1 аргументе
pwd
ls > "ls.txt"
while read cur_file
do
  while read cur_temp
  do
    if [[ $cur_file == $cur_temp && -f "./$cur_file" ]]
    then
      rm "./$line"
    elif [[ -d "./$cur_file" ]]
    then
      del_files_from_dir "./cur_file" $2
      pwd
    fi
  done < "$2"	#во втором аргументе templates.txt
done < "ls.txt"
rm "./ls.txt"
}

del_files_from_dir /Users/walter/catalog /Users/walter/templates.txt

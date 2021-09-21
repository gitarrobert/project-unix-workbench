echo "How many files are in the current folder? Make a guess:"

function count_files {
number_of_files=$( ls | wc -l )
}

count_files
gameover=0 # condition is set to continue the while loop as long as gameover=0
while [[ gameover -eq 0 ]]
do
read response
if [[ $response -gt $number_of_files ]]
then
gameover=0
echo "Your number is to high"
echo "How many files are in the current folder? Make another guess:"
elif [[ $response -lt $number_of_files ]]
then
gameover=0
echo "Your number is to low"
echo "How many files are in the current folder? Make another guess:"
elif [[ $response -eq $number_of_files ]]
then
echo "Congratulations!! You typed in the correct number of files in the current folder"
gameover=1
fi
done
echo "the number of files in the current directory is $number_of_files_in_cur_dir"


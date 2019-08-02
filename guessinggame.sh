#!/usr/bin/env bash
# File: guessinggame.sh

main () 
{
   count=$(get_file_count)

   local correct=false

   while [[ $correct = false ]] ; do
      echo "Enter your guess"
      read guess
      if [[ $guess = $count ]]; then 
         echo "Correectdemundo" 
         correct=true
      else 
         echo "Wrong. Try again homie"
         echo ""
      fi
   done

   echo "Bye Bye \o"
}

# Assuming the prompt means find FILES exclusively; not Dirs also
# Logic: list files; exclude lines starting with d (dirs) and t (total); get line count
get_file_count () 
{
   count=$(ls -l |egrep -v "(^d|^t)" |wc -l)
   echo "$count"
}



main "${@}"

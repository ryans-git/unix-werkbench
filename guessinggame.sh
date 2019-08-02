#!/usr/bin/env bash
# File: guessinggame.sh

main () 
{
   local correct=false

   while [[ $correct = false ]] ; do
      echo "Enter your guess"
      read guess
      if [[ $guess = "2" ]]; then 
         echo "Correectdemundo" 
         correct=true
      else 
         echo "Wrong. Try again homie"
         echo ""
      fi
   done

   echo "done"
}



main "${@}"

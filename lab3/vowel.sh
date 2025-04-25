#!/bin/bash

echo -n "Enter an alphabet:"
read  alphabet
case $alphabet in
        a)
          echo "vowel" ;;
        e)
          echo  "vowel" ;;
        i)
          echo "vowel" ;;
        o)
          echo  "vowel" ;;
        u)
          echo "vowel" ;;
        A)
          echo  "vowel" ;;
        E)
          echo "vowel" ;;
	I)
  	  echo "vowel" ;;
	O)
	  echo "vowel" ;;
	U)
	  echo "vowel" ;;
*)
        echo "Not a vowel"
esac


#!/bin/bash

echo This is a program that requires your input...are you ready? [y/n]
read ans1
if [ "$ans1" == "y" ]
  then
    echo ok.
  else
    echo ok the program will end now...
    exit
fi
echo what color are carrots?
while :
do
  read ans2
  if [ "$ans2" == "orange" ]
    then
      echo ok.
      break
    else
      echo no. try again.
  fi
done
echo what part of the body do carrots help?
while :
do
    read ans3
  if [ "$ans3" == "eyes" ] || [ "$ans3" == "eye" ]
    then
      echo ok.
      break
    else
      echo no try again.
  fi
done
echo So...if carrots are orange, and they help eyes...then carrots are...
declare -i tries=5
while :
do
    read ans4
    if [ "$ans4" == "orange eyedrops" ]
      then
        echo YES!!! You are a true genius!
        exit
      else
        let tries--
        if [ $tries -eq 0 ]
          then
            echo NO! they are orange eyedrops...i laid it out for you...
            exit
          else
            echo no try again...you have $tries tries left
          fi
        fi
done

#!/bin/bash

prog=$1 ;


programs=(
ProMo_OntologyFoundationDesigner.py     #0
ProMo_OntologyEquationComposer.py       #1
ProMo_ComposerGraphComponentDesigner.py #2
ProMo_BehaviourLinker.py                #3
ProMo_ComposerAutomataDesigner.py       #4
ProMo_TypedTokenEditor.py               #5
ProMo_ModelComposer.py                  #6
)

label=( "foundation: ${programs[0]}"
        "equations:  ${programs[1]}"
        "components: ${programs[2]}"
        "linker:     ${programs[3]}"
        "automaton:  ${programs[4]}"
        "typedtoken: ${programs[5]}"
        "modeller:   ${programs[6]}"
)


case $1 in

  "help")
    bash show_doc.sh ;
    exit ;;
  
  *)
    echo "no such program -- exit" ;
    exit ;;
esac ;


echo "" ;
echo "ProMo tools" ;
echo "===========" ;
echo "" 
echo "what program ?";
arg=0

if [ $# -eq 0 ] ;
  then
    echo "  what program?" ;
    echo "invalid entry: $1  -- choose from:" ;
    for prog in "${label[@]}"; do
      echo "-    $prog" ;
    done 
    read prog ;
  else
    arg=1
fi ;



valid=1

case $prog in 

  "foundation")
  prog=0 ;;
  
  "equations")
  prog=1 ;;
  
  "componets")
  prog=2 ;;
  
  "linker")
  prog=3 ;;
  
  "automaton")
  prog=4 ;;
  
  "typedtoken")
  prog=5 ;; 
  
  "modeller")
  prog=5 ;;
  
  "help")
  bash show_doc.sh ;
  exit ;;
  
  *)
  valid=0 ;;
      
esac

case $valid in
  0)
    if [ $arg -eq 1 ]
      then
        echo "invalid entry: $1  -- choose from:" ;
        for prog in "${label[@]}"; do
          echo "-    $prog" ;
        done ;
      else
      echo "try again with ./task.py <task>"
    fi ;;
  1)
    echo "start program" "${programs[$prog]}"  ;
    python3 "${programs[$prog]}" ;;
esac

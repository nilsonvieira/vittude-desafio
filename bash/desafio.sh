#!/bin/bash

# Na sequência numérica de 0 a 9 qual o valor que não está disponível nos 2 arrays abaixo?
# [0,1,2,3,4,6,7,8,9] = 5
# [0,1,2,3,4,5,6,8,9] = 7

LIST=( `seq 0 9` )

A=( 0 1 2 3 4 6 7 8 9 )
B=( 0 1 2 3 4 5 6 8 9)

for i in "${LIST[@]}"; do
    TES=
    for j in "${A[@]}"; do
        [[ $i == $j ]] && { TES=1; break; }
    done
    [[ -n $TES ]] || found1+=("$i")
    TES=
    for l in "${B[@]}"; do
        [[ $i == $l ]] && { TES=1; break; }
    done
    [[ -n $TES ]] || found2+=("$i")
done
echo "A Resposta para o Primeiro ARRAY: $found1"
echo "A Resposta para o Segundo  ARRAY: $found2"

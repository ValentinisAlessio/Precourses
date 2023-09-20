#!/bin/bash

# This is a comment

A=1; # this is a variable assignment
B=2; # also this

echo $A"_$B_test${B}_test"
# $ is the evaluating token
# In the quotation mark, the compiler tries to copmute B_test (it's like ${B_test}), while in the second $ it evaluates only B

echo ${A}/${B} = $((A/B))

echo $1 $2 $@ $# # returns the parameter 1, parameter 2, list of parameters, number of parameters

if [ $# -ne 2]; then
    (>&2 echo "Error: expected 2 parameters")

    exit 1
fi

echo $(($1 + $2))
exit 0
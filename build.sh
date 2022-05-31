#!/bin/bash

while getopts n:b:f:p:d: flag
do
    case "${flag}" in
        # new branch creation command 
        n) git branch ${OPTARG};;
        # change selected branch
        b) git checkout ${OPTARG};;

    esac
done

mvn package


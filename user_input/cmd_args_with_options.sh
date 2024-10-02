#!/bin/bash

# `u:` A short option that does not require an argument.
# `p:` A short option that requires an argument
# The colon : indicates that the option expects a value.

while getopts u:p: flag
do
    case "${flag}" in
        u) username=${OPTARG};;
        p) password=${OPTARG};;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
    esac
done
echo "Username: $username"
echo "Password: $password"

#!/bin/bash
echo "First argument: $1"
echo "Second argument: $2"
echo "Thirty Second argument: $3"

echo

echo "Number of arguments: $#"
echo "All arguments: $@"

echo
echo

echo "After 2 shifts"

shift 2

echo "Number of arguments: $#"
echo "All argument snow: $@"

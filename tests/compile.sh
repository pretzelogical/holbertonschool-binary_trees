#!/usr/bin/env bash
# compiles tests based on project number
test="$1.c"
confirmSpeak="Compiling test $test"

case $1 in
	0)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../print.c -o "$1.out"
		;;
	1)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../1-binary_tree_insert_left.c ../print.c -o "$1.out"
		;;
	2)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c -o "$1.out"
		;;
	*)
		echo "._."
		;;
esac

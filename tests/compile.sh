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
	3)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c ../3-binary_tree_delete.c -o "$1.out"
		;;
	4)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c ../4-binary_tree_is_leaf.c -o "$1.out"
		;;
	6)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c ../6-binary_tree_preorder.c -o "$1.out"
		;;
	9)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c ../9-binary_tree_height.c -o "$1.out"
		;;
	10)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c ../10-binary_tree_depth.c -o "$1.out"
		;;
	11)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c ../11-binary_tree_size.c -o "$1.out"
		;;
	12)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c ../12-binary_tree_leaves.c -o "$1.out"
		;;
	13)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c ../13-binary_tree_nodes.c -o "$1.out"
		;;
	14)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../1-binary_tree_insert_left.c ../print.c ../14-binary_tree_balance.c -o "$1.out"
		;;
	15)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c ../15-binary_tree_is_full.c -o "$1.out"
		;;
	16)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c ../16-binary_tree_is_perfect.c -o "$1.out"
		;;
	17)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c ../17-binary_tree_sibling.c -o "$1.out"
		;;
	18)
		echo "$confirmSpeak"
		gcc -Wall -Werror -Wextra -pedantic -std=gnu89 "$test" ../0-binary_tree_node.c ../2-binary_tree_insert_right.c ../print.c ../18-binary_tree_uncle.c -o "$1.out"
		;;
	*)
		echo "._."
		;;
esac

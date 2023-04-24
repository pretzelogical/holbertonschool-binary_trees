#include "binary_trees.h"

/**
 * binary_tree_is_full - checks if a binary tree is full
 * @tree: pointer to the root node of the tree to check
 *
 * Return: 1 if tree is full, 0 otherwise
*/
int binary_tree_is_full(const binary_tree_t *tree)
{
	int leftCount, rightCount;

	if (tree == NULL)
		return (0);
	if (tree->left == NULL && tree->right == NULL)
		return (1);
	if (tree->left)
		leftCount = binary_tree_is_full(tree->left);
	else
		leftCount = 0;
	if (tree->right)
		rightCount = binary_tree_is_full(tree->right);
	else
		rightCount = 0;
	if ((leftCount != rightCount) || (leftCount == 0 && rightCount == 0))
		return (0);
	return (1);
}

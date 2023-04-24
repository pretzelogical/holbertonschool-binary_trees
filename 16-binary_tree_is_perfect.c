#include "binary_trees.h"

/**
 * binary_tree_is_perfect_h - measures the height of a binary tree
 * @tree: pointer to the root node of the tree to measure the height
 *
 * Return: height of the tree or 0 if tree is NULL
*/
int binary_tree_is_perfect_h(const binary_tree_t *tree)
{
	if (!tree || !tree->parent)
		return (0);

	return (binary_tree_is_perfect_h(tree->left)
		+ binary_tree_is_perfect_h(tree->right)
		+ 1);
}

/**
 * binary_tree_is_perfect - checks if a binary tree is perfect
 * @tree: pointer to the root node of the tree to check
 *
 * Return: 1 if perfect, 0 otherwise
*/
int binary_tree_is_perfect(const binary_tree_t *tree)
{
	int leftHeight, rightHeight;

	if (!tree)
		return (0);

	leftHeight = 0;
	rightHeight = 0;

	if (tree->left && tree->right)
	{
		leftHeight = binary_tree_is_perfect_h(tree->left);
		rightHeight = binary_tree_is_perfect_h(tree->right);
	}
	if (leftHeight == rightHeight)
		return (1);

	return (0);
}

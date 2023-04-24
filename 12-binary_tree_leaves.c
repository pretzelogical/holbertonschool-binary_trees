#include "binary_trees.h"

/**
 * recursive_leaves- measures the leaves of a binary tree recursively
 * @tree: pointer to the root node of the tree to measure leaves of
 * @leaves: pointer to the number of leaves in the tree
 *
 * Return: void
*/
void recursive_leaves(const binary_tree_t *tree, size_t *leaves)
{
	if (tree == NULL)
		return;

	if (tree->parent != NULL &&
	tree->left == NULL &&
	tree->right == NULL)
	{
		*leaves += 1;
	}

	if (tree->left != NULL)
		recursive_leaves(tree->left, leaves);
	if (tree->right != NULL)
		recursive_leaves(tree->right, leaves);
}

/**
 * binary_tree_leaves- measures the leaves of a binary tree
 * @tree: pointer to the root node of the tree to measure leaves of
 *
 * Return: size of the tree or 0 if tree is NULL
*/
size_t binary_tree_leaves(const binary_tree_t *tree)
{
	size_t leftLeaves, rightLeaves;

	if (tree == NULL)
		return (0);

	leftLeaves = 0;
	rightLeaves = 0;

	recursive_leaves(tree->left, &leftLeaves);
	recursive_leaves(tree->right, &rightLeaves);

	if (tree->left == NULL && tree->right == NULL)
		return ((leftLeaves + rightLeaves) + 1);
	else
		return (leftLeaves + rightLeaves);
}

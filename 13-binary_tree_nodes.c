#include "binary_trees.h"

/**
 * recursive_nodes - counts the nodes with at least 1 child in a binary tree
 * recursively
 * @tree: pointer to the root node of the tree to count the number of nodes
 * @nodes: pointer to the number of nodes
 *
 * Return: void
*/
void recursive_nodes(const binary_tree_t *tree, size_t *nodes)
{
	if (tree == NULL)
		return;
	if (tree->left == NULL && tree->right == NULL)
		return;

	recursive_nodes(tree->left, nodes);
	recursive_nodes(tree->right, nodes);

	*nodes += 1;
}

/**
 * binary_tree_nodes - counts the nodes with at least 1 child in a binary tree
 * @tree: pointer to the root node of the tree to count the number of nodes
 *
 * Return: number of nodes with at least 1 child
*/
size_t binary_tree_nodes(const binary_tree_t *tree)
{
	size_t nodes;

	if (tree == NULL)
		return (0);
	nodes = 0;

	recursive_nodes(tree, &nodes);
	return (nodes);
}

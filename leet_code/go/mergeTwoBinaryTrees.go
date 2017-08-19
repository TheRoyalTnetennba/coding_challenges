package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 * new node = sum of left and right
 */
func mergeTrees(t1 *TreeNode, t2 *TreeNode) *TreeNode {
	if t1 == nil && t2 == nil {
		return nil
	} else if t1 == nil {
		return t2
	} else if t2 == nil {
		return t1
	}
	t1.Val = t1.Val + t2.Val
	merger(t1, t2)
	return t1
}

func merger(p1, p2 *TreeNode) {
	if p1.Left == nil && p2.Left != nil {
		p1.Left = p2.Left
	} else if p1.Left != nil && p2.Left != nil {
		p1.Left.Val += p2.Left.Val
		merger(p1.Left, p2.Left)
	}
	if p1.Right == nil && p2.Right != nil {
		p1.Right = p2.Right
	} else if p1.Right != nil && p2.Right != nil {
		p1.Right.Val += p2.Right.Val
		merger(p1.Right, p2.Right)
	}
}

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}

def build_tree(preorder, inorder)
    # boudries
    return nil if preorder.empty? || inorder.empty?
    # the first node of preorder is root
    root = TreeNode.new(preorder.shift)
    # find the index of root value in inorder, the left side is all nodes belongs to left side of the tree, same to the right.
    idx = inorder.find_index(root.val)
    root.left = build_tree(preorder, inorder.slice(0..(idx - 1))) unless idx == 0
    root.right = build_tree(preorder, inorder.slice((idx + 1)..-1)) unless idx == inorder.size - 1
    root
end


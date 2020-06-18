# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def sames(node)
    left = node.left ? node.val == node.left.val : true
    right = node.right ? node.val == node.right.val : true
    left && right
end

def unival(root)
    return true if !root
    return false unless sames(root)
    unival(root.left) && unival(root.right)
end

def count_unival_subtrees(root)
    return 0 if !root
    count = 0
    count += 1 if unival(root)
    count + count_unival_subtrees(root.left) + count_unival_subtrees(root.right)
end
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
def max_depth(root)
    return 0 if !root
    @ans = 0
    helper(root, 1)
    @ans
end

def helper(node, depth)
    @ans = depth if @ans < depth
    helper(node.left, depth + 1) if node.left
    helper(node.right, depth + 1) if node.right
end
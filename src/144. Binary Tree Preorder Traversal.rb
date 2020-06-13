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
# @return {Integer[]}
def preorder_traversal(root)
    return [] if !root
    stack = [root]
    ans = []
    while stack.any?
        root = stack.pop()
        if root
            ans << root.val
            stack << root.right if root.right
            stack << root.left if root.left
        end
    end
    ans           
end
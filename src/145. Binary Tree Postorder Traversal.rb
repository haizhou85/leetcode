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
def postorder_traversal(root)
    return [] if !root
    stack = [root]
    ans = []
    while stack.any?
        root = stack.pop()
        ans << root.val
        stack << root.left if root.left
        stack << root.right if root.right
    end
    ans.reverse()
end
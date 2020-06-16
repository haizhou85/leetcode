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
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
    return false if !root
    sum -= root.val
    if !root.left && !root.right
        return sum == 0
    end
    has_path_sum(root.right, sum) || has_path_sum(root.left, sum)
end

# Iterative
def has_path_sum(root, sum)
    return false if !root
    stack = [[root, sum - root.val]]
    while stack.any?
        node, curr_sum = stack.pop()
        return true if !node.left && !node.right && curr_sum == 0
        stack << [node.left, curr_sum - node.left.val] if node.left
        stack << [node.right, curr_sum - node.right.val] if node.right
    end
    false
end
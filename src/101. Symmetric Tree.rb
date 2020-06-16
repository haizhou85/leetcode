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
# @return {Boolean}
def is_symmetric(root)
    is_mirror(root, root)
end

def is_mirror(tree1, tree2)
    return true if tree1 == nil && tree2 == nil
    return false if tree1 == nil || tree2 ==nil
    tree1.val == tree2.val && is_mirror(tree1.right, tree2.left) && is_mirror(tree1.left, tree2.right)
end

# iterative
def is_symmetric(root)
    q = [root, root]
    while q.any?
        t1, t2 = q.shift(2)
        next if t1 == nil && t2 == nil
        return false if t1 == nil || t2 == nil
        if t1.val != t2.val
            return false
        else
            q << t1.left
            q << t2.right
            q << t1.right
            q << t2.left
        end
    end
    true
end

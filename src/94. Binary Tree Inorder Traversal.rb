# recurive
def inorder_traversal(root)
    ans = []
    helper(root, ans)
    ans
end

def helper(root, ans)
    if root
        helper(root.left, ans) if root.left
        ans << root.val
        helper(root.right, ans) if root.right
    end
end


# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
    return nums if nums.size < 2
    head = 0
    tail = nums.size - 1
    curr = 0
    while curr <= tail && head < tail
        if nums[curr] == 0
            nums[curr] = nums[head]
            nums[head] = 0
            curr += 1
            head += 1
        elsif nums[curr] == 2
            nums[curr] = nums[tail]
            nums[tail] = 2
            tail -= 1
        else
            curr += 1
        end
    end
    nums      
end
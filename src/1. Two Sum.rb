# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# brutal force
def two_sum(nums, target)
    return [0, 1] if nums.size < 3
    start = 0
    while start < nums.size - 1
        add = start + 1
        while add < nums.size
            return [start, add] if nums[start] + nums[add] == target
            add += 1
        end
        start += 1
    end
end

# hashmap one pass
def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |num, i|
        add = target - num
        if hash[add]
            return [hash[add], i]
        else
            hash[num] = i
        end
    end
end
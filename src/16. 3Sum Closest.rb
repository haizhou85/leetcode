# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
    nums.sort!
    diff = 100000
    nums.each_with_index do |num, i|
        left = i + 1
        right = nums.size - 1
        while left < right
            sum = num + nums[left] + nums[right]
            if diff.abs() > (target - sum).abs()
                diff = target - sum
            end
            return target if diff == 0
            if sum < target
                left += 1
            else
                right -= 1
            end
        end
    end
    target - diff
end
# @param {Integer[]} nums
# @return {Integer[][]}
# two pointer
def three_sum(nums)
    nums.sort!
    ans = []
    nums.each_with_index do |num, i|
        return ans if num > 0
        left = i + 1
        right = nums.size - 1
        while left < right && (i == 0 || num != nums[i - 1])
            if num + nums[left] + nums[right] < 0 || (left > i + 1 && nums[left] == nums[left - 1])
                left += 1
            elsif num + nums[left] + nums[right] > 0 || (right < nums.size - 1 && nums[right] == nums[right + 1])
                right -= 1
            else
                ans << [num, nums[left], nums[right]]
                left += 1
                right -= 1
            end
        end
    end
    ans            
end
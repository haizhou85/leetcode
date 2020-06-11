# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    left = 0
    right = numbers.size - 1
    while left < right
        sum = numbers[left] + numbers[right]
        if sum == target
            return [left + 1, right + 1]
        elsif sum < target
            left += 1
        else
            right -= 1
        end
    end
end
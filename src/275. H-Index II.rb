# @param {Integer[]} citations
# @return {Integer}
def h_index(citations)
    n = citations.length
    left, right = 0, n - 1
    while left <= right
        pivot = (right + left) / 2
        if citations[pivot] == n - pivot
            return n - pivot
        elsif citations[pivot] < n - pivot
            left = pivot + 1
        else
            right = pivot - 1
        end
    end
    return n - left
end
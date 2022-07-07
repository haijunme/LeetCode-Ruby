# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_smaller(nums, target)
  nums.sort!
  n, result = nums.length, 0
  (0..n - 1).each do |i|
    left, right = i + 1, n - 1
    while left < right do
      if nums[left] + nums[right] + nums[i] < target
        result += right - left
        left += 1
      else
        right -= 1
      end
    end
  end

  result
end

puts three_sum_smaller([3, 1, 0, -2], 4)


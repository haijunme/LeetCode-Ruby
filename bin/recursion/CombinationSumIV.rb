# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def combination_sum4(nums, target)
  nums.sort!
  memo = Array.new(target + 1, 0)
  memo[0] = 1

  (1..target).each do |i|
    count = 0
    nums.each do |candidate|
      if i - candidate < 0
        break
      end
      count += memo[i - candidate]
    end
    memo[i] = count
  end

  memo[target]
end

puts combination_sum4([4,2,1], 32)
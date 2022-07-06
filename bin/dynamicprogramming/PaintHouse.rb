# @param {Integer[][]} costs
# @return {Integer}
def min_cost(costs)
  n = costs.length
  memo = Array.new(n) { Array.new(3, 0) }
  memo[0] = costs[0]
  (1..n - 1).each do |counter|
    local_cost = memo[counter]
    previous_cost = memo[counter - 1]
    local_cost[0] = [previous_cost[1], previous_cost[2]].min + costs[counter][0]
    local_cost[1] = [previous_cost[0], previous_cost[2]].min + costs[counter][1]
    local_cost[2] = [previous_cost[0], previous_cost[1]].min + costs[counter][2]
  end

  memo[n-1].min
end

sample_input = [[17,2,17],[16,16,5],[14,3,19]]
puts min_cost(sample_input)

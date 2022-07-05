require 'rubygems'
require 'algorithms'

class MovingAverage

=begin
    :type size: Integer
=end
  def initialize(size)
    @size = size
    @running_sum = 0
    @queue = Containers::RubyDeque.new
  end


=begin
    :type val: Integer
    :rtype: Float
=end
  def next(val)
    if @queue.size == @size
      @running_sum -= @queue.pop_front
    end
    @queue.push_back val
    @running_sum += val

    @running_sum.to_f / @queue.size
  end

end

moving_average = MovingAverage.new 3
puts moving_average.next(1)
puts moving_average.next(10)
puts moving_average.next(3)
puts moving_average.next(5)
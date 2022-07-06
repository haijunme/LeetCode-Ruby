require 'algorithms'

class MyLogger

  def initialize
    @timestamp_map = Hash.new
  end

=begin
    :type timestamp: Integer
    :type message: String
    :rtype: Boolean
=end
  def should_print_message(timestamp, message)
    if @timestamp_map.key?(message) && timestamp < @timestamp_map[message]
      false
    else
      @timestamp_map[message] = timestamp + 10
      true
    end
  end

end

logger = MyLogger.new
puts logger.should_print_message(1, "foo")
puts logger.should_print_message(2, "bar")
puts logger.should_print_message(3, "foo")
puts logger.should_print_message(8, "bar")
puts logger.should_print_message(10, "foo")
puts logger.should_print_message(11, "foo")

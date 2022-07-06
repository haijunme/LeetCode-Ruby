module PalindromePermutation

  def can_permute_palindrome(s)
    character_count = Array.new(26, 0)
    s.each_byte { |char_code| character_count[char_code - 'a'.ord] += 1 }
    odd_count_encountered = 0
    character_count.each { |count| odd_count_encountered += count % 2 != 0 ? 1 : 0 }

    odd_count_encountered <= 1
  end
  module_function :can_permute_palindrome

end


puts PalindromePermutation.can_permute_palindrome("code")
puts PalindromePermutation.can_permute_palindrome("aab")
puts PalindromePermutation.can_permute_palindrome("carerac")
require 'benchmark'
require_relative 'big_o'
require_relative 'window'
require_relative 'two_sum'

arr = (0..10_000_000).to_a.shuffle

# puts "bad min"
# puts Benchmark.measure {my_min(arr)}
#
# puts "good min"
# puts Benchmark.measure {my_min_better(arr)}

# puts "bad lcs"
# puts Benchmark.measure {largest_contiguous_subsum(arr)}
#
# puts "good lcs"
# puts Benchmark.measure {better_lcs(arr)}

# puts "window range with unshift"
# puts Benchmark.measure {optimized_max(arr, 1)}
# puts Benchmark.measure {optimized_max(arr, 2)}
# puts Benchmark.measure {optimized_max(arr, 5)}
# puts Benchmark.measure {optimized_max(arr, 100)}

# puts "anagram 1"
# puts Benchmark.measure {first_anagram?("something", "not me")}
#
# puts "anagram 2"
# puts Benchmark.measure {second_anagram?("something", "not me")}

# first_word = (("a".."z").to_a.shuffle.join("")) * 1_000_000
# second_word = (("a".."y").to_a.shuffle.join("") + "a") * 1_000_000
#
# puts "anagram 3"
# puts Benchmark.measure {third_anagram?(first_word, second_word)}
#
# puts "anagram 4"
# puts Benchmark.measure {fourth_anagram?(first_word, second_word)}

# puts "bad_two_sum"
# puts Benchmark.measure {bad_two_sum?(arr, 2_000_000)}

puts "okay_two_sum"
puts Benchmark.measure {okay_two_sum?(arr, 200_000_000)}

puts "hash_two_sum"
puts Benchmark.measure {hash_two_sum?(arr, 200_000_000)}

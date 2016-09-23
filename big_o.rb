def my_min(list) # big-o is O(n^2)
  list.each_with_index do |el, idx|
    is_min = true

    list.each_with_index do |el2, idx2|
      is_min = false if el2 < el
    end

    return el if is_min
  end
end

def my_min_better(list) # big-o is O(n)
  min = nil

  list.each do |el|
    min = el if min.nil? || el < min
  end

  min
end

def largest_contiguous_subsum(list) # big-o is O(n^3)
  subsets = []

  list.each_with_index do |el, idx|
    list.each_with_index do |el2, idx2|
      subsets << list[idx..idx2]
    end
  end

  sums = []

  subsets.each do |subset|
    sum = subset.inject(:+)
    sums << sum unless sum.nil?
  end

  sums.max
end

def better_lcs(list)
  max = nil
  current_max = 0

  list.each do |el|
    current_max += el

    if max.nil? || current_max > max
      max = current_max
    end

    if current_max < 0
      current_max = 0
    end
  end

  max
end

def first_anagram?(str1, str2) #runtime is O(nn!)
  anagrams = str1.chars.permutation.to_a
  anagrams.map! {|subset| subset.join("")}
  anagrams.include?(str2)
end

def second_anagram?(str1, str2) # big-o is O(n^2)
  str1_chars = str1.chars
  str2_chars = str2.chars

  str1_chars.each_with_index do |char1, idx1|
    str2_chars.each_with_index do |char2, idx2|
      if char1 == char2
        str1[idx1] = " "
        str2[idx2] = " "
        break
      end
    end
  end

  str1.strip.empty? && str2.strip.empty?
end

def third_anagram?(str1, str2) # big-o is O(nlog(n))
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram?(str1, str2) # big-o is O(n)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.each_char do |char|
    hash1[char]+=1
  end

  str2.each_char do |char|
    hash2[char]+=1
  end

  hash1 == hash2
end

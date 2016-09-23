def bad_two_sum?(arr, target_sum) # O(n^2)
  arr.each_with_index do |el1, idx1|
    arr.each_with_index do |el2, idx2|
      return true if el1 + el2 == target_sum && idx1 != idx2
    end
  end

  false
end

def okay_two_sum?(arr, target_sum) #nlogn
  arr = arr.sort #nlogn

  i = 0
  j = arr.length - 1
  while i < j
    sum = arr[i] + arr[j]

    if sum > target_sum
      j -= 1
    elsif sum < target_sum
      i += 1
    else
      return true
    end
  end
  false

end

def hash_two_sum?(arr, target_sum) # O(n)
  hash = Hash.new(0)

  arr.each do |num|
    hash[num] += 1 #n
  end

  hash.each do |k, v| #n
    target_value = target_sum - k
    times = hash[target_value]

    if target_value == k && times >= 2
      return true
    end

    if target_value != k && times > 0
      return true
    end
  end
  false
end

# App Academy's solution
# def hash_two_sum?(arr, target_sum)
#   complements = {}
#
#   arr.each do |el|
#     return true if complements[target_sum - el]
#     complements[el] = true
#   end
#
#   false
# end

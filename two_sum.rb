

def bad_two_sum?(arr,target)
  arr.combination(2).map {|a| a.reduce(:+)}.include?(target)
end


def hash_two_sum?(arr,target)
  hash = Hash.new(0)
  arr.each {|n| hash[n] = 0}

  # debugger
  arr.each do |el|
    if hash.has_key?(target - el) && target - el != el
      return true
    end
  end
  false
end

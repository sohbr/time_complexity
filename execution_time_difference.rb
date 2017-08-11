#phase 1
require 'byebug'
def my_min(array)
  array.each do |el|
    smallest = true

    array.each do |el2|
      next if el == el2
      smallest = false if el > el2
    end

    return el if smallest
  end
end



#phase 2

def my_min2(array)

  smallest = array.first

  array.each do |el|
    smallest = el if el < smallest
  end

  smallest
end


#Contiguous Sum sum

def lcg(list)
  subsums = []
  list.each_index do |i|
    (i+1..list.length).each do |j|
      subsums << list[i,j]
    end
  end
  subsums.map {|a| a.reduce(:+)}.flatten.max
end

def better_lcg(list)
  #can only have one loop and *one variable
  largest = list.first
  sum = list.first
  # debugger
  list[1..-1].each do |el|
    if (sum + el) >= largest
      largest = sum + el
    end
    sum += el
    sum = 0 if sum < 0
  end

  largest

end

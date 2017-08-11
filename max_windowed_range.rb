
def windowed_max_range(array, window_size)

  current_max_range = 0

  array.each_cons(window_size).each do |range|
    diff = range.last - range.first
    current_max_range = diff if diff > current_max_range
  end

  current_max_range

end

module Counter
  def frequency(array)
    count = Hash.new(0)
    array.each{ |log| count[log] += 1 }
    count
  end
end

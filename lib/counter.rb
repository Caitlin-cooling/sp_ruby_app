module Counter
  def frequency(array)
    count = Hash.new(0)
    array.each{ |log| count[log] += 1 }
    sorted(count)
  end

  private def sorted(count)
    count.sort_by{ |page, visits| visits }.reverse
  end
end

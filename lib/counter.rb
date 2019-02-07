# Counter module contains methods that are used in the counting
# and formatting of the log entries
module Counter
  def frequency(array)
    count = Hash.new(0)
    url_array = get_url(array)
    url_array.each { |log| count[log] += 1 }
  end

  def sorted(count)
    count.sort_by { |_page, visits| visits }.reverse
  end

  def get_url(array)
    array.split(' ')[0]
  end

  def format_string(array)
    strings = array.map do |item|
      item[1] == 1 ? item << 'visit' : item << 'visits'
      item.join(' ')
    end
    strings.join(', ')
  end
end

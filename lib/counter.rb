# Counter module contains methods that are used in the counting
# and formatting of the log entries
module Counter
  def frequency(array)
    count = Hash.new(0)
    url_array = get_url(array)

    url_array.each { |log| count[log] += 1 }
    format_string(sorted(count))
  end

  private

  def sorted(count)
    count.sort_by { |_page, visits| visits }.reverse
  end

  def get_url(array)
    url_array = []
    array.each do |log|
      url_array << log.split(' ')[0]
    end
    url_array
  end

  def format_string(array)
    strings = array.map do |item|
      item[1] == 1 ? item << 'visit' : item << 'visits'
      item.join(' ')
    end
    strings.join(', ')
  end
end

# Counter module contains methods that are used in the counting
# and formatting of the log entries
module Counter
  def frequency(array)
    count = Hash.new(0)
    url_array = get_url(array)

    url_array.each { |log| count[log] += 1 }
    sorted(count)
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
end

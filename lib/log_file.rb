require_relative './counter.rb'

# LogFile class is used to process a file given and
# return frequency of visits to a url
class LogFile
  include Counter

  def initialize(file)
    @file = file
  end

  def read
    File.open(@file, 'r') do |line|
      frequency(line)
    end
  end
end

require_relative './counter.rb'

class LogFile
  include Counter

  def initialize(file)
    @file = file
  end

  def read
    File.open(@file, "r") do |line|
      frequency(line)
    end
  end
end

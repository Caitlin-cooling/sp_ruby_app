class LogFile
  def initialize(file)
    @file = file
  end

  def read
    file = File.open(@file, "r")
    return file.readlines
    file.close
  end
end

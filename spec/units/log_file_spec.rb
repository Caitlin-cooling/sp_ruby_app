require 'log_file.rb'

describe LogFile do
  it 'Handles the log file given' do
    file = LogFile.new('webserver.log')
    expect(file.read).to include "/help_page/1 126.318.035.038\n"
    expect(file.read).to include "/contact 184.123.665.067\n"
    expect(file.read).to include "/home 184.123.665.067\n"
    expect(file.read).to include "/about/2 444.701.448.104\n"
  end
end


describe Counter do
  let(:array) {['/help_page/1 126.318.035.038', '/contact 184.123.665.067', '/contact 184.123.665.060', '/about/2 444.701.448.104']}
  let(:file) {LogFile.new(array)}

  it 'returns the urls sorted according to frequency in descending order' do
    expect(file.frequency(array)).to eq([['/contact', 2], ['/about/2', 1], ['/help_page/1', 1]])
  end
end
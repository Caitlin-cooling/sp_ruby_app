require 'log_file.rb'

describe LogFile do
  let(:file) { LogFile.new('webserver.log') }

  it 'Reads the log file given and returns the url with a count' do
    expect(file.read).to include ['/help_page/1', 80]
  end
end

describe Counter do
  let(:array) do
    [
      '/help_page/1 126.318.035.038',
      '/contact 184.123.665.067',
      '/contact 184.123.665.060',
      '/about/2 444.701.448.104'
    ]
  end
  let(:file) { LogFile.new(array) }

  it 'returns the urls sorted according to frequency in descending order' do
    expect(file.frequency(array)).to eq([
                                          ['/contact', 2],
                                          ['/about/2', 1],
                                          ['/help_page/1', 1]
                                        ])
  end
end

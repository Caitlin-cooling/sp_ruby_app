require 'log_file.rb'

describe LogFile do
  let(:file) { LogFile.new('webserver.log') }

  it 'Reads the log file given and returns the url with a count' do
    expect(file.read).to include '/help_page/1 80 visits'
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

  describe 'frequency' do
    it 'returns the urls sorted according to frequency' do
      expect(file.frequency(array)).to eq({'/contact'=>2, '/about/2'=>1, '/help_page/1'=>1})
    end
  end

  describe 'sorted' do
    let(:hash) { { '/contact'=>1, '/about/2'=>6, '/help_page/1'=>3 } }
    it 'sorts a hash by values in descending order' do
      expect(file.sorted(hash)).to eq([["/about/2", 6], ["/help_page/1", 3], ["/contact", 1]])
    end
  end

  describe 'get_url' do
    it 'extracts a url from a log' do
      expect(file.get_url('/contact 555.576.836.194')).to eq '/contact'
    end
  end

end

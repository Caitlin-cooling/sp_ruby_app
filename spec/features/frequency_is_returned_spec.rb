require 'log_file.rb'

describe 'A user can enter a file' do
  it 'returns the list of sites and visit amounts sorted' do
    file = LogFile.new('webserver.log')
    expect(file.read).to eq'/about/2 90 visits, /contact 89 visits, /index 82 visits, /about 81 visits, /help_page/1 80 visits, /home 78 visits'
  end
end

require 'log_file.rb'

describe 'A user can enter a file and see the frequency of which all sites have been visited' do
  it 'returns the list of sites and visits sorted' do
    file = LogFile.new('webserver.log')
    expect(file.read).to eq [["/about/2", 90], ["/contact", 89], ["/index", 82], ["/about", 81], ["/help_page/1", 80], ["/home", 78]]
  end
end

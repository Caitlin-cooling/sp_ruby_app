require 'log_file.rb'

describe LogFile do
  it 'Handles the log file given' do
    file = LogFile.new('webserver.log')
    expect(file.read).to include '/help_page/1 126.318.035.038 /contact 184.123.665.067 /home 184.123.665.067 /about/2 444.701.448.104'
  end
end

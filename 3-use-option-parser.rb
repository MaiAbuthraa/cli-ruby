# Use Option Parser Library
# Ruby comes with the OptionParser class that you can use to parse command-line options.

# run: ruby 3-use-option-parser.rb --help
require "optparse"

class Setting
  def show
    {
      app_name: "My App",
      language: "Ruby"
    }
  end
end

options = {}

OptionParser.new do |opts|
  opts.on('-v', '--version', 'show app version') do
    options[:version] = '1.2.3'
  end

  opts.on('-s', '--setting', "show setting") do
    options[:setting] = Setting.new.show
  end
end.parse!

puts options

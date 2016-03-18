require 'bundler/setup'
require 'net/http'
require 'nokogiri'
require 'open-uri'

module DownloadXbrl
  stock_code = gets.chomp
  charset = 'utf-8'
  xbrl_url_array = []
  uri = "http://resource.ufocatch.com/atom/edinetx/query/#{stock_code}"
  xml = Net::HTTP.get(URI.parse(uri))
  parsed_xml = Nokogiri::XML.parse(xml, nil, charset)
  parsed_xml.css('link').each do |data|
    xbrl_url = data[:href]
    if xbrl_url.include?('jpfr-asr') && xbrl_url =~ /\.xbrl$/
      xbrl_url_array << xbrl_url
    end
  end

  #動作確認のためのコード
  xbrl_url_array.each do |_url|
    puts _url
  end

  dir_exist = Dir.exist?(stock_code)
  unless dir_exist
    unless xbrl_url_array.empty?
      Dir.mkdir(stock_code)
    end
  end

  if dir_exist
    Dir.chdir(stock_code) do
      xbrl_url_array.each do |_url|
        file_name = File.basename(_url)
        unless File.exist?(file_name)
          open(file_name, 'wb') do |io|
            open(_url) do |data|
              io.write(data.read)
            end
          end
        else
          next
        end
      end
    end
  else
    puts 'Ticker symbol is undefined'
  end
end

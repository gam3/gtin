#!/usr/bin/env ruby
require 'nokogiri'

require 'pp'
require 'open-uri'

outfile = File.absolute_path(File.dirname($0), '../lib/gtin/gcp.rb')
file = open('http://www.gs1.org/docs/gcp_length/GCPPrefixFormatList.xml')
doc = Nokogiri::HTML(file)
gcp_prefixes = {}
doc.xpath('//entry').each do |entry|
  gcp_prefixes[entry['prefix']] = entry['gcplength']
end

File.open(outfile, 'w') do |file|
  file.print <<EOP
#!/usr/bin/env ruby

module Gtin
  class Gcp
    @@pcp_prefix = 
EOP
  PP.pp gcp_prefixes, file, 88

  file.print <<EOP
  end
end
EOP

end

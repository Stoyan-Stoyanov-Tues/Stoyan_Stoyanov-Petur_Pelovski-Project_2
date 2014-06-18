require 'nokogiri'

builder = Nokogiri::HTML::Builder.new do |doc|
	doc.html {
		doc.body(:onload => 'some_func();') {
			doc.span.bold {
				doc.text "Hello world"
			}
		}
	}
end

fileHtml = File.new("be.html", "w+")
	fileHtml.puts builder.to_html
fileHtml.close()

`open -a safari be.html`

puts builder.to_html

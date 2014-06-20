require 'nokogiri'

class Hex_Generator2
	def Generator2
		hex_slojno = rand(1000.10000).to_s(16)
		hex_slojno = "0x"+hex_slojno
		puts hex_slojno
		return hex_slojno
	end
end

generator2 = Hex_Generator2.new
generator2.Generator2

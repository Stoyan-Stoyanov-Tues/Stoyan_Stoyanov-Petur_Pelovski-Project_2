require 'nokogiri'

class Hex_Generator1
	def Generator1
		hex_prosto = rand(100..1000).to_s(16)
		hex_prosto = "0x"+hex_prosto
		puts hex_prosto
		return hex_prosto
	end
end

generator1 = Hex_Generator1.new
generator1.Generator1

require 'nokogiri'
class Hex_Generator
	def Gen(hard)
		hex1 = Array.new
		if(hard.to_i == 0)
			hex = rand(100..1000).to_s(16)
			hex = "0x" + hex
			hex = hex.upcase
			return hex
		end
		if(hard.to_i == 1)
			hex1[0] = "0xF0F0"
			hex1[1] = "0x000A"
			hex1[2] = "0xD0D0"
			hex1[3] = "0x000B"
			hex1[4] = "0x0B0B"
			i = rand(0..4).to_i
			return hex1[i]
		end
	end
end

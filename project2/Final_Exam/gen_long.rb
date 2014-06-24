require 'nokogiri'
class Hex_long_Generator
	def Gen(hard)
		hex1 = Array.new
		if hard.to_i == 0
			hex = rand(100..10000).to_s(16)
			hex = "0x" + hex
			hex = hex.upcase
			return hex
		end
		if hard.to_i == 1
			hex1[0] = "0xDB00DB00".to_s
			hex1[1] = "0xDD00DD00".to_s
			hex1[2] = "0xD00DB00B".to_s
			hex1[3] = "0xFF00FF00".to_s
			hex1[4] = "0xF00FF00F".to_s
			i = rand(0..4).to_i
			return hex1[i]
		end
	end
end

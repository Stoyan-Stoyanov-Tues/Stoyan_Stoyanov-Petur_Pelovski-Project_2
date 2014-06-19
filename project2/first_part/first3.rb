require 'nokogiri'

def Int_To_Hex()
	#chislo = Random.new
	#chislo.rand(10...42)
	#randum = 1.times.map{ 9 + Random.rand(11) }
	#puts randum
	#hex = randum.to_s(16)
	#puts hex
	r = rand(5000000..10000000000).to_s(16)
	puts r
end

def First_Type()
	first_hex = rand(5000000..10000000000).to_s(16)
	secound_hex = rand(5000000..10000000000).to_s(16)

	first_hex2 = rand(5000000..10000000000).to_s(16)
	secound_hex2 = rand(5000000..10000000000).to_s(16)

	printf("//a = ?\nint orig = %s ;\nint insert = %s ;\nint a = orig | (insert << 8)\n",first_hex , secound_hex);
	printf("\n");
	printf("//b= ?\nint orig = %s ;\nint insert = %s ;\nint b = orig | (insert << 8)\n",first_hex2 , secound_hex2);
end	

def And_Type()
	first_hex = rand(5000000..10000000000).to_s(16)
	secound_hex = rand(5000000..10000000000).to_s(16)

	printf("\n");
	printf("//AND = ?\nint orig =  %s;\nint insert = %s;\nint a = orig | (insert << 8)\nint b = orig | (insert << 6)\nint AND = a & b;\n",first_hex,secound_hex);

end

def Or_Type()
	first_hex = rand(5000000..10000000000).to_s(16)
	secound_hex = rand(5000000..10000000000).to_s(16)

	printf("\n");
	printf("// OR = ?\nint orig = %s;\nint insert = %s;\nint a = orig | (insert << 7)\nint b = orig | (insert << 5)\nint OR  = a & b;\n",first_hex,secound_hex);
end


#Int_To_Hex()
First_Type()
And_Type()
Or_Type()

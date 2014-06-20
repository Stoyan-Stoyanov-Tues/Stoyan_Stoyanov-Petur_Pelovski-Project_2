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

def First_Type_One()
	first_hex = rand(5000000..10000000000).to_s(16)
	secound_hex = rand(5000000..10000000000).to_s(16)

	printf("//a = ?\nint orig = 0x%s ;\nint insert = 0x%s ;\nint a = orig | (insert << 8)\n",first_hex , secound_hex);
end	

def First_Type_Two()
	first_hex2 = rand(5000000..10000000000).to_s(16)
	secound_hex2 = rand(5000000..10000000000).to_s(16)

	printf("\n");
	printf("//b= ?\nint orig = 0x%s ;\nint insert = 0x%s ;\nint b = orig | (insert << 8)\n",first_hex2 , secound_hex2);
end

def And_Type()
	first_hex = rand(5000000..10000000000).to_s(16)
	secound_hex = rand(5000000..10000000000).to_s(16)

	printf("\n");
	printf("//AND = ?\nint orig =  0x%s;\nint insert = 0x%s;\nint a = orig | (insert << 8)\nint b = orig | (insert << 6)\nint AND = a & b;\n",first_hex,secound_hex);

end

def Or_Type()
	first_hex = rand(5000000..10000000000).to_s(16)
	secound_hex = rand(5000000..10000000000).to_s(16)

	printf("\n");
	printf("// OR = ?\nint orig = 0x%s;\nint insert = 0x%s;\nint a = orig | (insert << 7)\nint b = orig | (insert << 5)\nint OR  = a & b;\n",first_hex,secound_hex);
end

def Secound_Or_Type()
	first_hex = rand(5000000..10000000000).to_s(16)
	secound_hex = rand(5000000..10000000000).to_s(16)

	printf("\n");
	printf("// OR = ?\nint orig = 0x%s;\nint insert = 0x%s;\nint a = orig | (insert << 7)\nint b = orig | (insert << 5)\nint XOR  = a ^ b;\n",first_hex,secound_hex);
end

def Left_Type()
	first_hex = rand(5000000..10000000000).to_s(16)
	secound_hex = rand(5000000..10000000000).to_s(16)

	printf("\n");
	printf("// left = ?\nint i = 0x%s;\nint left = 0x%s | (1 << 10);\n",first_hex,secound_hex);
end

def Result_Type_One()
	first_hex = rand(5000000..10000000000).to_s(16)
	secound_hex = rand(5000000..10000000000).to_s(16)

	printf("\n");
	printf("// result =?\nlong value1 = 0x%s;\nlong value2 = 0x%s;\nint result = (value1 << 3) ^ (value2 >> 2)\n",first_hex,secound_hex);
end

def Result_Type_Two()
	printf("\n");
	printf("// result =?\nint value1 = 138;\nint value2 = 449;\nint result = (value1 << 3) ^ (value2 >> 2)\n");
end

def First_Type_Three()
	first_hex = rand(5000000..10000000000).to_s(16)

	printf("\n");
	printf("// a = ?\nlong testValue = 0x%s;\nint a =0;\nif (testValue & (1 << 4))\n{\na = 1;\n}\nelse\n{\na = 2;\n}\n",first_hex);
	
end

def First_Type_For()
	first_hex = rand(5000000..10000000000).to_s(16)

	printf("\n");
	printf("// a = ? , result = ?\nlong testValue = 0x%s;\nint a =0;\nint result = 0;\nif ( (result = testValue & testValue ^ testValue | (1 << 4)) )\n{\na = 1;\n}\nelse\n{\na = 2;\n}\n",first_hex);
	
end

def Result_Type_Three()
	printf("\n");
	printf("// result =?\nint value1 = 142;\nint value2 = 501;\nint result = (value1 << 3) ^ (value2 >> 2)\n");
	
end

def Resulf_Type_For()
	printf("\n");
	printf("// result =?\nint value1 = 337;\nint value2 = 4339;\nint result = (value1 << 5) | (value2 >> 4)\n");
end


#Int_To_Hex()
First_Type_One()
First_Type_Two()
And_Type()
Or_Type()
Secound_Or_Type()
Left_Type()
Result_Type_One()
Result_Type_Two()
First_Type_Three()
First_Type_For()
Result_Type_Three()
Resulf_Type_For()










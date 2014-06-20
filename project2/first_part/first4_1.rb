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
	first_hex = rand(100..1000).to_s(16)
	second_hex = rand(100..1000).to_s(16)

	printf("//a = ?\nint orig = 0x%s ;\nint insert = 0x%s ;\nint a = orig | (insert << 8)\n",first_hex , second_hex);
end	

def First_Type_Two()
	first_hex = rand(100..1000).to_s(16)
	second_hex = rand(100..1000).to_s(16)

	printf("\n");
	printf("//b= ?\nint orig = 0x%s ;\nint insert = 0x%s ;\nint b = orig | (insert << 8)\n",first_hex , second_hex);
end

def And_Type()
	first_hex = rand(100..1000).to_s(16)
	second_hex = rand(100..1000).to_s(16)

	printf("\n");
	printf("//AND = ?\nint orig =  0x%s;\nint insert = 0x%s;\nint a = orig | (insert << 8)\nint b = orig | (insert << 6)\nint AND = a & b;\n",first_hex,second_hex);

end

def Or_Type()
	first_hex = rand(100..1000).to_s(16)
	second_hex = rand(100..1000).to_s(16)

	printf("\n");
	printf("// OR = ?\nint orig = 0x%s;\nint insert = 0x%s;\nint a = orig | (insert << 7)\nint b = orig | (insert << 5)\nint OR  = a & b;\n",first_hex,second_hex);
end

def Second_Or_Type()
	first_hex = rand(100..1000).to_s(16)
	second_hex = rand(100..1000).to_s(16)

	printf("\n");
	printf("// OR = ?\nint orig = 0x%s;\nint insert = 0x%s;\nint a = orig | (insert << 7)\nint b = orig | (insert << 5)\nint XOR  = a ^ b;\n",first_hex,second_hex);
end

def Left_Type()
	first_hex = rand(100..1000).to_s(16)
	second_hex = rand(100..1000).to_s(16)

	printf("\n");
	printf("// left = ?\nint i = 0x%s;\nint left = 0x%s | (1 << 10);\n",first_hex,second_hex);
end

def Result_Type_One()
	first_hex = rand(100..1000).to_s(16)
	second_hex = rand(100..1000).to_s(16)

	printf("\n");
	printf("// result =?\nlong value1 = 0x%s;\nlong value2 = 0x%s;\nint result = (value1 << 3) ^ (value2 >> 2)\n",first_hex,second_hex);
end

def Result_Type_Two()
	first_int = rand(10..1000).to_i
	second_int = rand(10..1000).to_i

	printf("\n");
	printf("// result =?\nint value1 = %d;\nint value2 = %d;\nint result = (value1 << 3) ^ (value2 >> 2)\n",first_int,second_int);
end

def First_Type_Three()
	first_hex = rand(100..1000).to_s(16)

	printf("\n");
	printf("// a = ?\nlong testValue = 0x%s;\nint a =0;\nif (testValue & (1 << 4))\n{\na = 1;\n}\nelse\n{\na = 2;\n}\n",first_hex);
	
end

def First_Type_For()
	first_hex = rand(100..1000).to_s(16)

	printf("\n");
	printf("// a = ? , result = ?\nlong testValue = 0x%s;\nint a =0;\nint result = 0;\nif ( (result = testValue & testValue ^ testValue | (1 << 4)) )\n{\na = 1;\n}\nelse\n{\na = 2;\n}\n",first_hex);
	
end

def Result_Type_Three()
	first_int = rand(10..1000).to_i
	second_int = rand(10..1000).to_i

	printf("\n");
	printf("// result =?\nint value1 = %d;\nint value2 = %d;\nint result = (value1 << 3) ^ (value2 >> 2)\n",first_int,second_int);
	
end

def Resulf_Type_For()
	first_int = rand(10..1000).to_i
	second_int = rand(10..1000).to_i

	printf("\n");
	printf("// result =?\nint value1 = %d;\nint value2 = %d;\nint result = (value1 << 5) | (value2 >> 4)\n",first_int,second_int);
end


#Int_To_Hex()
First_Type_One()
First_Type_Two()
And_Type()
Or_Type()
Second_Or_Type()
Left_Type()
Result_Type_One()
Result_Type_Two()
First_Type_Three()
First_Type_For()
Result_Type_Three()
Resulf_Type_For()























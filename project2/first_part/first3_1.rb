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

#Int_To_Hex()
First_Type_One()
First_Type_Two()
And_Type()
Or_Type()

require 'nokogiri'
require 'CSV'

def First_Type_One()
	first_hex = rand(100..1000).to_s(16)
	second_hex = rand(100..1000).to_s(16)

	#f2.puts ("//a = ?\n""int orig = 0x" first_hex";\n""int insert = 0x"secound_hex" ;\n""int a = orig | (insert << 8)\n"
	printf("//a = ?\nint orig = 0x%s ;\nint insert = 0x%s ;\nint a = orig | (insert << 8);\n",first_hex , second_hex);

	text = ""
	File.open('t.txt', 'r') do |f1|
		while line = f1.gets
			text+=line
		end
	end

	File.open('test.c', 'w') do |f2|  
		# use "\n" for two lines of text  
		#f2.puts ("//a = ?\nint orig = 0x%s ;\nint insert = 0x%s ;\nint a = orig | (insert << 8)\n",first_hex , secound_hex) 
		f2.printf("#include <stdio.h>\nint main()\n{\n");
		f2.printf("//a = ?\nint orig = 0x%s ;\nint insert = 0x%s ;\nint a = orig | (insert << 8);\n",first_hex , second_hex);
		#f2.printf("printf("a = %s\n",a);\n");
		#f2.printf("(")
		f2.puts text + "\n" + "}\n"
		#f2.puts"return a;\n" + "}\n"
	end
		`gcc test.c`
		otgovor1 = "0x" + `./a.out`
		puts otgovor1
end	

First_Type_One()

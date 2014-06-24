class Print
	def Ptr(num, hard)
		require 'nokogiri'
		require 'pdfkit'
		require_relative 'gen'
		require_relative 'int_gen'
		require_relative 'gen_long'
		y = Hex_long_Generator.new

		y7_1 = y.Gen(hard)
		y7_2 = y.Gen(hard)
		y9_1 = y.Gen(hard)
		y10_1 = y.Gen(hard)

		o = Int_Generator.new

		o8_1 = o.Gen(hard)
		o8_2 = o.Gen(hard)
		o11_1 = o.Gen(hard)
		o11_2 = o.Gen(hard)
		o12_1 = o.Gen(hard)
		o12_2 = o.Gen(hard)

		z = Hex_Generator.new

		i1_1 = z.Gen(hard)
		i1_2 = z.Gen(hard)
		i2_1 = z.Gen(hard)
		i2_2 = z.Gen(hard)
		i3_1 = z.Gen(hard)
		i3_2 = z.Gen(hard)
		i4_1 = z.Gen(hard)
		i4_2 = z.Gen(hard)
		i5_1 = z.Gen(hard)
		i5_2 = z.Gen(hard)
		i6_1 = z.Gen(hard)
		i6_2 = z.Gen(hard)

		a1 = "a = ?" 
		b1 = "int origin = " + i1_1.to_s
		c1 = "int insert = " + i1_2.to_s
		d1 = "int a = orig | (insert << 8)"
		a2 = "b = ?"
		b2 = "int origin = " + i2_1.to_s
		c2 = "int insert = " + i2_2.to_s
		d2 = "int b = orig | (insert << 6)"
		a3 = "and = ?"
		b3 = "int orig = " + i3_1.to_s
		c3 = "int insert = " + i3_2.to_s
		d3 = "int a = orig | (insert << 8)"
		e3 = "int b = orig | (insert << 6)"
		f3 = "int AND = a & b"
		a4 = "or = ?"
		b4 = "int orig = " + i4_1.to_s
		c4 = "int insert = " + i4_2.to_s
		d4 = "int a = orig | (insert << 7)"
		e4 = "int b = orig | (insert << 5)"
		f4 = "int OR = a & b"
		a5 = "OR = ?"
		b5 = "int orig = " + i5_1.to_s
		c5 = "int insert = " + i5_2.to_s
		d5 = "int a = orig | (insert << 7)"
		e5 = "int b = orig | (insert << 5)"
		f5 = "int XOR = a ^ b"
		a6 = "left = ?"
		b6 = "int i = " + i6_1.to_s
		c6 = "int left = " + i6_2.to_s + "|(1 << 10)"
		a7 = "result = ?"
		b7 = "long_value1 = "  + y7_1.to_s
		c7 = "long_value2 = " + y7_2.to_s
		d7 = "int result = (value1 << 3) ^ (value2 >> 2)"
		a8 = "result = ?"
		b8 = "int_value1 = " + o8_1.to_s
		c8 = "int value2 = " + o8_2.to_s
		d8 = "int result = (value1 << 3) ^ (value2 >> 2)"
		a9 = "a = ?"
		b9 = "long testValue = " + y9_1.to_s
		c9 = "int a = 0"
		d9 = "if (testValue & (1 << 4))"
		e9 = "{" 
		f9 = "a = 1"
		g9 = "}"
		h9 = "else"
		i9 = "{"
		j9 = "a = 2"
		k9 = "}"
		a10 = "a = ?, result = ?"
		b10 = "long testValue" + y10_1.to_s
		c10 = "int a = 0"
		d10 = "int result = 0"
		e10 = "if ( (result = testValue & testValue ^ testValue | (1 << 4)) )"
		f10 = "{"
		g10 = "a = 1"
		h10 = "}"
		i10 = "else"
		j10 = "{"
		k10 = "a = 2"
		l10 = "}"
		a11 = "result = ?"
		b11 = "int value1 = " + o11_1.to_s
		c11 = "int value2 = " + o11_2.to_s
		d11 = "int result = (value1 << 3) ^ (value2 >> 2)"
		a12 = "result = ?"
		b12 = "int value1 = " + o12_1.to_s
		c12 = "int value2 = " + o12_2.to_s
		d12 = "int result = (value1 << 5) | (value2 >> 4)"

		builder = Nokogiri::HTML::Builder.new do |doc|
			doc.html {
				doc.body{
					doc.table(:border=>"5", :align=>"center", :width=>"600") {
						doc.tr {
							doc.td(:border=>"0"){doc.text("Question 1")}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(a1)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(b1)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(c1)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(d1)}
						}
					}
					doc.table(:border=>"5", :align=>"center", :width=>"600") {
						doc.tr {
							doc.td(:border=>"0"){doc.text("Question 2")}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(a2)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(b2)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(c2)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(d2)}
						}
					}
					doc.table(:border=>"5", :align=>"center", :width=>"600") {
						doc.tr {
							doc.td(:border=>"0"){doc.text("Question 3")}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(a3)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(b3)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(c3)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(d3)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(e3)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(f3)}
						}
					}
					doc.table(:border=>"5", :align=>"center", :width=>"600") {
						doc.tr {
							doc.td(:border=>"0"){doc.text("Question 4")}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(a4)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(b4)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(c4)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(d4)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(e4)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(f4)}
						}
					}
					doc.table(:border=>"5", :align=>"center", :width=>"600") {
						doc.tr {
							doc.td(:border=>"0"){doc.text("Question 5")}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(a5)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(b5)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(c5)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(d5)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(e5)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(f5)}
						}
					}
					doc.table(:border=>"5", :align=>"center", :width=>"600") {
						doc.tr {
							doc.td(:border=>"0"){doc.text("Question 6")}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(a6)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(b6)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(c6)}
						}
					}
					doc.table(:border=>"5", :align=>"center", :width=>"600") {
						doc.tr {
							doc.td(:border=>"0"){doc.text("Question 7")}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(a7)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(b7)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(c7)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(d7)}
						}
					}
					doc.table(:border=>"5", :align=>"center", :width=>"600") {
						doc.tr {
							doc.td(:border=>"0"){doc.text("Question 8")}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(a8)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(b8)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(c8)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(d8)}
						}
					}
					doc.table(:border=>"5", :align=>"center", :width=>"600") {
						doc.tr {
							doc.td(:border=>"0"){doc.text("Question 9")}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(a9)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(b9)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(c9)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(d9)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(e9)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(f9)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(g9)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(h9)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(i9)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(j9)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(k9)}
							doc.tr(:border=>"0"){}
						}
					}
					doc.table(:border=>"5", :align=>"center", :width=>"600") {
						doc.tr {
							doc.td(:border=>"0"){doc.text("Question 10")}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(a10)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(b10)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(c10)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(d10)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(e10)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(f10)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(g10)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(h10)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(i10)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(j10)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(k10)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(l10)}
						}
					}
					doc.table(:border=>"5", :align=>"center", :width=>"600") {
						doc.tr {
							doc.td(:border=>"0"){doc.text("Question 11")}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(a11)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(b11)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(c11)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(d11)}
						}
					}
					doc.table(:border=>"5", :align=>"center", :width=>"600") {
						doc.tr {
							doc.td(:border=>"0"){doc.text("Question 12")}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(a12)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(b12)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(c12)}
							doc.tr(:border=>"0"){}
							doc.td(:border=>"0"){doc.text(d12)}
						}
					}
				}
			}
		end
		num1 = "test_" + num.to_s + ".html"

		fileHtml = File.new(num1, "w+")
			fileHtml.puts builder.to_html
		fileHtml.close()
		kit = PDFKit.new(builder.to_html)
		pdf = "test_" + num.to_s + ".pdf"
		kit.to_file(pdf)

		text = ""
			File.open('t.txt', 'r') do |f1|
				while line = f1.gets
					text+=line
				end
			end

			File.open('test1.c', 'w') do |f2|  
				f2.printf("#include <stdio.h>\nint main()\n{\n");
				f2.printf("//a = ?\nint orig = %s ;\nint insert = %s ;\nint a = orig | (insert << 8);\n ",i1_1 , i1_2);
				f2.puts text +"\n" + "}\n"
				#f2.puts"return a;\n" + "}\n"
			end
				`gcc test1.c`
				`rm *.c`
				a1_3 = `./a.out`
				`rm ./a.out`
				text = ""	

				File.open('t2.txt', 'r') do |f1|
					while line = f1.gets
						text+=line
					end
				end

			File.open('test2.c', 'w') do |f2|  
				f2.printf("#include <stdio.h>\nint main()\n{\n");
				f2.printf("//b = ?\nint orig = %s ;\nint insert = %s ;\nint b = orig | (insert << 6);\n",i2_1 , i2_2);
				f2.puts text +"\n" + "}\n"
				#f2.puts"return a;\n" + "}\n"
			end
				`gcc test2.c`
				`rm *.c`
				a2_3 = `./a.out`
				`rm ./a.out`
				text = ""

			File.open('t3.txt', 'r') do |f1|
				while line = f1.gets
					text+=line
				end
			end

			File.open('test3.c', 'w') do |f2|  
				f2.printf("#include <stdio.h>\nint main()\n{\n");
				f2.printf("//AND = ?\nint orig =  %s;\nint insert = %s;\nint a = orig | (insert << 8);\nint b = orig | (insert << 6);\nint AND = a & b;\n ",i3_1,i3_2);
				f2.puts text +"\n" + "}\n"
				#f2.puts"return a;\n" + "}\n"
			end
				`gcc test3.c`
				`rm *.c`
				a3_3 = `./a.out`
				`rm ./a.out`
			text = ""

			File.open('t4.txt', 'r') do |f1|
				while line = f1.gets
					text+=line
				end
			end

			File.open('test4.c', 'w') do |f2|  
				f2.printf("#include <stdio.h>\nint main()\n{\n");
				f2.printf("// OR = ?\nint orig = %s;\nint insert = %s;\nint a = orig | (insert << 7);\nint b = orig | (insert << 5);\nint OR  = a & b;\n ",i4_1,i4_2);
				f2.puts text +"\n" + "}\n"
				#f2.puts"return a;\n" + "}\n"
			end
				`gcc test4.c`
				`rm *.c`
				a4_3 = `./a.out`
				`rm ./a.out`
			text = ""

			File.open('t5.txt', 'r') do |f1|
				while line = f1.gets
					text+=line
				end
			end

			File.open('test5.c', 'w') do |f2|  
				f2.printf("#include <stdio.h>\nint main()\n{\n");
				f2.printf("// OR = ?\nint orig = %s;\nint insert = %s;\nint a = orig | (insert << 7);\nint b = orig | (insert << 5);\nint XOR  = a ^ b;\n ",i5_1,i5_2);
				f2.puts text +"\n" + "}\n"
				#f2.puts"return a;\n" + "}\n"
			end
				`gcc test5.c`
				`rm *.c`
				a5_3 = `./a.out`
				`rm ./a.out`
				text = ""

			File.open('t6.txt', 'r') do |f1|
				while line = f1.gets
					text+=line
				end
			end
	

			File.open('test6.c', 'w') do |f2|  
				f2.printf("#include <stdio.h>\nint main()\n{\n");
				f2.printf("// left = ?\nint i = %s;\nint left = %s | (1 << 10);\n ",i6_1,i6_2);
				f2.puts text +"\n" + "}\n"
				#f2.puts"return a;\n" + "}\n"
			end
				`gcc test6.c`
				`rm *.c`
				a6_3 = `./a.out`
				`rm ./a.out`
			text = ""

			File.open('t7.txt', 'r') do |f1|
				while line = f1.gets
					text+=line
				end
			end

			File.open('test7.c', 'w') do |f2|  
				f2.printf("#include <stdio.h>\nint main()\n{\n");
				f2.printf("// result =?\nlong value1 = %s;\nlong value2 = %s;\nint result = (value1 << 3) ^ (value2 >> 2);\n ",y7_1,y7_2);
				f2.puts text +"\n" + "}\n"
				#f2.puts"return a;\n" + "}\n"
			end
				`gcc test7.c`
				`rm *.c`
				a7_3 = `./a.out`
				`rm ./a.out`
			text = ""

			File.open('t7.txt', 'r') do |f1|
				while line = f1.gets
					text+=line
				end
			end

			File.open('test8.c', 'w') do |f2|  
				f2.printf("#include <stdio.h>\nint main()\n{\n");
				f2.printf("// result =?\nint value1 = %d;\nint value2 = %d;\nint result = (value1 << 3) ^ (value2 >> 2);\n ", o8_1, o8_2);
				f2.puts text +"\n" + "}\n"
				#f2.puts"return a;\n" + "}\n"
			end
				`gcc test8.c`
				`rm *.c`
				a8_3 = `./a.out`
				`rm ./a.out`
			text = ""

			File.open('t.txt', 'r') do |f1|
				while line = f1.gets
					text+=line
				end
			end

			File.open('test9.c', 'w') do |f2|  
				f2.printf("#include <stdio.h>\nint main()\n{\n");
				f2.printf("// a = ?\nlong testValue = %s;\nint a =0;\nif (testValue & (1 << 4))\n{\na = 1;\n}\nelse\n{\na = 2;\n}\n",y9_1);
				f2.puts text +"\n" + "}\n"
				#f2.puts"return a;\n" + "}\n"
			end
				`gcc test9.c`
				`rm *.c`
				a9_3 = `./a.out`
				`rm ./a.out`
			text = ""

			File.open('t8.txt', 'r') do |f1|
				while line = f1.gets
					text+=line
				end
			end

			File.open('test10.c', 'w') do |f2|  
				f2.printf("#include <stdio.h>\nint main()\n{\n");
				f2.printf("// a = ? , result = ?\nlong testValue = %s;\nint a =0;\nint result = 0;\nif ( (result = testValue & testValue ^ testValue | (1 << 4)) )\n{\na = 1;\n}\nelse\n{\na = 2;\n}\n",y10_1);
				f2.puts text +"\n" + "}\n"
				#2.puts"return a;\n" + "}\n"
			end
				`gcc test10.c`
				`rm *.c`
				a10_3 = `./a.out`
				`rm ./a.out`
			text = ""

			File.open('t7.txt', 'r') do |f1|
				while line = f1.gets
					text+=line
				end
			end

			File.open('test11.c', 'w') do |f2|  
				f2.printf("#include <stdio.h>\nint main()\n{\n");
				f2.printf("// result =?\nint value1 = %d;\nint value2 = %d;\nint result = (value1 << 3) ^ (value2 >> 2);\n",o11_1, o11_2);
				f2.puts text +"\n" + "}\n"
				#f2.puts"return a;\n" + "}\n"
			end
				`gcc test11.c`
				`rm *.c`
				a11_3 = `./a.out`
				`rm ./a.out`
				text = ""

			File.open('t7.txt', 'r') do |f1|
				while line = f1.gets
					text+=line
				end
			end

			File.open('test12.c', 'w') do |f2|  
				f2.printf("#include <stdio.h>\nint main()\n{\n");
				f2.printf("// result =?\nint value1 = %d;\nint value2 = %d;\nint result = (value1 << 5) | (value2 >> 4);\n", o12_1, o12_2);
				f2.puts text +"\n" + "}\n"
				#f2.puts"return a;\n" + "}\n"
			end
				`gcc test12.c`
				`rm *.c`
				a12_3 = `./a.out`
				`rm ./a.out`
		builder2 = Nokogiri::HTML::Builder.new do |doc|
		doc.html {
			doc.body{
				doc.table(:border=>"5", :align=>"center", :width=>"600") {
					doc.tr {
						doc.td(:border=>"0"){doc.text("Question 1 - answer")}
						doc.tr(:border=>"0"){}
						doc.td(:border=>"0"){doc.text(a1_3.to_s)}
					}
				}
				doc.table(:border=>"5", :align=>"center", :width=>"600") {
					doc.tr {
						doc.td(:border=>"0"){doc.text("Question 2 - answer")}
						doc.tr(:border=>"0"){}
						doc.td(:border=>"0"){doc.text(a2_3.to_s)}
					}
				}
				doc.table(:border=>"5", :align=>"center", :width=>"600") {
					doc.tr {
						doc.td(:border=>"0"){doc.text("Question 3 - answer")}
						doc.tr(:border=>"0"){}
						doc.td(:border=>"0"){doc.text(a3_3.to_s)}
					}
				}
				doc.table(:border=>"5", :align=>"center", :width=>"600") {
					doc.tr {
						doc.td(:border=>"0"){doc.text("Question 4 - answer")}
						doc.tr(:border=>"0"){}
						doc.td(:border=>"0"){doc.text(a4_3.to_s)}
					}
				}
				doc.table(:border=>"5", :align=>"center", :width=>"600") {
					doc.tr {
						doc.td(:border=>"0"){doc.text("Question 5 - answer")}
						doc.tr(:border=>"0"){}
						doc.td(:border=>"0"){doc.text(a5_3.to_s)}
					}
				}
				doc.table(:border=>"5", :align=>"center", :width=>"600") {
					doc.tr {
						doc.td(:border=>"0"){doc.text("Question 6 - answer")}
						doc.tr(:border=>"0"){}
						doc.td(:border=>"0"){doc.text(a6_3.to_s)}
					}
				}
				doc.table(:border=>"5", :align=>"center", :width=>"600") {
					doc.tr {
						doc.td(:border=>"0"){doc.text("Question 7 - answer")}
						doc.tr(:border=>"0"){}
						doc.td(:border=>"0"){doc.text(a7_3.to_s)}
					}
				}
				doc.table(:border=>"5", :align=>"center", :width=>"600") {
					doc.tr {
						doc.td(:border=>"0"){doc.text("Question 8 - answer")}
						doc.tr(:border=>"0"){}
						doc.td(:border=>"0"){doc.text(a8_3.to_s)}
					}
				}
				doc.table(:border=>"5", :align=>"center", :width=>"600") {
					doc.tr {
						doc.td(:border=>"0"){doc.text("Question 9 - answer")}
						doc.tr(:border=>"0"){}
						doc.td(:border=>"0"){doc.text(a9_3.to_s)}
					}
				}
				doc.table(:border=>"5", :align=>"center", :width=>"600") {
					doc.tr {
						doc.td(:border=>"0"){doc.text("Question 10 - answer")}
						doc.tr(:border=>"0"){}
						doc.td(:border=>"0"){doc.text(a10_3.to_s)}
					}
				}
				doc.table(:border=>"5", :align=>"center", :width=>"600") {
					doc.tr {
						doc.td(:border=>"0"){doc.text("Question 11 - answer")}
						doc.tr(:border=>"0"){}
						doc.td(:border=>"0"){doc.text(a11_3.to_s)}
					}
				}
				doc.table(:border=>"5", :align=>"center", :width=>"600") {
					doc.tr {
						doc.td(:border=>"0"){doc.text("Question 12 - answer")}
						doc.tr(:border=>"0"){}
						doc.td(:border=>"0"){doc.text(a12_3.to_s)}
					}
				}
			}
		}
		end
		num2 = "answer_" + num.to_s + ".html"
		fileHtml = File.new(num2, "w+")
			fileHtml.puts builder2.to_html
		fileHtml.close()
		kit = PDFKit.new(builder2.to_html)
		pdf = "answer_" + num.to_s + ".pdf"
		kit.to_file(pdf)

	end
end

require 'nokogiri'

i = 10
a1 = "a = ?" 
b1 = "int origin = " + i.to_s
c1 = "int insert = " + i.to_s
d1 = "int a = orig | (insert << 8)"
a2 = "b = ?"
b2 = "int origin = " + i.to_s
c2 = "int insert = " + i.to_s
d2 = "int b = orig | (insert << 6)"
a3 = "and = ?"
b3 = "int orig = " + i.to_s
c3 = "int insert = " + i.to_s
d3 = "int a = orig | (insert << 8)"
e3 = "int b = orig | (insert << 6)"
f3 = "int AND = a & b"
a4 = "or = ?"
b4 = "int orig = " + i.to_s
c4 = "int insert = " + i.to_s
d4 = "int a = orig | (insert << 7)"
e4 = "int b = orig | (insert << 5)"
f4 = "int OR = a & b"
a5 = "OR = ?"
b5 = "int orig = 0xD0D0"
c5 = "int insert = 0x000B"
d5 = "int a = orig | (insert << 7)"
e5 = "int b = orig | (insert << 5)"
f5 = "int XOR = a ^ b"
a6 = "a = ?"
b6 = "long testValue = 0xDB00DB00"
c6 = "int a = 0"
d6 = "if (testValue & (1 << 4))"
e6 = "{"
f6 = "a = 1"
g6 = "}"
h6 = "else"
i6 = "{"
j6 = "a = 2"
k6 = "}"
a7 = "left = ?"
b7 = "int i = 0xD0D0"
c7 = "int left = 0xD0D0 | (1 << 10)"
a8 = "result = ?"
b8 = "long value1 = 0xDD00DD00"
c8 = "long value2 = 0xD00DB00B"
d8 = "int result = (value1 << 3) ^ (value2 >> 2)"
a9 = "a = ?, result = ?"
b9 = "long testValue = 0xDD00DD00"
c9 = "int a = 0"
d9 = "int result = 0"
e9 = "if ( (result = testValue & testValue ^ testValue" 
f9 = "| (1 << 4)) )"
g9 = "{"
h9 = "a = 1"
i9 = "}"
j9 = "else"
k9 = "{"
l9 = "a = 2"
m9 = "}"
a10 = "a = ?"
b10 = "long testValue = 0xDD00DD00"
c10 = "int a =0"
d10 = "if (testValue & testValue ^ (1 << 4))"
e10 = "{"
f10 = "a = 1"
g10 = "}"
h10 = "else"
i10 = "{"
j10 = "a = 2"
k10 = "}"
a11 = "result = ?"
b11 = "int value1 = 138"
c11 = "int value2 = 449"
d11 = "int result = (value1 << 3) ^ (value2 >> 2)"
a12 = "result = ?"
b12 = "int value1 = 318"
c12 = "int value2 = 4439"
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
					doc.tr(:border=>"0"){}
					doc.td(:border=>"0"){doc.text(d6)}
					doc.tr(:border=>"0"){}
					doc.td(:border=>"0"){doc.text(e6)}
					doc.tr(:border=>"0"){}
					doc.td(:border=>"0"){doc.text(f6)}
					doc.tr(:border=>"0"){}
					doc.td(:border=>"0"){doc.text(g6)}
					doc.tr(:border=>"0"){}
					doc.td(:border=>"0"){doc.text(h6)}
					doc.tr(:border=>"0"){}
					doc.td(:border=>"0"){doc.text(i6)}
					doc.tr(:border=>"0"){}
					doc.td(:border=>"0"){doc.text(j6)}
					doc.tr(:border=>"0"){}
					doc.td(:border=>"0"){doc.text(k6)}
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
					doc.td(:border=>"0"){doc.text(l9)}
					doc.tr(:border=>"0"){}
					doc.td(:border=>"0"){doc.text(m9)}
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

fileHtml = File.new("be.html", "w+")
	fileHtml.puts builder.to_html
fileHtml.close()

`firefox be.html`

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
		}
	}
end

fileHtml = File.new("be.html", "w+")
	fileHtml.puts builder.to_html
fileHtml.close()

`firefox be.html`

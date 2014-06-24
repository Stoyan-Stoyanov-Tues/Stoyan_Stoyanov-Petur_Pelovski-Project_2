require_relative 'print'
a = Print.new
i = 0
while i < ARGV[0].to_i
	if ARGV[1].to_s.downcase == "hard"
		k = 0
		a.Ptr(i, k)
	end
	if(ARGV[1].to_s.downcase == "easy")
		k = 1
		a.Ptr(i, k)
	end
	i+=1
end

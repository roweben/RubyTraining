x = 100
unit = "bottles"
while x > 0
	puts(x.to_s + " " + unit + " of beer on the wall, " + x.to_s + " " + unit + " of beer.  You take one down")
	print(" and pass it around, ")
	x = x-1
		if x == 1 then unit = "bottle"
		else unit = "bottles"
		end
	puts(x.to_s + " " + unit + " of beer on the wall.")
	puts("")
end
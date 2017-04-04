for i in 1:5
	println("J", i, "-teacher", ",", "teacher", ",", "J", i)
	println("pi-J", i, ",", "member", ",", "J", i)
	for j in 01:50
		println("j", 18 - i, "4", lpad(j,2,"0"), ",", "member", ",", "J", i)
	end
	for j in 01:50
		println("pj", 18 - i, "4", lpad(j,2,"0"), ",", "member", ",", "J", i)
	end
end

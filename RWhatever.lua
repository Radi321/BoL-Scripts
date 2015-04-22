a = 15
b = 17
c = 10
d = 11
e = 12
f = 10

function OnLoad()

	if (a > c) then
		PrintChat("Powodzenie! A jest większe niż c!")
	else
		PrintChat("Niepowodzenie! A nie jest większe niż c!")
	end

	if (f == f) then
		PrintChat("Powodzenie! F to ta sama liczba!")
	else
		PrintChat("Niepowodzenie! F to nie jest ta sama liczba!")
	end

	if (c < e) then
		PrintChat("Powodzenie! E jest większe niż c!")
	else
		PrintChat("Niepowodzenie! E nie jest większe niż c!")
	end

	if (b <= f) then
		PrintChat("Powodzenie! B jest mniejsze/równe w porównaniu do f!")
	else
		PrintChat("Niepowodzenie! B nie jest mniejsze/równe w porównaniu do f!")
	end

	if (d ~= d) then
		PrintChat("Powodzenie! D i d się nie równa!")
	else
		PrintChat("Niepowodzenie! D i d jest równe!")
	end

	if (d >= b) then
		PrintChat("Powodzenie! D jest większe/równe w porównaniu do b!")
	else
		PrintChat("Niepowodzenie! D nie jest większe/równe w porównaniu do b!")
	end

end
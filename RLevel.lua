function OnTick()
	Level()
end

function Level()
	if myHero.level == 18 then
		PrintChat("Congratulations, you have 18 level!")
	else
		PrintChat("Sorry, you don't have 18 level! I will spam all time!")
	end
end
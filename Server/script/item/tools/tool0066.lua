
function add466()
		local level = random(1,4);
		AddSkillState(466, level, 1080 )	--玩家获得受伤动作减少
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> 1 ph髏 gi秏 th� thng "..(level*10).."<#> %")	
end

function add467()
		local level = random(1,4);
		AddSkillState(467, level, 1080 )	--玩家获得中毒时间减少
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> 1 ph髏 gi秏 th阨 gian tr髇g c: "..(level*10).."<#> %")	
end

Tab={add466,add467}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end

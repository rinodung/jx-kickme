
function add466()
		local level = random(1,4);
		AddSkillState(466, level, 1080 )	--玩家获得受伤动作减少
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> 1 ph髏 gi秏 th� thng "..(level*10).."<#> %")	
end

function add469()
		local level = random(1,4);
		AddSkillState(469, level, 1080 )	--玩家获得眩晕时间减少
		Msg2Player("<#> B筺 nh薾 頲 <color=yellow> 1 ph髏 gi秏 th阨 gian b� cho竛g: "..(level*10).."<#> %")	
end

Tab={add466,add469}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end


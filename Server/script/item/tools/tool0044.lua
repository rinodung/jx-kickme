Include( "\\script\\item\\checkmapid.lua" )
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
		AddSkillState(472, 5, 54 )	--增加玩家血量和内力持续恢复
		Msg2Player("<#> B筺 s� d鬾g 1 C祅 Kh玭 T筼 H鉧 產n (Nh�) .")	
	RemoveItem(nItemIdx,1,1);
end

Include( "\\script\\item\\checkmapid.lua" )
--khang don chi giac
function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	CastSkill( 510, 1);		-- 3分钟内，减少附近敌方玩家伤害反弹20%
	Msg2Player("B筺 s� d鬾g 1 Kh竛g n chi gi竎");
	RemoveItem(nItemIdx,1,1);
end
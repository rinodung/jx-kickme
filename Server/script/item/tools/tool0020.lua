--lenh bai
Include( "\\script\\item\\checkmapid.lua" )

function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	CastSkill( 492, 1);		--跑速增加30%,攻速增加50%
	Msg2Player("B筺  s� d鬾g 1 l謓h b礽");
	RemoveItem(nItemIdx,1,1);
end
--chien co
Include( "\\script\\item\\checkmapid.lua" )

function useitem(nItemIdx)
	if(CheckMap() == 0) then return end
	CastSkill( 491, 1);			--生命上限提高30%,全抗增加30%
	Msg2Player("B筺  s� d鬾g 1 Chi課 c� ");
	RemoveItem(nItemIdx,1,1);
end

function add466()
		local level = random(1,4);
		AddSkillState(466, level, 1080 )	--��һ�����˶�������
		Msg2Player("<#> B�n nh�n ���c <color=yellow> 1 ph�t gi�m th� th��ng "..(level*10).."<#> %")	
end

function add467()
		local level = random(1,4);
		AddSkillState(467, level, 1080 )	--��һ���ж�ʱ�����
		Msg2Player("<#> B�n nh�n ���c <color=yellow> 1 ph�t gi�m th�i gian tr�ng ��c: "..(level*10).."<#> %")	
end

Tab={add466,add467}

function useitem(nItemIndex)
		i = random(getn(Tab))
		Tab[i]();
end
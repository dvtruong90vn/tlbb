--NPCÑÝÊ¾¼¼ÄÜÌØÐ§ÓÃ
--ÑÝÊ¾NPC
--ÆÕÍ¨
--Õâ¸öNPC×îºÃÊÇ²»»á»¹ÊÖ£¬¿É¹¥»÷£¬µ«ÊÇ²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801009_g_ScriptId = 801009;

--ÒªÑÝÊ¾µÄ¼¼ÄÜÁÐ±í 
x801009_g_DemoSkills = {};
--ÉùÃ÷·½·¨£º  x801009_g_DemoSkills[¼¼ÄÜµÄ±àºÅ] = "¼¼ÄÜµÄÃû×Ö"; ×¢£ººóÃæ»á°Ñ¼¼ÄÜµÄ±àºÅµ±ÊÂ¼þºÅÊ¹ÓÃ 

x801009_g_DemoSkills[881]="V÷ng Dß½ng Hßng Thán";
x801009_g_DemoSkills[882]="H° Ði®p Tr§n";
x801009_g_DemoSkills[883]="Bát Môn Kim Toä";
x801009_g_DemoSkills[884]="Nh¤t Tñ Trß¶ng Xà";
x801009_g_DemoSkills[885]="Thái „t Tam Tài";
x801009_g_DemoSkills[886]="Bát Tr§n Ð°";
x801009_g_DemoSkills[887]="Hoä Nhãn Kim Tinh";
x801009_g_DemoSkills[888]="Chúng Di®u Chi Môn";
x801009_g_DemoSkills[889]="Th¥n Quang Ly Hþp";
x801009_g_DemoSkills[890]="Lång Ba Vi Bµ";
x801009_g_DemoSkills[891]="Læ Sß½ng Bång Chï";
x801009_g_DemoSkills[892]="Døc C¥m Ð¸ch Tung";
x801009_g_DemoSkills[893]="Thoái BÕt Tam Xá";
x801009_g_DemoSkills[894]="Tri«u Tam Mµ TÑ";
x801009_g_DemoSkills[895]="Nh¤t Hô Bách ºng";

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
x801009_g_eventList={881,882,883,884,885,886,887,888,889,890,891,892,893,894,895};
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x801009_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "Hoan nghênh ðã t¾i. Xin m¶i lña ch÷n các kÛ nång mu¯n thåm quan.");
--	for i=1,getn(x801009_g_eventList) do 
	for nIdx, nEvent in x801009_g_eventList do
		--Ìí¼ÓÑÝÊ¾¼¼ÄÜµÄ°´Å¥ 
		AddNumText(sceneId, nEvent, x801009_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x801009_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ðÊÇÊ²Ã´µÄID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801009, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end

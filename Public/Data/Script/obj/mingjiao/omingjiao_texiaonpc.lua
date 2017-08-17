--NPCÑÝÊ¾¼¼ÄÜÌØÐ§ÓÃ
--ÑÝÊ¾NPC
--ÆÕÍ¨
--Õâ¸öNPC×îºÃÊÇ²»»á»¹ÊÖ£¬¿É¹¥»÷£¬µ«ÊÇ²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801002_g_ScriptId = 801002;

--ÒªÑÝÊ¾µÄ¼¼ÄÜÁÐ±í 
x801002_g_DemoSkills = {};
--ÉùÃ÷·½·¨£º  x801002_g_DemoSkills[¼¼ÄÜµÄ±àºÅ] = "¼¼ÄÜµÄÃû×Ö"; ×¢£ººóÃæ»á°Ñ¼¼ÄÜµÄ±àºÅµ±ÊÂ¼þºÅÊ¹ÓÃ 

x801002_g_DemoSkills[768]="Thôi Tâm Li®t Tì";
x801002_g_DemoSkills[769]="Huy«n Âm Chí Dß½ng";
x801002_g_DemoSkills[770]="Thiên Ð¸a Ð°ng Th÷";
x801002_g_DemoSkills[771]="Ngû Tinh Liên Châu";
x801002_g_DemoSkills[772]="Höa Tinh Xung Nh§t";
x801002_g_DemoSkills[773]="Th¤t Tinh LÕc Trß¶ng Không";
x801002_g_DemoSkills[774]="Th¥n Hành Bách Biªn";
x801002_g_DemoSkills[775]="Chï Lµc Vi Mã";
x801002_g_DemoSkills[776]="Thâu Lß½ng Hoán Trø";
x801002_g_DemoSkills[777]="Thiên Nµ Vu Nhân";
x801002_g_DemoSkills[778]="Nµ Phát Xung Quan";
x801002_g_DemoSkills[779]="Lôi Ðình Chi Nµ";
x801002_g_DemoSkills[780]="Nghîa Phçn Ði«n ¿ng";
x801002_g_DemoSkills[781]="H§u Tích BÕc Phát";
x801002_g_DemoSkills[782]="Nhân QuÖ Ð°ng Ð°";
 
--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
x801002_g_eventList={768,769,770,771,772,773,774,775,776,777,778,779,780,781,782};
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x801002_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "Hoan nghênh ðã t¾i. Xin m¶i lña ch÷n các kÛ nång mu¯n thåm quan.");
--	for i=1,getn(x801002_g_eventList) do 
	for nIdx, nEvent in x801002_g_eventList do
		--Ìí¼ÓÑÝÊ¾¼¼ÄÜµÄ°´Å¥ 
		AddNumText(sceneId, nEvent, x801002_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x801002_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ðÊÇÊ²Ã´µÄID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId, targetId,1,0,0,0,0);
	--CallScriptFunction( 801001, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end

--NPCÑÝÊ¾¼¼ÄÜÌØÐ§ÓÃ
--ÑÝÊ¾NPC
--ÆÕÍ¨
--Õâ¸öNPC×îºÃÊÇ²»»á»¹ÊÖ£¬¿É¹¥»÷£¬µ«ÊÇ²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801003_g_ScriptId = 801003;

--ÒªÑÝÊ¾µÄ¼¼ÄÜÁÐ±í 
x801003_g_DemoSkills = {};
--ÉùÃ÷·½·¨£º  x801003_g_DemoSkills[¼¼ÄÜµÄ±àºÅ] = "¼¼ÄÜµÄÃû×Ö"; ×¢£ººóÃæ»á°Ñ¼¼ÄÜµÄ±àºÅµ±ÊÂ¼þºÅÊ¹ÓÃ 

x801003_g_DemoSkills[784]="Bái Nhiên Hæu Vû";
x801003_g_DemoSkills[785]="Ngao Du Ðông Häi";
x801003_g_DemoSkills[786]="Kiªn Long TÕi Ði«n";
x801003_g_DemoSkills[787]="Th¥n Long Bãi Vî";
x801003_g_DemoSkills[788]="Phi Long TÕi Thiên";
x801003_g_DemoSkills[789]="Kháng Long Hæu H¯i";
x801003_g_DemoSkills[790]="Cách NgÕn Quan Höa";
x801003_g_DemoSkills[791]="Lý ÐÕi Ðào Cß½ng";
x801003_g_DemoSkills[792]="MÕn Thiên Quá Häi";
x801003_g_DemoSkills[793]="Thiên HÕ Vô C¦u";
x801003_g_DemoSkills[794]="Bát C¦u Tri«u Thiên";
x801003_g_DemoSkills[795]="Áp Bi¬n C¦u B¯i";
x801003_g_DemoSkills[796]="Tiên HÕ Thü Vi Cß¶ng";
x801003_g_DemoSkills[797]="Kim Thi«n Thoát Xác";
x801003_g_DemoSkills[798]="Bão Tàn Thü Khuyªt";

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
x801003_g_eventList={784,785,786,787,788,789,790,791,792,793,794,795,796,797,798};
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x801003_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "Hoan nghênh ðã t¾i. Xin m¶i lña ch÷n các kÛ nång mu¯n thåm quan.");
--	for i=1,getn(x801003_g_eventList) do 
	for nIdx, nEvent in x801003_g_eventList do
		--Ìí¼ÓÑÝÊ¾¼¼ÄÜµÄ°´Å¥ 
		AddNumText(sceneId, nEvent, x801003_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x801003_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ðÊÇÊ²Ã´µÄID? 
	LuaFnUnitUseSkill(sceneId, selfId,eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801003, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end

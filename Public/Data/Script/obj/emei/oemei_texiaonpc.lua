--NPCÑÝÊ¾¼¼ÄÜÌØÐ§ÓÃ
--ÑÝÊ¾NPC
--ÆÕÍ¨
--Õâ¸öNPC×îºÃÊÇ²»»á»¹ÊÖ£¬¿É¹¥»÷£¬µ«ÊÇ²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801005_g_ScriptId = 801005;

--ÒªÑÝÊ¾µÄ¼¼ÄÜÁÐ±í 
x801005_g_DemoSkills = {};
--ÉùÃ÷·½·¨£º  x801005_g_DemoSkills[¼¼ÄÜµÄ±àºÅ] = "¼¼ÄÜµÄÃû×Ö"; ×¢£ººóÃæ»á°Ñ¼¼ÄÜµÄ±àºÅµ±ÊÂ¼þºÅÊ¹ÓÃ 

x801005_g_DemoSkills[816]="Hoàn Phøng Quy H°n";
x801005_g_DemoSkills[818]="CØu Âm BÕch C¯t Träo";
x801005_g_DemoSkills[819]="Thái A Ðäo Trì";
x801005_g_DemoSkills[820]="Ph§t Quang Ph± Chiªu";
x801005_g_DemoSkills[821]="Kim Châm Ðµ Kiªp";
x801005_g_DemoSkills[822]="Ninh Tinh Chi Vû";
x801005_g_DemoSkills[823]="Xung Hß DßÞng Khí";
x801005_g_DemoSkills[824]="Di®u Bút Sinh Hoa";
x801005_g_DemoSkills[825]="Kh·i TØ H°i Sinh";
x801005_g_DemoSkills[826]="Kinh MÕch Ngh¸ch Hành";
x801005_g_DemoSkills[827]="Di H°n ÐÕi Pháp";
x801005_g_DemoSkills[828]="D¸ch Cân ÐoÕn C¯t";
x801005_g_DemoSkills[829]="VÕn NhÕc Tri«u Tông";
x801005_g_DemoSkills[830]="Diên Niên Ích Th÷";
x801005_g_DemoSkills[831]="Sinh M®nh Chi Tuy«n";

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
x801005_g_eventList={816,818,819,820,821,822,823,824,825,826,827,828,829,830,831};
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x801005_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "Hoan nghênh ðã t¾i. Xin m¶i lña ch÷n các kÛ nång mu¯n thåm quan");
--	for i=1,getn(x801005_g_eventList) do 
	for nIdx, nEvent in x801005_g_eventList do
		--Ìí¼ÓÑÝÊ¾¼¼ÄÜµÄ°´Å¥ 
		AddNumText(sceneId, nEvent, x801005_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x801005_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ðÊÇÊ²Ã´µÄID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId, 1,0,0,0,0);
	--CallScriptFunction( 801005, "LuaFnUnitUseSkill",sceneId, selfId,eventId ,targetId);
	--return;
end

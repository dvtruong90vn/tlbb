--NPCÑÝÊ¾¼¼ÄÜÌØÐ§ÓÃ
--ÑÝÊ¾NPC
--ÆÕÍ¨
--Õâ¸öNPC×îºÃÊÇ²»»á»¹ÊÖ£¬¿É¹¥»÷£¬µ«ÊÇ²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801008_g_ScriptId = 801008;

--ÒªÑÝÊ¾µÄ¼¼ÄÜÁÐ±í 
x801008_g_DemoSkills = {};
--ÉùÃ÷·½·¨£º  x801008_g_DemoSkills[¼¼ÄÜµÄ±àºÅ] = "¼¼ÄÜµÄÃû×Ö"; ×¢£ººóÃæ»á°Ñ¼¼ÄÜµÄ±àºÅµ±ÊÂ¼þºÅÊ¹ÓÃ 

x801008_g_DemoSkills[865]="LÕc Mµc Tiêu Tiêu";
x801008_g_DemoSkills[866]="V÷ng Mai Chï Khát";
x801008_g_DemoSkills[867]="Dß½ng Quan Tam Ði®p";
x801008_g_DemoSkills[868]="Dß½ng Phù Âm Phän";
x801008_g_DemoSkills[869]="Dß½ng Ca Thiên Quân";
x801008_g_DemoSkills[870]="Dß½ng Xuân BÕch Tuyªt";
x801008_g_DemoSkills[871]="ÐÕp Tuyªt Vô Ngân";
x801008_g_DemoSkills[872]="Quy TÑc Công";
x801008_g_DemoSkills[873]="Môi H· Rång LÕnh";
x801008_g_DemoSkills[874]="Th§p Di®n Mai Phøc";
x801008_g_DemoSkills[875]="Bao Bi®n Làm Thay";
x801008_g_DemoSkills[876]="Quy KhÑ Lai H«";
x801008_g_DemoSkills[877]="B¢ng Hß Ngñ Phong";
x801008_g_DemoSkills[878]="Tînh Änh Tr¥m Bích";
x801008_g_DemoSkills[879]="ÐÕi Tßþng Vô Hình";

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
x801008_g_eventList={865,866,867,868,869,870,871,872,873,874,875,876,877,878,879};
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x801008_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "Hoan nghênh ðã t¾i. Xin m¶i lña ch÷n các kÛ nång mu¯n thåm quan.");
--	for i=1,getn(x801008_g_eventList) do 
	for nIdx, nEvent in x801008_g_eventList do
		--Ìí¼ÓÑÝÊ¾¼¼ÄÜµÄ°´Å¥ 
		AddNumText(sceneId, nEvent, x801008_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x801008_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ðÊÇÊ²Ã´µÄID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId, targetId,1,0,0,0,0);
	--CallScriptFunction( 801008, "LuaFnUnitUseSkill",sceneId, selfId, eventId , targetId);
	--return;
end

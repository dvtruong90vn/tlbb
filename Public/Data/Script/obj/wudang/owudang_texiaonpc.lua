--NPCÑÝÊ¾¼¼ÄÜÌØÐ§ÓÃ
--ÑÝÊ¾NPC
--ÆÕÍ¨
--Õâ¸öNPC×îºÃÊÇ²»»á»¹ÊÖ£¬¿É¹¥»÷£¬µ«ÊÇ²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801004_g_ScriptId = 801004;

--ÒªÑÝÊ¾µÄ¼¼ÄÜÁÐ±í 
x801004_g_DemoSkills = {};
--ÉùÃ÷·½·¨£º  x801004_g_DemoSkills[¼¼ÄÜµÄ±àºÅ] = "¼¼ÄÜµÄÃû×Ö"; ×¢£ººóÃæ»á°Ñ¼¼ÄÜµÄ±àºÅµ±ÊÂ¼þºÅÊ¹ÓÃ 

x801004_g_DemoSkills[800]="Ng÷c Næ Xuyên Xoa";
x801004_g_DemoSkills[801]="Du Nhçn Hæu Dß";
x801004_g_DemoSkills[802]="Yªn TØ Sao Thüy";
x801004_g_DemoSkills[803]="BÕch HÕc Lßþng Sí";
x801004_g_DemoSkills[804]="H± Bao Ð¥u";
x801004_g_DemoSkills[805]="Song Phong Quán Nhî";
x801004_g_DemoSkills[806]="Tam Hoàn Sáo Nguy®t";
x801004_g_DemoSkills[807]="Lãm Tß¾c Vî";
x801004_g_DemoSkills[808]="Tß½ng Nho Dî M£c";
x801004_g_DemoSkills[809]="Thê Vân Tung";
x801004_g_DemoSkills[810]="Dã Mã Phân Tung";
x801004_g_DemoSkills[811]="Nhß Phong Tñ Bª";
x801004_g_DemoSkills[812]="Hàn Mai Ánh Tuyªt";
x801004_g_DemoSkills[813]="ÐÕi Khôi Tinh";
x801004_g_DemoSkills[814]="Chân ThÑc Th¤t Tiªt Tr§n";

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
x801004_g_eventList={800,801,802,803,804,805,806,807,808,809,810,811,812,813,814};
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x801004_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "Hoan nghênh ðã t¾i. Xin m¶i lña ch÷n các kÛ nång mu¯n thåm quan.");
--	for i=1,getn(x801004_g_eventList) do 
	for nIdx, nEvent in x801004_g_eventList do
		--Ìí¼ÓÑÝÊ¾¼¼ÄÜµÄ°´Å¥ 
		AddNumText(sceneId, nEvent, x801004_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x801004_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ðÊÇÊ²Ã´µÄID? 
	LuaFnUnitUseSkill(sceneId, selfId,  eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801001, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end

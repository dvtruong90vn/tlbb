--NPCÑÝÊ¾¼¼ÄÜÌØÐ§ÓÃ
--ÑÝÊ¾NPC
--ÆÕÍ¨
--Õâ¸öNPC×îºÃÊÇ²»»á»¹ÊÖ£¬¿É¹¥»÷£¬µ«ÊÇ²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801006_g_ScriptId = 801006;

--ÒªÑÝÊ¾µÄ¼¼ÄÜÁÐ±í 
x801006_g_DemoSkills = {};
--ÉùÃ÷·½·¨£º  x801006_g_DemoSkills[¼¼ÄÜµÄ±àºÅ] = "¼¼ÄÜµÄÃû×Ö"; ×¢£ººóÃæ»á°Ñ¼¼ÄÜµÄ±àºÅµ±ÊÂ¼þºÅÊ¹ÓÃ 

x801006_g_DemoSkills[834]="Liên Châu Hü Thi Ðµc";
x801006_g_DemoSkills[835]="Th¤t Tinh Th¤u C¯t";
x801006_g_DemoSkills[836]="†m Tr¤m Chï Khát";
x801006_g_DemoSkills[837]="Ðà Nê Ð¾i ThuÖ";
x801006_g_DemoSkills[838]="Tiêu Ð¥u Lan NgÕch";
x801006_g_DemoSkills[839]="Di Hoa Tiªp Mµc";
x801006_g_DemoSkills[840]="Tiªu Lý Tàng Ðao";
x801006_g_DemoSkills[841]="Tiªu Kh¦u Thß¶ng Khai";
x801006_g_DemoSkills[842]="Tiªu Ngæ Giäi Di";
x801006_g_DemoSkills[843]="Hàm Sa XÕ Änh";
x801006_g_DemoSkills[844]="TÑ Di®n S· Ca";
x801006_g_DemoSkills[845]="Ngai Nhßþc Mµc Kê";
x801006_g_DemoSkills[846]="Thüy Yêm Th¤t Quân";
x801006_g_DemoSkills[847]="Hành Thi T¦u Nhøc";
x801006_g_DemoSkills[848]="Ác Quán Mãn Doanh";
--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
x801006_g_eventList={834,835,836,837,838,839,840,841,842,843,844,845,846,847,848};
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x801006_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "Hoan nghênh ðã t¾i. Xin m¶i lña ch÷n các kÛ nång mu¯n thåm quan.");
--	for i=1,getn(x801006_g_eventList) do 
	for nIdx, nEvent in x801006_g_eventList do
		--Ìí¼ÓÑÝÊ¾¼¼ÄÜµÄ°´Å¥ 
		AddNumText(sceneId, nEvent, x801006_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x801006_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ðÊÇÊ²Ã´µÄID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801006, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end

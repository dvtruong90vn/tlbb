--ÂåÑôNPC
--·¶Í³
--·¹µêÀÏ°å

x000059_g_ShopTabId	= 15

x000059_g_ScriptId	= 000059

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000059_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Hãy ğªn thØ nªm các thÑ ch² Minh Trân Lâu · LÕc Dß½ng, ğäm bäo các hÕ ån r°i s¨ không mu¯n r¶i xa LÕc Dß½ng næa")
		AddNumText(sceneId,x000059_g_ScriptId,"Mua thÑc ån",7,0)
--		AddNumText(sceneId,x000059_g_ScriptId,"¾«Á¦´ò¹¤",6,1)
--		AddNumText(sceneId,x000059_g_ScriptId,"»îÁ¦´ò¹¤",6,2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x000059_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	local	ene	= GetHumanEnergy( sceneId, selfId )	--¾«Á¦
	local	vig	= GetHumanVigor( sceneId, selfId )	--»îÁ¦
	
	if key == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x000059_g_ShopTabId )
		
	elseif key == 1 then
		if ene >= 40 then
			SetHumanEnergy( sceneId, selfId, ene-40 )
			AddMoney( sceneId, selfId, 3000 )
			x000059_MsgBox( sceneId, selfId, "Các hÕ làm thêm tiêu hao 40 tinh lñc, ğÕt ğßşc 30 ğ°ng bÕc" );
		else
			x000059_MsgBox( sceneId, selfId, "Tinh lñc cüa các hÕ không ğü 40 ği¬m, ông chü không mu¯n các hÕ phäi làm thêm" );
		end
	elseif key == 2 then
		if vig >= 40 then
			SetHumanVigor( sceneId, selfId, vig-40 )
			AddMoney( sceneId, selfId, 3000 )
			x000059_MsgBox( sceneId, selfId, "Các hÕ làm thêm tiêu hao 40 hoÕt lñc, ğÕt ğßşc 30 ğ°ng bÕc" );
		else
			x000059_MsgBox( sceneId, selfId, "HoÕt lñc còn chßa ğÕt 40, ông chü không mu¯n cho các hÕ làm thêm" );
		end
	end
end

--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x000059_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

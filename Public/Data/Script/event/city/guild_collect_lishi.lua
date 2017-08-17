----------------
--MisDescBegin
--½Å±¾ºÅ
x600047_g_ScriptId	= 600047

--Tiªp thøÈÎÎñNPCÊôĞÔ
x600047_g_Position_X=147
x600047_g_Position_Z=96
--ÈÎÎñ½»¸¶npc
x600047_g_AccomplishNPC_Name="Ğông Phù Dung"
--ÈÎÎñºÅ
x600047_g_MissionId			  = 1140
--Møc tiêu nhi®m vønpc
x600047_g_Name 					  = "Ğông Phù Dung"
--ÈÎÎñ¹éÀà
x600047_g_MissionKind			= 50 --Íæ¼ÒThành ph¯ 
--ĞÆng c¤p nhi®m vø 
x600047_g_MissionLevel		= 10000
--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600047_g_IfMissionElite	= 0
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x600047_g_IsMissionOkFail	= 0		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ0Î»
--ÈÎÎñÎÄ±¾ÃèÊö
x600047_g_MissionName			= "Trş giúp tri«u ğình: Nhi®m vø L¸ch ThÕch"
--ÈÎÎñÃèÊö
x600047_g_MissionInfo			= ""
--Møc tiêu nhi®m vø
x600047_g_MissionTarget		= "    Thu th§p #YL¸ch ThÕch#W. Ngß½i ğªn #GĞôn Hoàng Minh Sa S½n#W ho£c #GTung S½n Ki S½n Pha Nam#W kia tìm ğßşc."
--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600047_g_ContinueInfo		= ""
--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°
x600047_g_MissionComplete	= ""

-- Nhi®m vø hoàn thànhÇé¿ö,ÄÚÈİ¶¯Ì¬Ë¢ĞÂ,Õ¼ÓÃÈÎÎñ²ÎÊıtoÕ ğµ µÚ1Î»
x600047_g_Custom	= { {id="Ğã tìm ğßşc: L¸ch ThÕch",num=1} }
--MisDescEnd
----------------


--**********************************
--·ÅÆú
--**********************************
function x600047_OnAbandon( sceneId, selfId )
	CallScriptFunction( 600046, "OnAbandon", sceneId, selfId, 0 )
end

--**********************************
--Ìá½»
--**********************************
function x600047_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	CallScriptFunction( 600046, "OnSubmit", sceneId, selfId, targetId, 0 )
end

--**********************************
--Tiªp thø
--**********************************
function x600047_OnAccept( sceneId, selfId, targetId)
	CallScriptFunction( 600046, "OnAcceptSupportState", sceneId, selfId, targetId, 0 )	
end

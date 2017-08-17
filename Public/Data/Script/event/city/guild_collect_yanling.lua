----------------
--MisDescBegin
--½Å±¾ºÅ
x600048_g_ScriptId	= 600048

--Tiªp thøÈÎÎñNPCÊôĞÔ
x600048_g_Position_X=147
x600048_g_Position_Z=96
--ÈÎÎñ½»¸¶npc
x600048_g_AccomplishNPC_Name="Ğông Phù Dung"
--ÈÎÎñºÅ
x600048_g_MissionId			  = 1141
--Møc tiêu nhi®m vønpc
x600048_g_Name 					  = "Ğông Phù Dung"
--ÈÎÎñ¹éÀà
x600048_g_MissionKind			= 50 --Íæ¼ÒThành ph¯ 
--ĞÆng c¤p nhi®m vø 
x600048_g_MissionLevel		= 10000
--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600048_g_IfMissionElite	= 0
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x600048_g_IsMissionOkFail	= 0		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ0Î»
--ÈÎÎñÎÄ±¾ÃèÊö
x600048_g_MissionName			= "Trş giúp tri«u ğình: Nhi®m vø ¿ng Linh"
--ÈÎÎñÃèÊö
x600048_g_MissionInfo			= ""
--Møc tiêu nhi®m vø
x600048_g_MissionTarget		= "    Thu th§p #Y¿ng Linh#W. Ngß½i ğªn #GThái H° Ngoan Ğ¥u Tñ#W ho£c #GKính h° yên chi ğäo dæ h÷a mi ğäo#W tìm ğßşc."
--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600048_g_ContinueInfo		= ""
--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°
x600048_g_MissionComplete	= ""

-- Nhi®m vø hoàn thànhÇé¿ö,ÄÚÈİ¶¯Ì¬Ë¢ĞÂ,Õ¼ÓÃÈÎÎñ²ÎÊıtoÕ ğµ µÚ1Î»
x600048_g_Custom	= { {id="Ğã tìm ğßşc: ¿ng Linh",num=1} }
--MisDescEnd
----------------

--**********************************
--·ÅÆú
--**********************************
function x600048_OnAbandon( sceneId, selfId )
	CallScriptFunction( 600046, "OnAbandon", sceneId, selfId, 1 )
end

--**********************************
--Ìá½»
--**********************************
function x600048_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	CallScriptFunction( 600046, "OnSubmit", sceneId, selfId, targetId, 1 )	
end

--**********************************
--Tiªp thø
--**********************************
function x600048_OnAccept( sceneId, selfId, targetId )
	CallScriptFunction( 600046, "OnAcceptSupportState", sceneId, selfId, targetId, 1 )	
end

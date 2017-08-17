----------------
--MisDescBegin
--½Å±¾ºÅ
x600049_g_ScriptId	= 600049

--Tiªp thøÈÎÎñNPCÊôĞÔ
x600049_g_Position_X=147
x600049_g_Position_Z=96
--ÈÎÎñ½»¸¶npc
x600049_g_AccomplishNPC_Name="Ğông Phù Dung"
--ÈÎÎñºÅ
x600049_g_MissionId			  = 1142
--Møc tiêu nhi®m vønpc
x600049_g_Name 					  = "Ğông Phù Dung"
--ÈÎÎñ¹éÀà
x600049_g_MissionKind			= 50 --Íæ¼ÒThành ph¯ 
--ĞÆng c¤p nhi®m vø 
x600049_g_MissionLevel		= 10000
--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x600049_g_IfMissionElite	= 0
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x600049_g_IsMissionOkFail	= 0		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ0Î»
--ÈÎÎñÎÄ±¾ÃèÊö
x600049_g_MissionName			= "Trş giúp tri«u ğình: Nhi®m vø Th¤t Di®p Liên"
--ÈÎÎñÃèÊö
x600049_g_MissionInfo			= ""
--Møc tiêu nhi®m vø
x600049_g_MissionTarget		= "    Thu th§p #YTh¤t Di®p Liên #W. Ğªn #GKiªm Các BÕch Mao Lînh #Who£c #GVô Lßşng S½n Ğào Hoa Ğàm #Wtìm ğßşc."
--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x600049_g_ContinueInfo		= ""
--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°
x600049_g_MissionComplete	= ""

-- Nhi®m vø hoàn thànhÇé¿ö,ÄÚÈİ¶¯Ì¬Ë¢ĞÂ,Õ¼ÓÃÈÎÎñ²ÎÊıtoÕ ğµ µÚ1Î»
x600049_g_Custom	= { {id="Ğã tìm ğßşc: Th¤t Di®p Liên",num=1} }
--MisDescEnd
----------------

--**********************************
--·ÅÆú
--**********************************
function x600049_OnAbandon( sceneId, selfId )
	CallScriptFunction( 600046, "OnAbandon", sceneId, selfId, 2 )
end

--**********************************
--Ìá½»
--**********************************
function x600049_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	CallScriptFunction( 600046, "OnSubmit", sceneId, selfId, targetId, 2 )
end

--**********************************
--Tiªp thø
--**********************************
function x600049_OnAccept( sceneId, selfId, targetId )
	CallScriptFunction( 600046, "OnAcceptSupportState", sceneId, selfId, targetId, 2 )	
end

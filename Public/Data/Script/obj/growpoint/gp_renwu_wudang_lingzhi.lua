--Éú³¤ ði¬m
--LinhÖ¥
--½Å±¾ºÅ715016
--LinhÖ¥100%
--µÈc¤p1

--Ã¿´Î´ò¿ª±Ø¶¨ ðÕt ðßþctoÕ ðµ ²úÆ·
x715016_g_MainItemId = 40003021
--ÈÎÎñºÅ
x715016_g_MissionId = 1075

--Éú³Éº¯Êý¿ªÊ¼************************************************************************
--Ã¿cáiItemBoxÖÐ×î¶à10cáiÎïÆ·
function	x715016_OnCreate(sceneId,growPointType,x,y)
	--·ÅÈëItemBoxÍ¬Ê±·ÅÈëmµt cáiÎïÆ·
	ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,1,x715016_g_MainItemId)	--Ã¿cáiÉú³¤ ði¬m×îÉÙÄÜ ði¬mµ½mµt cáiÎïÆ·,ÕâÀïÖ±½Ó·ÅÈëitemboxÖÐmµt cái
end
--Éú³Éº¯Êý½áÊø**********************************************************************


--´ò¿ªÇ°º¯Êý¿ªÊ¼&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
function	x715016_OnOpen(sceneId,selfId,targetId)
	local ret = CallScriptFunction(SHIMEN_MISSION_SCRIPT_ID, "IsCaiJiMission", sceneId,selfId,x715016_g_MissionId,x715016_g_MainItemId)
	if ret > 0 then
		return OR_OK
	else
		return OR_U_CANNT_DO_THIS_RIGHT_NOW
	end

end
--´ò¿ªÇ°º¯Êý½áÊø&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


--»ØÊÕº¯Êý¿ªÊ¼########################################################################
function	x715016_OnRecycle(sceneId,selfId,targetId)
	--Tr· v«1,Éú³¤ ði¬m»ØÊÕ
	return 1
end
--»ØÊÕº¯Êý½áÊø########################################################################



--´ò¿ªºóº¯Êý¿ªÊ¼@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
function	x715016_OnProcOver(sceneId,selfId,targetId)
	return 0
end
--´ò¿ªºóº¯Êý½áÊø@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

function x715016_OnTickCreateFinish( sceneId, growPointType, tickCount )
end

--Éú³¤ ði¬m Chu Tß¾c thÕch
--°ïÕ½¸±±¾
--½Å±¾ºÅ710017
----µÈc¤p1

--Ã¿´Î´ò¿ª±Ø¶¨ ðÕt ðßþctoÕ ðµ ²úÆ·
x710017_g_MainItemId = 30900053
----ÈÎÎñºÅ
--x710017_g_MissionId = 1070

--Éú³Éº¯Êý¿ªÊ¼************************************************************************
--Ã¿cáiItemBoxÖÐ×î¶à10cáiÎïÆ·
function	x710017_OnCreate(sceneId,growPointType,x,y)
	
	--·ÅÈëItemBoxÍ¬Ê±·ÅÈëmµt cáiÎïÆ·
	local targetId = ItemBoxEnterScene(x,y,growPointType,sceneId,QUALITY_MUST_BE_CHANGE,1,x710017_g_MainItemId)	--Ã¿cáiÉú³¤ ði¬m×îÉÙÄÜ ði¬mµ½mµt cáiÎïÆ·,ÕâÀïÖ±½Ó·ÅÈëitemboxÖÐmµt cái
	
	local rand = random(1,100)
	if rand >= 70 then
		AddItemToBox(sceneId,targetId,QUALITY_MUST_BE_CHANGE,1,x710017_g_MainItemId)
	end
	
end
--Éú³Éº¯Êý½áÊø**********************************************************************


--´ò¿ªÇ°º¯Êý¿ªÊ¼&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
function	x710017_OnOpen(sceneId,selfId,targetId)
--	local ret = CallScriptFunction(SHIMEN_MISSION_SCRIPT_ID, "IsCaiJiMission", sceneId,selfId,x710017_g_MissionId,x710017_g_MainItemId)
	if CallScriptFunction(402047, "HaveTankBuff", sceneId, selfId) ~= 0 then
		return OR_U_CANNT_DO_THIS_RIGHT_NOW
	else
		return OR_OK
	end
end
--´ò¿ªÇ°º¯Êý½áÊø&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&


--»ØÊÕº¯Êý¿ªÊ¼########################################################################
function	x710017_OnRecycle(sceneId,selfId,targetId)
	--Tr· v«1,Éú³¤ ði¬m»ØÊÕ
	return 1
end
--»ØÊÕº¯Êý½áÊø########################################################################



--´ò¿ªºóº¯Êý¿ªÊ¼@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
function	x710017_OnProcOver(sceneId,selfId,targetId)
	return 0
end
--´ò¿ªºóº¯Êý½áÊø@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

function x710017_OnTickCreateFinish( sceneId, growPointType, tickCount )
end

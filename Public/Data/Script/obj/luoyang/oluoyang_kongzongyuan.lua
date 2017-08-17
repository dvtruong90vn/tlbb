--ÂåÑôNPC
--¿××ÚÔ¨
--ÆÕÍ¨

x000124_g_ScriptId	= 000124

--²Ù×÷¼¯
x000124_g_Key				=
{
		["do"]					= 100,	--È·¶¨
		["undo"]				= 101,	--È¡Ïû
}

--******************************************************
--ÊÂ¼þ½»»¥Èë¿Ú
--******************************************************
function x000124_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta là ÐÕi T¯ng Di­n Thánh công, Vån thánh nhân Kh±ng Tôn Uyên. Nªu các hÕ có th×a ðÕo cø nhi®m vø chiªm t¯n không gian tay näi quý giá thì có th¬ giao cho ta xóa bö ði. Nhßng trß¾c khi xóa bö ðÕo cø các hÕ phäi cân nh¡c cho kÛ, có phäi ch¡c ch¡n không c¥n dùng ðªn næa" )
		AddNumText( sceneId, x000124_g_ScriptId, "Ta mu¯n xóa ðÕo cø nhi®m vø", -1, x000124_g_Key["do"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000124_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()

	if key == x000124_g_Key["do"]	then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 42 )
	end
end

--******************************************************
--Ïú»ÙÈÎÎñÎïÆ·
--ÓÉClient\Interface\MissionObjDel\MissionObjDel.lua·¢³ö
--******************************************************
function x000124_OnDestroy( sceneId, selfId, posItem )
	if posItem < 0 then
		return
	end
	
	local idItem = LuaFnGetItemTableIndexByIndex( sceneId, selfId, posItem )
	
	if idItem == 40002109 then 
		
		local ret = DelMission( sceneId, selfId, 4021 )
		if ret > 0 then		
			SetCurTitle(sceneId, selfId,  0, 124)
			DeleteTitle( sceneId, selfId,  5)
			LuaFnDispatchAllTitle(sceneId, selfId)			
			SetMissionData(sceneId,selfId,MD_CAOYUN_HUAN,0)
			SetMissionData(sceneId,selfId,MD_CAOYUN_MONSTERTIMER,0)
			LuaFnCancelSpecificImpact(sceneId,selfId,113)
		end
	
	end
	EraseItem( sceneId, selfId, posItem )
	x000124_OnDestroyLaborDay( sceneId, selfId, idItem )
end

--******************************************************
--Ïú»ÙÈÎÎñÎïÆ·µÄÌØÊâ´¦Àí ÎåÒ»½ÚÔùËÍ»î¶¯
--Áõ¶Ü 2008-04-17
--******************************************************
function x000124_OnDestroyLaborDay( sceneId, selfId, idItem )
	if(GlobalLaborDayActivityTable.PetCageCardID == idItem) then
		local hasImapct = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, GlobalLaborDayActivityTable.PetCageDelayBuff)
		if ( hasImapct > 0 ) then
			LuaFnCancelSpecificImpact(sceneId, selfId, GlobalLaborDayActivityTable.PetCageDelayBuff)
		end
	end
end

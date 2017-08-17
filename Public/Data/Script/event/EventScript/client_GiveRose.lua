-- ±¦Ê¯ºÏ³É

-- ½Å±¾ºÅ
x006673_g_scriptId = 006673

-- ½Å±¾Ãû³Æ
x006673_g_scriptName = "T£ng hoa h°ng"
x006673_g_Impact1 = 4918 --ÁÙÊ±Ð´Õâ¸ö

--**********************************************************************
-- ÈÎÎñÈë¿Úº¯Êý
--**********************************************************************
function x006673_OnDefaultEvent( sceneId, selfId, targetId )

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 23)

end

--**********************************************************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************************************************
function x006673_OnEnumerate( sceneId, selfId, targetId )


end

function x006673_GiveRose( sceneId, selfId, targetId )

local nObjID = LuaFnGuid2ObjId( sceneId, targetId )
local szName = GetName( sceneId, nObjID );

	
	local nSexSelf = LuaFnGetSex(sceneId, selfId)
    local nSexTarget = LuaFnGetSex(sceneId, nObjID)                
    if( nSexSelf == nSexTarget ) then
      LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)      
      return 0;                                            
    end 
    
    if LuaFnIsFriend(sceneId, nObjID, selfId) ~= 1 then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0;
	end
    
	local nYaoDingCount = GetItemCount(sceneId, selfId, 30509011);
	if nYaoDingCount <= 0 then
		x006673_NotifyTip(sceneId, selfId, "Các hÕ không có Hoa H°ng, xin hãy ðªn ti®m Nguyên Bäo mua.");
		return 0;
	end
	
	local msg = format("Các hÕ phäi chång mu¯n t£ng #G999 ðóa hoa h°ng#Y cho #G%s#Y?", szName);
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,x006673_g_scriptId);		
		UICommand_AddInt(sceneId, nObjID);
		UICommand_AddString(sceneId,"DoUseItemReal");
		UICommand_AddString(sceneId, msg);
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)

end



function x006673_DoUseItemReal( sceneId, selfId, param1, param2 )

	local szNameTarget = GetName( sceneId, param1 );
	local szNameSelf = GetName( sceneId, selfId );

	local targetId = param1;
	if LuaFnGetPropertyBagSpace( sceneId, param1 ) < 1 then
		x006673_NotifyTip( sceneId, selfId, "Tay näi ð¯i phß½ng ðã ð¥y, không th¬ tiªp nh§n hoa t£ng!" )
		return 0
	end
	
	local nItemBagIndex = GetBagPosByItemSn(sceneId, selfId, 30509011);
	local szTransfer = GetBagItemTransfer(sceneId,selfId, nItemBagIndex);
	local bRet = DelItem(sceneId, selfId, 30509011, 1);
	if bRet <= 0 then
		x006673_NotifyTip( sceneId, selfId, "Hüy bö ðÕo cø th¤t bÕi, xin ki¬m tra lÕi phäi chång khóa r°i!" )
		return 0;
	end
	
	if LuaFnIsFriend(sceneId, targetId, selfId) > 0 then
	
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, 66, 0);
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, x006673_g_Impact1, 0);
				
			local nFriendPoint = LuaFnGetFriendPoint( sceneId, selfId, targetId );
			if nFriendPoint >= 9999 then
			
				BeginEvent(sceneId)
					AddText(sceneId, "Ðµ häo hæu cüa các hÕ và ð¯i phß½ng ðã ðÕt mÑc cñc hÕn.");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)		
				
			else
			
				BeginEvent(sceneId)
				AddText(sceneId, "Ðµ thân thi®n giæa các hÕ và ð¯i phß½ng tång 5000");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				
			end
			
			
			local	namSelf		= GetName( sceneId, selfId )
			local	namTarget	= GetName( sceneId, targetId )
			
			--¸ø¶Ô·½ÓÃ¹âÐ§
			--LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, 18, 0);

			
			local randMessage = random(3);
			local message;

			if randMessage == 1 then
	   			message = format("@*;SrvMsg;SCA:#{_INFOUSR%s}#{GiveRose_00}#{_INFOMSG%s}#{GiveRose_01}#{_INFOUSR%s}#{GiveRose_02}", szNameSelf, szTransfer, szNameTarget );
			elseif randMessage == 2 then		
				message = format("@*;SrvMsg;SCA:#{_INFOUSR%s}#{GiveRose_03}#{_INFOMSG%s}#{GiveRose_04}#{_INFOUSR%s}#{GiveRose_05}", szNameSelf, szTransfer, szNameTarget );
			else		
				message = format("@*;SrvMsg;SCA:#{_INFOUSR%s}#{GiveRose_03}#{_INFOMSG%s}#{GiveRose_06}#{_INFOUSR%s}#{GiveRose_07}", szNameSelf, szTransfer, szNameTarget );
			end
			
			AddGlobalCountNews( sceneId, message )
			
			
			--½±Àø
			local	lstBounty	=
			{
				[0]	= { 10124021,	228, "Mai Quª Tiên TØ" },		--Å®×°
				[1]	= { 10124020,	227, "Tình Thánh" },				--ÄÐ×°
			}
			
			local	untBounty
			
			if GetSex( sceneId, selfId ) == 0 then
				untBounty	= lstBounty[0]
			else
				untBounty	= lstBounty[1]
			end
			
			if TryRecieveItem( sceneId, selfId, untBounty[1], 1 ) >= 0 then
				x006673_NotifyTip( sceneId, selfId, "Các hÕ nh§n ðßþc mµt "..GetItemName( sceneId, untBounty[1] ) )
			end
			 
			AwardTitle( sceneId, selfId, 8, untBounty[2] )
			LuaFnDispatchAllTitle( sceneId, selfId )		--¸üÐÂËùÓÐ³ÆºÅµ½CLIENT
			 x006673_NotifyTip( sceneId, selfId, "Các hÕ nh§n ðßþc danh hi®u ["..untBounty[3].."]" )

			 if GetSex( sceneId, targetId ) == 0 then
			 	untBounty	= lstBounty[0]
			 else
			 	untBounty	= lstBounty[1]
			 end
			 if TryRecieveItem( sceneId, targetId, untBounty[1], 1 ) >= 0 then
			 	x006673_NotifyTip( sceneId, targetId, "Các hÕ nh§n ðßþc mµt "..GetItemName( sceneId, untBounty[1] ) )
			 end
			 AwardTitle( sceneId, targetId, 8, untBounty[2] )
			 LuaFnDispatchAllTitle( sceneId, targetId )	--¸üÐÂËùÓÐ³ÆºÅµ½CLIENT
			 x006673_NotifyTip( sceneId, targetId, "Các hÕ nh§n ðßþc danh hi®u ["..untBounty[3].."]!" )
	end
	

end


--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x006673_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

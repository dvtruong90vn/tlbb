--Ì«ºþNPC
--Ôì·´¶ñÔô
--ÆÕÍ¨

--½Å±¾ºÅ
x005112_g_ScriptId	= 005112

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x005112_OnDefaultEvent( sceneId, selfId,targetId )
	
	x005112_UpdateEventList( sceneId, selfId, targetId )
	
	
end


--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x005112_UpdateEventList( sceneId, selfId, targetId )
	
	local nYaoDingCount = GetItemCount(sceneId, selfId, 40004415);
	
	if nYaoDingCount <= 0 then
		BeginEvent(sceneId)

			AddText(sceneId,"Linh dßþc ðã chª luy®n thành công, chï có ngß¶i luy®n ðßþc m¾i có linh dßþc - ÐÕi hoàn ð½n.")
		
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif nYaoDingCount >= 1 then
	
		local nItemBagIndex = GetBagPosByItemSn(sceneId, selfId, 40004415);
				
		local actId = 36;
		
		local status = GetActivityParam( sceneId, actId, 0 );
				
		local YaoDing_LianYao_TimeCur = GetActivityParam( sceneId, actId, 4 );	
		local YaoDing_LianYao_TimeItem = GetBagItemParam( sceneId, selfId, nItemBagIndex, 3, 2 );
		
		if YaoDing_LianYao_TimeCur ~= YaoDing_LianYao_TimeItem then
			DelItem(sceneId, selfId, 40004415, 1)
			return 0;
		end
		
		BeginEvent(sceneId)

			AddText(sceneId,"Linh dßþc - ÐÕi hoàn ð½n ðã chª luy®n thành công, xin höi các hÕ li®u mu¯n nh§n bây gi¶?")
			AddNumText(sceneId, x005112_g_ScriptId, "Nh§n ðÕi hoàn ð½n", 2, 0)

		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	
	end 
	
end


--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x005112_OnEventRequest( sceneId, selfId, targetId, eventId )

	if	GetNumText()==0 then
	
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x808004_MsgBox( sceneId, selfId, targetId, "Không gian trong Hành trang cüa các hÕ không ðü. Chïnh lý xong hãy t¾i tìm tÕi hÕ." )
			return 0;
		end
		
		
		if TryRecieveItem( sceneId, selfId, 30503093, 1 ) >= 0 then
			str		= "#YCác hÕ ðã nh§n ðßþc "..GetItemName( sceneId, 30503093 ).."¡£"
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
			x005112_NotifyTip( sceneId, selfId, str )
			
			DelItem(sceneId, selfId, 40004415, 1)
			
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ có ðßþc ðÕi hoàn ð½n r°i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
			LuaFnDeleteMonster(sceneId, targetId)
			
			--Í³¼ÆÐÅÏ¢
			local guidSelf = 
			LuaFnAuditHDXianCaoZhengDuo(sceneId, selfId, "SØ døng ÐÕi Hoàn Ðan thành công!");

		end		
		
		
	end
	
end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x005112_NotifyTip( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--Ä¬ÈÏ½¨ÉèÈÎÎñ

--¸øÐÕi T±ng Quän Bang Hµi5¸ö½ð±Ò

--MisDescBegin

--½Å±¾ºÅ

x805020_g_ScriptId = 805020



--ÈÎÎñºÅ

x805020_g_MissionId = 442



--ÉÏÒ»¸öÈÎÎñµÄID

x805020_g_MissionIdPre = 441



--Ä¿±êNPC

x805020_g_Name	="ÐÕi T±ng Quän Bang Hµi"



--ÈÎÎñµÀ¾ß±àºÅ

x805020_g_ItemId = 30101001



--ÈÎÎñµÀ¾ßÐèÇóÊýÁ¿

x805020_g_ItemNeedNum = 1



--ÈÎÎñ¹éÀà

x805020_g_MissionKind = 13



--ÈÎÎñµÈ¼¶

x805020_g_MissionLevel = 1



--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ

x805020_g_IfMissionElite = 0



--ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈÝ£¬ÓÃÓÚÔÚÈÎÎñÁÐ±íÖÐ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************

--ÈÎÎñÊÇ·ñÒÑ¾­Íê³É

x805020_g_IsMissionOkFail = 0		--±äÁ¿µÄµÚ0Î»



--ÒÔÉÏÊÇ¶¯Ì¬**************************************************************



--ÈÎÎñÐèÒªµÃµ½µÄÎïÆ·

x805020_g_DemandItem={{id=30101001,num=1}}		--±äÁ¿µÚ1Î»



--ÈÎÎñÃû

x805020_g_MissionName="Công trình kiªn trúc thång c¤p"

x805020_g_MissionInfo_1="  #R"

x805020_g_MissionInfo_2="#{city0_levelup_0001}"

x805020_g_MissionTarget="Cho ÐÕi T±ng Quän Bang Hµi 5 ð°ng ti«n"

x805020_g_MissionContinue="Các hÕ ðã có ðü 5 ð°ng ti«n chßa?"

x805020_g_MissionComplete="», làm khá l¡m. Xem ra các hÕ có nhi«u ti«n l¡m ð¤y"

x805020_g_MoneyBonus=0

x805020_g_SignPost = {x = 109, z = 167, tip = "ÐÕi T±ng Quän Bang Hµi"}

x805020_g_ItemBonus={{id=30304001,num=1}}

--MisDescEnd

--**********************************

--ÈÎÎñÈë¿Úº¯Êý

--**********************************

function x805020_OnDefaultEvent( sceneId, selfId, targetId )

    --Èç¹ûÒÑ½Ó´ËÈÎÎñ

		if IsHaveMission(sceneId,selfId,x805020_g_MissionId) > 0 then

			--·¢ËÍÈÎÎñÐèÇóµÄÐÅÏ¢

			BeginEvent(sceneId)

			AddText(sceneId,x805020_g_MissionName)

			AddText(sceneId,x805020_g_MissionContinue)

			EndEvent( )

			bDone = x805020_CheckSubmit( sceneId, selfId )

			DispatchMissionDemandInfo(sceneId,selfId,targetId,x805020_g_ScriptId,x805020_g_MissionId,bDone)

		--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ

		elseif x805020_CheckAccept(sceneId,selfId) > 0 then

			--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢

				local  PlayerName=GetName(sceneId,selfId)	

	            local  PlayerSex=GetSex(sceneId,selfId)

	            if PlayerSex == 0 then

		            PlayerSex = " cô nß½ng "

	            else

		            PlayerSex = " thiªu hi®p "

	            end

				BeginEvent(sceneId)

					AddText(sceneId,x805020_g_MissionName)

					AddText(sceneId,x805020_g_MissionInfo_1..PlayerName..PlayerSex..x805020_g_MissionInfo_2)

					AddText(sceneId,"#{M_MUBIAO}")

					AddText(sceneId,x805020_g_MissionTarget)

				EndEvent( )

				DispatchMissionInfo(sceneId,selfId,targetId,x805020_g_ScriptId,x805020_g_MissionId)

		end

end



--**********************************

--ÁÐ¾ÙÊÂ¼þ

--**********************************

function x805020_OnEnumerate( sceneId, selfId, targetId )

    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
		
    if IsHaveMission(sceneId,selfId,x805020_g_MissionId) > 0 then
 			
    	AddNumText(sceneId,x805020_g_ScriptId,x805020_g_MissionName,1,-1);
	
		--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
 		elseif x805020_CheckAccept(sceneId,selfId) > 0 then
 	
			AddNumText(sceneId,x805020_g_ScriptId,x805020_g_MissionName,2,-1);
		
		end

end



--**********************************

--¼ì²â½ÓÊÜÌõ¼þ

--**********************************

function x805020_CheckAccept( sceneId, selfId )

	--ÐèÒª1¼¶²ÅÄÜ½Ó

	if GetLevel( sceneId, selfId ) >= 1 then
	
		return 1

	else
		
		return 0

	end

end



--**********************************

--½ÓÊÜ

--**********************************

function x805020_OnAccept( sceneId, selfId )

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId,selfId, x805020_g_MissionId, x805020_g_ScriptId, 0, 0, 0 )
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Thång c¤p công trình kiªn trúc",MSG2PLAYER_PARA )

	end

--**********************************
--·ÅÆú
--**********************************

function x805020_OnAbandon( sceneId, selfId )

	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦µÄÈÎÎñ
  DelMission( sceneId, selfId, x805020_g_MissionId )
end



--**********************************

--¼ÌÐø

--**********************************

function x805020_OnContinue( sceneId, selfId, targetId )

	--Ìá½»ÈÎÎñÊ±µÄËµÃ÷ÐÅÏ¢

   BeginEvent(sceneId)

		AddText(sceneId,x805020_g_MissionName)

		AddText(sceneId,x805020_g_MissionComplete)

	 EndEvent( )

   DispatchMissionContinueInfo(sceneId,selfId,targetId,x805020_g_ScriptId,x805020_g_MissionId)

end



--**********************************

--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»

--**********************************

function x805020_CheckSubmit( sceneId, selfId )

	local	SelfMoney = GetMoney(sceneId, selfId)
	
	if(SelfMoney<50000) then
	
		return 0
		
	end

	return 1

end



--**********************************

--Ìá½»

--**********************************

function x805020_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x805020_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
			ret = DelMission( sceneId, selfId, x805020_g_MissionId )
			if ret > 0 then
	
				local	SelfMoney = GetMoney(sceneId, selfId)
				CostMoney(sceneId, selfId, 50000)			
				
				--Ôö¼Ó½¨Öþ½ø¶È
				
				CityIncProgress(sceneId, selfId, sceneId, 0)
				
				Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Thång c¤p công trình kiªn trúc",MSG2PLAYER_PARA )

			end
			
	end
	
end



--**********************************

--É±ËÀ¹ÖÎï»òÍæ¼Ò

--**********************************

function x805020_OnKillObject( sceneId, selfId, objdataId )

end



--**********************************

--½øÈëÇøÓòÊÂ¼þ

--**********************************

function x805020_OnEnterZone( sceneId, selfId, zoneId )

end



--**********************************

--µÀ¾ß¸Ä±ä

--**********************************

function x805020_OnItemChanged( sceneId, selfId, itemdataId )

end


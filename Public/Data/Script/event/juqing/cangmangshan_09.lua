-- 200038

-- Áù¾ü±ÙÒ× »¤ËÍ Tiêu Phong »Ø

--MisDescBegin
--½Å±¾ºÅ
x200038_g_ScriptId = 200038

--ÈÎÎñºÅ
x200038_g_MissionId = 32

--Ç°ÐøÈÎÎñºÅ
x200038_g_PreMissionId = 31

--Ä¿±êNPC
x200038_g_Name	="Tiêu Phong"

--ÈÎÎñ¹éÀà
x200038_g_MissionKind = 52

--ÐÆng c¤p nhi®m vø 
x200038_g_MissionLevel = 50

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x200038_g_IfMissionElite = 0

--ÈÎÎñÃû
x200038_g_MissionName="Løc Quân T¸ D¸ch"
--ÈÎÎñÃèÊö
x200038_g_MissionInfo="#{Mis_juqing_0032}"
--Møc tiêu nhi®m vø
x200038_g_MissionTarget="#{Mis_juqing_Tar_0032}"		
--Ìá½»Ê±npctoÕ ðµ »°
x200038_g_MissionComplete="  Gia Lu§t H°ng C½ lÕi nhìn th¤y m£t tr¶i, t¤t cä ð«u dña vào sÑc nghîa ð® Tiêu Phong và $N ðÕi hi®p. Hai v¸ xin nh§n mµt lÕy cüa Gia Lu§t H°ng C½!"		

x200038_g_MoneyBonus=54000
x200038_g_exp=62400

x200038_g_RadioItemBonus={{id=10422007 ,num=1},{id=10422008,num=1},{id=10422009,num=1},{id=10422010,num=1}}

x200038_g_Custom	= { {id="Ðã hµ t¯ng Tiêu Phong và Hoàng Thái Thúc quay v« trÕi B¡c núi Thß½ng Mang",num=1} }

--MisDescEnd

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200038_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	if IsHaveMission(sceneId,selfId,x200038_g_MissionId) > 0 then
			--C¥n ÈÎÎñÍê³É²Å¿ÉÒÔ
			local misIndex = GetMissionIndexByID(sceneId, selfId, x200038_g_MissionId)-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
			if GetMissionParam(sceneId, selfId, misIndex, 0) == 1	then   --Èç¹û»¤ËÍÍê³É
				BeginEvent(sceneId)
					AddText(sceneId,x200038_g_Name)
					AddText(sceneId,x200038_g_MissionComplete)
					AddText(sceneId,"#{M_MUBIAO}#r")
					AddText(sceneId,x200038_g_MissionTarget)
					AddMoneyBonus( sceneId, x200038_g_MoneyBonus )
					for i, item in x200038_g_RadioItemBonus do
						AddRadioItemBonus( sceneId, item.id, item.num )
					end
				EndEvent( )
				DispatchMissionContinueInfo(sceneId, selfId, targetId, x200038_g_ScriptId, x200038_g_MissionId)
		end
		
	elseif x200038_CheckAccept(sceneId,selfId) > 0 then

		BeginEvent(sceneId)
			AddText(sceneId, x200038_g_MissionName)
			AddText(sceneId, x200038_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId, x200038_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			for i, item in x200038_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
			AddMoneyBonus( sceneId, x200038_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200038_g_ScriptId,x200038_g_MissionId)
	end	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200038_OnEnumerate( sceneId, selfId, targetId )

	-- Èç¹ûÇ°ÐøÈÎÎñ1Ã»ÓÐÍê³É,¾ÍTr· v«
	if IsMissionHaveDone(sceneId, selfId, x200038_g_PreMissionId) <= 0   then
		return
	end
	-- Èç¹û±¾ÈÎÎñÒÑ¾­Íê³É,¾ÍTr· v«
	if IsMissionHaveDone(sceneId, selfId, x200038_g_MissionId) > 0 then
   	return
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif IsHaveMission(sceneId, selfId, x200038_g_MissionId) > 0 then

		if GetName(sceneId, targetId) == x200038_g_Name then
			--BeginEvent(sceneId)
				AddNumText(sceneId, x200038_g_ScriptId, x200038_g_MissionName,2,-1);
			--EndEvent()	
			DispatchEventList(sceneId, selfId, targetId)
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
  elseif x200038_CheckAccept(sceneId, selfId) > 0 then
		if GetName(sceneId, targetId) == x200038_g_Name then
			--BeginEvent(sceneId)
				AddNumText(sceneId, x200038_g_ScriptId, x200038_g_MissionName,1,-1);
			--EndEvent()
			DispatchEventList(sceneId, selfId, targetId)	
		end
  end
end

--**********************************
-- 
--**********************************
function x200038_OnLockedTarget( sceneId, selfId, targetId )

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x200038_CheckAccept( sceneId, selfId )
	-- ½ÓÈÎÎñtoÕ ðµ Ìõ¼þÐúng,ÈËÎï´ïµ½20c¤pÒÔÉÏ,²¢ÇÒÍê³ÉÁËÇ°ÐøÈÎÎñ
	
	-- 1,¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­×ö¹ý
	if (IsMissionHaveDone(sceneId,selfId,x200038_g_MissionId) > 0 ) then
		return 0
	end

	if GetLevel(sceneId, selfId) < x200038_g_MissionLevel   then
		return 0
	end
	
	if IsMissionHaveDone(sceneId, selfId, x200038_g_PreMissionId ) < 1   then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200038_OnAccept( sceneId, selfId, targetId )

	-- ¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­Íê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId, selfId, x200038_g_MissionId) > 0   then
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x200038_g_MissionId, x200038_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	
	Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Løc Quân T¸ D¸ch" , MSG2PLAYER_PARA )
	
	-- TÕi ÕâÀïÆô¶¯mµt cái»¤ËÍ,
	if LuaFnGetCopySceneData_Param(sceneId, 8) < 10  then
		LuaFnSetCopySceneData_Param(sceneId, 8, 10)
		LuaFnSetCopySceneData_Param(sceneId, 10, 1)
	end

end

--**********************************
--·ÅÆú
--**********************************
function x200038_OnAbandon( sceneId, selfId )
  --½«»¤ËÍnpcË²ÒÆ»ØÔ­À´Î»ÖÃ
  DelMission(sceneId, selfId, x200038_g_MissionId)
  
end

--**********************************
--¼ÌÐø
--**********************************
function x200038_OnContinue( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,x200038_g_Name)
		AddText(sceneId,x200038_g_MissionComplete)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200038_g_MissionTarget)
		AddMoneyBonus( sceneId, x200038_g_MoneyBonus )
		for i, item in x200038_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	
	DispatchMissionContinueInfo(sceneId, selfId, targetId, x200038_g_ScriptId, x200038_g_MissionId)

end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200038_CheckSubmit( sceneId, selfId )
	
	local misIndex = GetMissionIndexByID(sceneId, selfId, x200038_g_MissionId)
	
	local bComplete = GetMissionParam(sceneId, selfId, misIndex, 0)	
	if bComplete > 0 then
		return 1
	else
		return 0
	end
	
end

--**********************************
--Ìá½»
--**********************************
function x200038_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	-- ¼ì²âÐúng²»ÐúngThöa mãnHoàn t¤t nhi®m vøtoÕ ðµ Ìõ¼þ
	if x200038_CheckSubmit(sceneId, selfId) < 1 then 
		return
	end

	BeginAddItem(sceneId)
	for i, item in x200038_g_RadioItemBonus do
		if item.id == selectRadioId then

			AddItem( sceneId,item.id, item.num )
		end
	end
	ret = EndAddItem(sceneId,selfId)
	--Ìí¼ÓÈÎÎñ½±Àø
	if ret < 1 then
		--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
		BeginEvent(sceneId)
			strText = "Nhi®m vø th¤t bÕi!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	AddItemListToHuman(sceneId,selfId)
	
	--Ìí¼ÓÈÎÎñ½±Àø
	AddMoney(sceneId,selfId, x200038_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId, x200038_g_exp)

	DelMission( sceneId,selfId, x200038_g_MissionId )
	--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
	MissionCom( sceneId,selfId, x200038_g_MissionId )
	Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Løc Quân T¸ D¸ch",MSG2PLAYER_PARA )

	Msg2Player( sceneId, selfId,"Các hÕ ðã hoàn thành xong mµt loÕt nhi®m vø#G Thß½ng Mang S½n#W",MSG2PLAYER_PARA )
	local selfGuid = LuaFnObjId2Guid(sceneId, selfId)
	LuaFnSendMailToGUID(sceneId, selfGuid, "Các hÕ ðã hoàn thành xong 1 loÕt nhi®m vø#G Thß½ng Mang S½n #W. Sau khi ðÕt t¾i c¤p 60, t¾i tìm Tri®u Thiên Sß · ÐÕi Lý, M· h® th¯ng nhi®m vø #Gnúi C± Lôi #W")

	-- Íê³É²ÔÃ£É½¾çÇé,¸ø10 ði¬m¾çÇé ði¬m
	local nPoint = GetHumanJuqingPoint(sceneId, selfId)
	SetHumanJuqingPoint(sceneId, selfId, nPoint+10)
	
	-- Í¨ÖªÍæ¼Ò,¿ÉÒÔ×ö¾çÇéÑ­»·ÈÎÎñÁË
	-- ÄúÏÖTÕi ¿ÉÒÔÈ¥AA³ÇtoÕ ðµ [bb,cc]ÕÒµ½DD,Tiªp thøDDÑ­»·ÈÎÎñ.
	local strText1 = "#{LOOTMISSION_MAIL_09}"
	LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText1)
	
	BeginEvent(sceneId)
		AddText(sceneId,"#{LOOTMISSION_INFO_04}");
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

function x200038_OnHumanDie(sceneId, selfId)

end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x200038_OnTimer(sceneId,selfId)

end

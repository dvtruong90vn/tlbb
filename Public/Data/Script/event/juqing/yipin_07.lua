-- 200056 Su¯t ğ¶i có huynh 
-- »¤ËÍHß TrúcÕÒµ½ÃÎ¹Ã

-- Su¯t ğ¶i có huynh

--MisDescBegin
--½Å±¾ºÅ
x200056_g_ScriptId = 200056

--ÈÎÎñºÅ
x200056_g_MissionId = 45

--Ç°ĞøÈÎÎñºÅ
x200056_g_PreMissionId = 44

--Ä¿±êNPC
x200056_g_Name	="Hß Trúc"

-- 
x200056_g_Name1 = "Lı Thanh Lµ"

--ÈÎÎñ¹éÀà
x200056_g_MissionKind = 49

--ĞÆng c¤p nhi®m vø 
x200056_g_MissionLevel = 70

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200056_g_IfMissionElite = 0

--ÈÎÎñÃû
x200056_g_MissionName="Su¯t ğ¶i có huynh"
--ÈÎÎñÃèÊö
x200056_g_MissionInfo="#{Mis_juqing_0045}"
--Møc tiêu nhi®m vø
x200056_g_MissionTarget="#{Mis_juqing_Tar_0045}"		
--Ìá½»Ê±npctoÕ ğµ »°
x200056_g_MissionComplete="  Cám ½n huynh, $N. Muµi và Mµng Lang sau này s¨ s¯ng hÕnh phúc · ğây"		

x200056_g_MoneyBonus=48600
x200056_g_exp=86400

x200056_g_RadioItemBonus={{id=10423016 ,num=1},{id=10423017,num=1},{id=10423018,num=1},{id=10423019,num=1}}

x200056_g_Custom	= { {id="Ğã hµ t¯ng Hß Trúc",num=1} }

--MisDescEnd

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200056_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	
	if IsHaveMission(sceneId,selfId,x200056_g_MissionId) > 0 then
		if GetName(sceneId, targetId) == x200056_g_Name1  then
			--C¥n ÈÎÎñÍê³É²Å¿ÉÒÔ
			local misIndex = GetMissionIndexByID(sceneId, selfId, x200056_g_MissionId)-- ği¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖĞtoÕ ğµ ĞòÁĞºÅ
			if GetMissionParam(sceneId, selfId, misIndex, 0) == 1	then   --Èç¹û»¤ËÍÍê³É
				x200056_OnContinue( sceneId, selfId, targetId )
			end
		end
		
	elseif x200056_CheckAccept(sceneId,selfId) > 0 then

		BeginEvent(sceneId)
			AddText(sceneId, x200056_g_MissionName)
			AddText(sceneId, x200056_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId, x200056_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200056_g_MoneyBonus )
			for i, item in x200056_g_RadioItemBonus do
				AddRadioItemBonus( sceneId, item.id, item.num )
			end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200056_g_ScriptId,x200056_g_MissionId)
	end	
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200056_OnEnumerate( sceneId, selfId, targetId )

	if 0 > GetLevel(sceneId, selfId)  then
		return
	end
	
	-- Èç¹ûÇ°ĞøÈÎÎñ1Ã»ÓĞÍê³É,¾ÍTr· v«
	if IsMissionHaveDone(sceneId, selfId, x200056_g_PreMissionId) <= 0   then
		return
	end
	-- Èç¹û±¾ÈÎÎñÒÑ¾­Íê³É,¾ÍTr· v«
	if IsMissionHaveDone(sceneId, selfId, x200056_g_MissionId) > 0 then
   	return
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif IsHaveMission(sceneId, selfId, x200056_g_MissionId) > 0 then
		if GetName(sceneId, targetId) == x200056_g_Name1  then
			local misIndex = GetMissionIndexByID(sceneId, selfId, x200056_g_MissionId)-- ği¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖĞtoÕ ğµ ĞòÁĞºÅ
			if GetMissionParam(sceneId, selfId, misIndex, 0) == 1	then   --Èç¹û»¤ËÍÍê³É
				AddNumText(sceneId, x200056_g_ScriptId, x200056_g_MissionName,2,0);
			end
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
  elseif x200056_CheckAccept(sceneId, selfId) > 0 then
		if GetName(sceneId, targetId) == x200056_g_Name then
			AddNumText(sceneId, x200056_g_ScriptId, x200056_g_MissionName,1,-1);
		end
  end
end

--**********************************
-- 
--**********************************
function x200056_OnLockedTarget( sceneId, selfId, targetId )

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200056_CheckAccept( sceneId, selfId )
	-- ½ÓÈÎÎñtoÕ ğµ Ìõ¼şĞúng,ÈËÎï´ïµ½20c¤pÒÔÉÏ,²¢ÇÒÍê³ÉÁËÇ°ĞøÈÎÎñ
	if GetLevel(sceneId, selfId) < 20   then
		return 0
	end
	
	if IsMissionHaveDone(sceneId, selfId, x200056_g_PreMissionId ) < 1   then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x200056_OnAccept( sceneId, selfId, targetId )

	-- ¼ì²âÍæ¼ÒĞúng²»ĞúngÒÑ¾­Íê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId, selfId, x200056_g_MissionId) > 0   then
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x200056_g_MissionId, x200056_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end
	
	--ÉèÖÃÈÎÎñ±äÁ¿±¦ÎïtoÕ ğµ ³¡¾°±àºÅºÍ×ø±êÎ»ÖÃ
	local misIndex = GetMissionIndexByID(sceneId, selfId, x200056_g_MissionId)-- ği¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖĞtoÕ ğµ ĞòÁĞºÅ
	SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚmµt Î»ÖÃ0	µÚmµt Î»ĞúngÍê³É/th¤t bÕiÇé¿ö

	-- TÕi ÕâÀïÉèÖÃ»¤ËÍ¿ªÊ¼
	if LuaFnGetCopySceneData_Param(sceneId, 8) < 3  then
		LuaFnSetCopySceneData_Param(sceneId, 8, 3)
		LuaFnSetCopySceneData_Param(sceneId, 11, 1)
		LuaFnSetCopySceneData_Param(sceneId, 15, targetId)
	end
	
end

--**********************************
--·ÅÆú
--**********************************
function x200056_OnAbandon( sceneId, selfId )
  --½«»¤ËÍnpcË²ÒÆ»ØÔ­À´Î»ÖÃ
  DelMission(sceneId, selfId, x200056_g_MissionId)
  
end

--**********************************
--¼ÌĞø
--**********************************
function x200056_OnContinue( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText(sceneId,x200056_g_Name)
		AddText(sceneId,x200056_g_MissionComplete)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200056_g_MissionTarget)
		AddMoneyBonus( sceneId, x200056_g_MoneyBonus )
		for i, item in x200056_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	
	DispatchMissionContinueInfo(sceneId, selfId, targetId, x200056_g_ScriptId, x200056_g_MissionId)

end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200056_CheckSubmit( sceneId, selfId )
	
	local misIndex = GetMissionIndexByID(sceneId, selfId, x200056_g_MissionId)
	
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
function x200056_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	-- ¼ì²âĞúng²»ĞúngThöa mãnHoàn t¤t nhi®m vøtoÕ ğµ Ìõ¼ş
	if x200056_CheckSubmit(sceneId, selfId) < 1 then 
		return
	end

	BeginAddItem(sceneId)
	for i, item in x200056_g_RadioItemBonus do
		if item.id == selectRadioId then
			AddItem( sceneId,item.id, item.num )
		end
	end
	ret = EndAddItem(sceneId,selfId)
	--Ìí¼ÓÈÎÎñ½±Àø
	if ret < 1 then
		--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
		BeginEvent(sceneId)
			strText = "Không th¬ Hoàn t¤t nhi®m vø"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	AddItemListToHuman(sceneId,selfId)
	
	--Ìí¼ÓÈÎÎñ½±Àø
	AddMoney(sceneId,selfId, x200056_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId, x200056_g_exp)
	
	DelMission( sceneId,selfId, x200056_g_MissionId )
	--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ı
	MissionCom( sceneId,selfId, x200056_g_MissionId )
	Msg2Player( sceneId, selfId, "#YHoàn t¤t nhi®m vø#W: Su¯t ğ¶i có muµi", MSG2PLAYER_PARA )

	Msg2Player( sceneId, selfId,"Các hÕ ğã hoàn thành #Gnh¤t ph¦m ğß¶ng #Wnhi®m vø h® th¯ng",MSG2PLAYER_PARA )
	local selfGuid = LuaFnObjId2Guid(sceneId, selfId)
	LuaFnSendMailToGUID(sceneId, selfGuid, "Các hÕ ğã hoàn thành #Gnh¤t ph¦m ğß¶ng #Wnhi®m vø h® th¯ng.")

	-- Íê³Émµt Æ·ÌÃ¾çÇé,¸ø10 ği¬m¾çÇé ği¬m
	local nPoint = GetHumanJuqingPoint(sceneId, selfId)
	SetHumanJuqingPoint(sceneId, selfId, nPoint+10)
	
	-- Í¨ÖªÍæ¼Ò,¿ÉÒÔ×ö¾çÇéÑ­»·ÈÎÎñÁË
	-- ÄúÏÖTÕi ¿ÉÒÔÈ¥AA³ÇtoÕ ğµ [bb,cc]ÕÒµ½DD,Tiªp thøDDÑ­»·ÈÎÎñ.
	local strText1 = "#{LOOTMISSION_MAIL_13}"
	LuaFnSendSystemMail(sceneId, GetName(sceneId,selfId), strText1)
	
	BeginEvent(sceneId)
		AddText(sceneId,"#{LOOTMISSION_INFO_06}");
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

function x200056_OnHumanDie(sceneId, selfId)

end

--**********************************
--¶¨Ê±ÊÂ¼ş
--**********************************
function x200056_OnTimer(sceneId,selfId)

end


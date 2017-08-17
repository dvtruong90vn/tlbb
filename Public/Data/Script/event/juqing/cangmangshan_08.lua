-- 200037

-- 200037 ½ğ¸êµ´¿Ü÷é±ø
-- ²ÔÃ£É½toÕ ğµ ÖØÒª¾çÇé

-- ÔÙTÕi ¸±±¾ÄÚÍê³ÉÉ±¹ÖÈÎÎñ

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200037_g_ScriptId = 200037

--ÈÎÎñºÅ
x200037_g_MissionId = 31

--Ä¿±êNPC
x200037_g_Name = "Tiêu Phong"

--ÈÎÎñÎÄ±¾ÃèÊö
x200037_g_MissionName="Kim Qua Ğãng Kh¤u Ngao Binh"
x200037_g_MissionInfo="#{Mis_juqing_0031}"
x200037_g_MissionTarget="#{Mis_juqing_Tar_0031}"	--Møc tiêu nhi®m vø
x200037_g_MissionComplete="    $N, l¥n này thì quân tình cüa phän quân ğã löng l¨o r°i, không c¥n vµi, chúng ta tiªn t×ng bß¾c vào doanh, tri®t ğ¬ giäi tr× hªt b÷n phän loÕn. "	--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°
x200037_g_MissionContinue="  S· Vß½ng ğã b¸ giªt, Hoàng Thái Thúc cûng ğã r½i vào tay chúng ta"

x200037_g_MoneyBonus=36000
x200037_g_exp=34000

x200037_g_RadioItemBonus={{id=10423012 ,num=1},{id=10423013,num=1},{id=10423014,num=1}}

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200037_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200037_g_MissionId) > 0 then
		--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200037_g_MissionName)
			AddText(sceneId,x200037_g_MissionContinue)
			--AddMoneyBonus( sceneId, x200037_g_MoneyBonus )
		EndEvent( )
		bDone = x200037_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x200037_g_ScriptId,x200037_g_MissionId,bDone)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
  end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200037_OnEnumerate( sceneId, selfId, targetId )
  --Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
  if IsMissionHaveDone(sceneId,selfId,x200037_g_MissionId) > 0 then
		return
	end
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission(sceneId,selfId,x200037_g_MissionId) > 0 then
		AddNumText(sceneId,x200037_g_ScriptId,x200037_g_MissionName,2,-1);
		--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200037_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x200037_OnAccept( sceneId, selfId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x200037_OnAbandon( sceneId, selfId )

end

--**********************************
--¼ÌĞø
--**********************************
function x200037_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
		AddText(sceneId,x200037_g_MissionName)
		AddText(sceneId,x200037_g_MissionComplete)
		AddMoneyBonus( sceneId, x200037_g_MoneyBonus )
		for i, item in x200037_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x200037_g_ScriptId,x200037_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200037_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x200037_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	if LuaFnGetCopySceneData_Param(sceneId, 8) > 7  then
		return 1
	end
	
	return 0

end

--**********************************
--Ìá½»
--**********************************
function x200037_OnSubmit( sceneId, selfId, targetId,selectRadioId )

	if x200037_CheckSubmit(sceneId, selfId) == 1  then
		--Ìí¼ÓÈÎÎñ½±Àø
  	BeginAddItem(sceneId)
		for i, item in x200037_g_RadioItemBonus do
			if item.id == selectRadioId then
				AddItem( sceneId,item.id, item.num )
			end
		end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret < 1 then
			--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "Nhi®m vø th¤t bÕi!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		AddItemListToHuman(sceneId,selfId)

		AddMoney(sceneId,selfId, x200037_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200037_g_exp)

		DelMission( sceneId, selfId, x200037_g_MissionId )
		MissionCom( sceneId, selfId, x200037_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Kim Qua Ğãng Kh¤u Ngao Binh",MSG2PLAYER_PARA )
	end

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200037_OnKillObject( sceneId, selfId, objdataId ,objId)
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200037_OnEnterArea( sceneId, selfId, zoneId )

end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200037_OnItemChanged( sceneId, selfId, itemdataId )
end



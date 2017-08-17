-- 212141 
-- À§ÊŞÓÌ¶·


--MisDescBegin
--½Å±¾ºÅ
x212141_g_ScriptId = 212141

--Tiªp thøÈÎÎñNPCÊôĞÔ
x212141_g_Position_X=262
x212141_g_Position_Z=46
x212141_g_SceneID=18
x212141_g_AccomplishNPC_Name="Chüng Thª Hoành"

--ÈÎÎñºÅ
x212141_g_MissionId = 964

--Ç°ĞøÈÎÎñ
x212141_g_PreMissionId = 963

--ÈÎÎñ¹éÀà
x212141_g_MissionKind = 20

--ĞÆng c¤p nhi®m vø 
x212141_g_MissionLevel = 30

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x212141_g_IfMissionElite = 0

--ÈÎÎñÃû
x212141_g_MissionName="Kh¯n Thú ¿u Tú"
x212141_g_MissionInfo="#{Mis_shaolin_964}"
x212141_g_MissionTarget="#G NhÕn Môn Quan#W#R Chüng Thª Hoành #W#{_INFOAIM263,46,18, Chüng Thª Hoành} mu¯n các hÕ giªt chªt 20 tên T¥n Gia TrÕi BÕi Binh · vòng bao vây NhÕn Môn Quan."
x212141_g_MissionContinue="  Các hÕ ğã giªt hªt T¥n Gia TrÕi bÕi binh chßa ?"
x212141_g_MissionComplete="  Ngß½i ğã không làm b¨ m£t sß phø, $N quä nhiên danh b¤t hß truy«n!"

x212141_g_MoneyBonus=1000
x212141_g_exp=2000

x212141_g_Custom	= { {id="Ğã giªt chªt T¥n Gia TrÕi bÕi binh",num=20} }
x212141_g_IsMissionOkFail = 0

x212141_g_Menpai = 0

--MisDescEnd

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x212141_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x212141_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212141_g_MissionId) > 0)  then
		-- ¼ì²âÈÎÎñĞúng²»ĞúngÍê³ÉÁË
		BeginEvent(sceneId)
			AddText(sceneId,x212141_g_MissionName);
			AddText(sceneId,x212141_g_MissionContinue);
		EndEvent(sceneId)
  	local done = x212141_CheckSubmit( sceneId, selfId );
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x212141_g_ScriptId,x212141_g_MissionId,done)

	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x212141_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x212141_g_MissionName)
			AddText(sceneId,x212141_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x212141_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x212141_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x212141_g_ScriptId,x212141_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x212141_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x212141_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x212141_g_MissionId) > 0 then
		AddNumText(sceneId, x212141_g_ScriptId,x212141_g_MissionName,2,-1);
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x212141_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x212141_g_ScriptId,x212141_g_MissionName,1,-1);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x212141_CheckAccept( sceneId, selfId )
	-- 1,¼ì²âÍæ¼ÒĞúng²»ĞúngÒÑ¾­×ö¹ı
	if (IsMissionHaveDone(sceneId,selfId,x212141_g_MissionId) > 0 ) then
		return 0
	end
	
	-- Ç°ĞøÈÎÎñĞúng²»ĞúngÍê³É
	if (IsMissionHaveDone(sceneId,selfId,x212141_g_PreMissionId) < 1 ) then
		return 0
	end
	
	-- µÈc¤p¼ì²â
	if GetLevel(sceneId, selfId) < x212141_g_MissionLevel then
		return 0
	end
	
	-- ÃÅÅÉ¼ì²â
	if GetMenPai(sceneId, selfId) ~= x212141_g_Menpai  then
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x212141_OnAccept( sceneId, selfId, targetId )
	
	if x212141_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission(sceneId,selfId, x212141_g_MissionId, x212141_g_ScriptId, 1, 0, 0)
	if ret <= 0 then
		local strText = "#YDanh sách nhi®m vø#W: cüa các hÕ ğã ğ¥y r°i"
		Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
   	BeginEvent(sceneId)
			AddText(sceneId, strText)
	  EndEvent(sceneId)
  	DispatchMissionTips(sceneId,selfId)
		return
	end
	local strText = "#Y Tiªp nh§n nhi®m vø: Kh¯n Thú ¿u Tú."
	Msg2Player(sceneId, selfId, strText, MSG2PLAYER_PARA)
 	BeginEvent(sceneId)
		AddText(sceneId, strText)
  EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	local misIndex = GetMissionIndexByID(sceneId,selfId,x212141_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 0)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 0)
	
	--ÈÎÎñ¹ØĞÄÉ±ÈË
	
end

--**********************************
--·ÅÆú
--**********************************
function x212141_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
  DelMission( sceneId, selfId, x212141_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x212141_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
  BeginEvent(sceneId)
		AddText(sceneId,x212141_g_MissionName)
		AddText(sceneId,x212141_g_MissionComplete)
		AddMoneyBonus( sceneId, x212141_g_MoneyBonus )
  EndEvent()
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212141_g_ScriptId,x212141_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212141_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212141_g_MissionId )
	if bRet ~= 1 then
		return 0
	end
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212141_g_MissionId)
	
	if GetMissionParam(sceneId, selfId, misIndex, 0) == 0   then
		return 0
	end
	
	return 1
end

--**********************************
--Ìá½»
--**********************************
function x212141_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212141_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x212141_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212141_g_exp)
		DelMission( sceneId, selfId, x212141_g_MissionId )
		MissionCom( sceneId, selfId, x212141_g_MissionId )
		Msg2Player( sceneId, selfId,"#Y Hoàn thành nhi®m vø: Kh¯n Thú ¿u Tú",MSG2PLAYER_PARA )
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212141_OnKillObject( sceneId, selfId, objdataId, objId )	
	
	local missionId = x212141_g_MissionId
	
	-- C¥n ¿¼ÂÇËùÓĞ¶ÓÓÑ
	local monsterName = GetMonsterNamebyDataId(objdataId)
	if monsterName == "T¥n gia trÕi bÕi binh"   then
		
		local num = GetMonsterOwnerCount(sceneId,objId)
		for j=0,num-1  do
			--È¡ ği¬mÓµÓĞ·ÖÅäÈ¨toÕ ğµ ÈËtoÕ ğµ objId
			local humanObjId = GetMonsterOwnerID(sceneId,objId,j)
			
			-- ¿´Cái này ÈËĞúng²»ĞúngÓĞCái này ÈÎÎñ
			if IsHaveMission(sceneId, humanObjId, missionId) > 0 then
				-- ÏÈÅĞ¶ÏĞúng²»ĞúngÒÑ¾­Thöa mãnÁËÍê³É±êÖ¾
				local misIndex = GetMissionIndexByID(sceneId,humanObjId,missionId)

				if GetMissionParam(sceneId, humanObjId, misIndex, 0) <=0  then
					
					local killCount = GetMissionParam(sceneId, humanObjId, misIndex, 1)
					killCount = killCount + 1
		     	BeginEvent(sceneId)
						local strText = format("Ğã giªt chªt T¥n Gia TrÕi bÕi binh: " .. killCount .. "/20" )
						AddText(sceneId, strText)
				  EndEvent(sceneId)
			  	DispatchMissionTips(sceneId,humanObjId)
					
					if killCount >= 20 then
						SetMissionByIndex( sceneId, humanObjId, misIndex, 0, 1)
					end
					SetMissionByIndex( sceneId, humanObjId, misIndex, 1, killCount)
					
				end
			end
		end
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x212141_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212141_OnItemChanged( sceneId, selfId, itemdataId )
end


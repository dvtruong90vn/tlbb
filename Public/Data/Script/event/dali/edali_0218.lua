--Ãÿ ‚»ŒŒÒ ∏¯–¬ ÷“ª÷ªÕ√◊”
--Ω«…´µ»º∂–°”⁄10º∂æÕ∏¯“ª÷ªÕ√◊”£¨“ª∏ˆΩ«…´“ª¥Œ
--MisDescBegin
--Ω≈±æ∫≈
x210218_g_ScriptId = 210218

--»ŒŒÒ∫≈
x210218_g_MissionId = 458

--»ŒŒÒƒø±Ínpc
x210218_g_Name	="V‚n PhiÍu PhiÍu" 

--»ŒŒÒπÈ¿‡
x210218_g_MissionKind = 13

--»ŒŒÒµ»º∂
x210218_g_MissionLevel = 1

-- «∑Ò «æ´”¢»ŒŒÒ
x210218_g_IfMissionElite = 0

--œ¬√Êº∏œÓ «∂ØÃ¨œ‘ æµƒƒ⁄»›£¨”√”⁄‘⁄»ŒŒÒ¡–±Ì÷–∂ØÃ¨œ‘ æ»ŒŒÒ«Èøˆ**********************
--»ŒŒÒ «∑Ò“—æ≠ÕÍ≥…
x210218_g_IsMissionOkFail = 0		--±‰¡øµƒµ⁄0Œª

--“‘…œ «∂ØÃ¨**************************************************************

x210218_g_PetDataID = 3000

--»ŒŒÒŒƒ±æ√Ë ˆ
x210218_g_MissionName="Ta muØn mµt con thˆ"
x210218_g_MissionInfo="–ﬂ˛c r∞i, nhÏn ngﬂΩi l‡ ngﬂ∂i mæi ™n, cho ngﬂΩi 1 con ti¨u thØ, ngﬂΩi ph‰i yÍu thﬂΩng nÛ nha."  --»ŒŒÒ√Ë ˆ
x210218_g_MissionTarget="G˜i ta 1 ti™ng PhiÍu PhiÍu t÷ t÷ n‡o."		--»ŒŒÒƒø±Í
x210218_g_ContinueInfo="–‚y l‡ con thˆ ta nuÙi d’y c¶n thßn, ·ng yÍu nh§t. NgﬂΩi ph‰i chÂm sÛc nÛ c¶n thßn."		--Œ¥ÕÍ≥…»ŒŒÒµƒnpc∂‘ª∞
x210218_g_MissionComplete="Ch˙c vui vÎ ∑ –’i L˝."					--ÕÍ≥…»ŒŒÒnpcÀµª∞µƒª∞

--MisDescEnd
--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x210218_OnDefaultEvent( sceneId, selfId, targetId )	--µ„ª˜∏√»ŒŒÒ∫Û÷¥––¥ÀΩ≈±æ
	--»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ£® µº …œ»Áπ˚ÕÍ≥…¡À»ŒŒÒ’‚¿ÔæÕ≤ªª·œ‘ æ£¨µ´ «‘ŸºÏ≤‚“ª¥Œ±»Ωœ∞≤»´£©
    if IsMissionHaveDone(sceneId,selfId,x210218_g_MissionId) > 0 then
		return
	end
	
	local ret, retGUID_H, retGUID_L = LuaFnCreatePetToHuman(sceneId, selfId, x210218_g_PetDataID, -1, 0) --∏¯ÕÊº“…˙≥…“ª÷ª’‰ ﬁ
	if ret == 1 then 
		--œ¬∏ˆ¥∞ø⁄£¨Ã· æÕÊº““ª–©ª∞
		BeginEvent(sceneId)
		AddText(sceneId,x210218_g_ContinueInfo)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		--ÕÍ≥…»ŒŒÒ
		MissionCom( sceneId,selfId, x210218_g_MissionId )
	else
		BeginEvent(sceneId)
			AddText(sceneId,"C·c h’ khÙng th¨ mang qu· nhi´u tr‚n th˙")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x210218_OnEnumerate( sceneId, selfId, targetId )

  --»Áπ˚ÕÊº“ÕÍ≥…π˝’‚∏ˆ»ŒŒÒ
  if IsMissionHaveDone(sceneId,selfId,x210218_g_MissionId) > 0 then
   	return 
	end
  --»Áπ˚“—Ω”¥À»ŒŒÒ
  --else
  if IsHaveMission(sceneId,selfId,x210218_g_MissionId) > 0 then
		AddNumText(sceneId,x210218_g_ScriptId,x210218_g_MissionName,2,-1);
    --¬˙◊„»ŒŒÒΩ” ’Ãıº˛
    elseif x210218_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210218_g_ScriptId,x210218_g_MissionName,1,-1);
  end
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x210218_CheckAccept( sceneId, selfId )
	--–Ë“™8º∂≤≈ƒ‹Ω”
	if GetLevel( sceneId, selfId ) >= 8  then
		return 1
	else
		return 0
	end
end

--**********************************
--Ω” ‹
--**********************************
function x210218_OnAccept( sceneId, selfId )
end

--**********************************
--∑≈∆˙
--**********************************
function x210218_OnAbandon( sceneId, selfId )
end

--**********************************
--ºÃ–¯
--**********************************
function x210218_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x210218_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ã·Ωª
--**********************************
function x210218_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x210218_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x210218_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x210218_OnItemChanged( sceneId, selfId, itemdataId )
end

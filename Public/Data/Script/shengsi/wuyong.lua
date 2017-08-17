-- Áì½±NPC

x892015_g_scriptId = 892015

x892015_g_MonsterId = 13552    ---npc¹ÖÎïID
x892015_g_CreateId = 13456     ----´´½¨µÄ¹ÖÎïID
x892015_g_posX = 35            ----´´½¨¹ÖÎï×ø±êx
x892015_g_posY = 42            ----´´½¨¹ÖÎï×ø±êy
x892015_g_AIScript = 258       ----´´½¨¹ÖÎï¼¼ÄÜ¶ÔÓ¦ÎÄ¼þID
x892015_g_Title = "Thiên C½ Tinh"       ----´´½¨¹ÖÎï³ÆºÅ


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x892015_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "Lôi ðài sinh tØ không phäi là n½i mu¯n ðªn thì ðªn mu¯n ði thì ði ðâu nha..." )
		AddNumText( sceneId, x892015_g_scriptId, "#c00ff00Quyªt chiªn Ngô Vînh", 6, 200)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x892015_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 210 then
		BeginEvent( sceneId )
   		local n = GetMonsterCount(sceneId)
		if n>170 then
   		strText = "S¯ lßþng quái v§t hi®n tÕi: "..n..". Dß¾i 170 con có th¬ ðªn ðây làm m¾i lÕi t× ð¥u."
  		AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
   		else 
		BeginEvent( sceneId )
		LuaFnCreateMonster(531, 39339, 30, 30, 17, 0, 402030)
                AddText( sceneId, "Làm m¾i thành công, s¯ lßþng quái v§t hi®n tÕi là : "..n.."." )
           	AddText( sceneId, strText )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		end
  
        elseif GetNumText() == 200 then
	--ÊÇ²»ÊÇ¶Ó³¤....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_07}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	local nCount = GetMonsterCount(sceneId)
	for i=0, nCount-1  do
		local nObjId = GetMonsterObjID(sceneId, i)
		local MosDataID = GetMonsterDataID( sceneId, nObjId )
		if MosDataID == x892015_g_CreateId then
               	        BeginEvent( sceneId ) 
	        	           AddText( sceneId, "#GÐã b¡t ð¥u chiªn ð¤u, không th¬ l£p lÕi thao tác này." )
              	           EndEvent( sceneId )
               	        DispatchEventList( sceneId, selfId, targetId )
			return 
		end
	end
	CallScriptFunction( x892015_g_scriptId, "TipAllHuman", sceneId, "B¡t ð¥u chiªn ð¤u." )
	local nMonsterNum = GetMonsterCount(sceneId)
	local Monsters = x892015_g_MonsterId
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if Monsters == GetMonsterDataID( sceneId, MonsterId ) then
			--LuaFnDeleteMonster( sceneId, MonsterId )
			LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
			SetCharacterDieTime( sceneId, MonsterId, 1000 )
		end
	end

	local posX = x892015_g_posX
	local posY = x892015_g_posY
	local AIScript = x892015_g_AIScript
	local Title = x892015_g_Title

	local MstId = LuaFnCreateMonster(sceneId, x892015_g_CreateId, posX, posY, 27, AIScript, 501000);
	SetMonsterFightWithNpcFlag( sceneId, MstId, 0 )
	SetUnitReputationID(sceneId, selfId, MstId, 29)
	SetNPCAIType(sceneId, MstId, 1)
	if Title ~= "" then
		SetCharacterTitle(sceneId, MstId, Title)
	end
	LuaFnSendSpecificImpactToUnit(sceneId, MstId, MstId, MstId, 152, 0)

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

	 end
end

--**********************************
--ÌáÊ¾ËùÓÐ¸±±¾ÄÚÍæ¼Ò....
--**********************************
function x892015_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end
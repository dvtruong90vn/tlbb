-- Áì½±NPC

x892020_g_scriptId = 892020

x892020_g_MonsterId = 13557    ---npc¹ÖÎïID
x892020_g_CreateId = 13501     ----´´½¨µÄ¹ÖÎïID
x892020_g_posX = 28            ----´´½¨¹ÖÎï×ø±êx
x892020_g_posY = 23            ----´´½¨¹ÖÎï×ø±êy
x892020_g_AIScript = 256       ----´´½¨¹ÖÎï¼¼ÄÜ¶ÔÓ¦ÎÄ¼þID
x892020_g_Title = "Thiên Uy Tinh"       ----´´½¨¹ÖÎï³ÆºÅ


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x892020_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText( sceneId, "Lôi ðài sinh tØ không phäi là n½i mu¯n ðªn thì ðªn mu¯n ði thì ði ðâu nha..." )
		AddNumText( sceneId, x892020_g_scriptId, "#c00ff00Quyªt chiªn Hô Diên Trác", 6, 200)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x892020_OnEventRequest( sceneId, selfId, targetId, eventId )
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
		if MosDataID == x892020_g_CreateId then
               	        BeginEvent( sceneId ) 
	        	           AddText( sceneId, "#GÐã b¡t ð¥u chiªn ð¤u, không th¬ l£p lÕi thao tác này." )
              	           EndEvent( sceneId )
               	        DispatchEventList( sceneId, selfId, targetId )
			return 
		end
	end
	CallScriptFunction( x892020_g_scriptId, "TipAllHuman", sceneId, "B¡t ð¥u chiªn ð¤u." )
	local nMonsterNum = GetMonsterCount(sceneId)
	local Monsters = x892020_g_MonsterId
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if Monsters == GetMonsterDataID( sceneId, MonsterId ) then
			--LuaFnDeleteMonster( sceneId, MonsterId )
			LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
			SetCharacterDieTime( sceneId, MonsterId, 1000 )
		end
	end

	local posX = x892020_g_posX
	local posY = x892020_g_posY
	local AIScript = x892020_g_AIScript
	local Title = x892020_g_Title

	local MstId = LuaFnCreateMonster(sceneId, x892020_g_CreateId, posX, posY, 27, AIScript, 501000);
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
function x892020_TipAllHuman( sceneId, Str )

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
--¸±±¾ÈÎÎñ
--±£»¤°ïÅÉ×¤µØ
--

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x805042_g_ScriptId	= 805042
--¸±±¾Ãû³Æ
x805042_g_CopySceneName	= "Bäo hµ bang hµi trú ð¸a"
--ÈÎÎñºÅ
x805042_g_MissionId			= 1120
--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
x805042_g_MissionIdPre	= 0
--Ä¿±êNPC
x805042_g_Name					= "Bäo hµ bang hµi trú ð¸a"
--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x805042_g_IfMissionElite= 0
--ÐÆng c¤p nhi®m vø 
x805042_g_MissionLevel	= 10000
--ÈÎÎñ¹éÀà
x805042_g_MissionKind		= 1
--ÈÎÎñÎÄ±¾ÃèÊö
x805042_g_MissionName			= "Bäo hµ bang hµi trú ð¸a"
--ÈÎÎñÃèÊö
x805042_g_MissionInfo			= "  "
--Møc tiêu nhi®m vø
x805042_g_MissionTarget		= "  Giªt chªt toàn bµ quái v§t có th¬ hoàn thành nhi®m vø."
--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x805042_g_ContinueInfo		= "  "
--Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°
x805042_g_MissionComplete	= "  "


--**********************************ÒÔÉÏÐúng¶¯Ì¬****************************
--½ÇÉ«Mission±äÁ¿Ë ði¬m÷
x805042_g_Param_IsMissionOkFail	= 0						--0ºÅ: µ±Ç°ÈÎÎñÐúng·ñÍê³É(0Î´Íê³É£»1Íê³É)
x805042_g_Param_killmonstercount	= 1					--1ºÅ: É±ËÀÈÎÎñÐ¡¹ÖtoÕ ðµ ÊýÁ¿
x805042_g_Param_killbosscount	= 2							--2ºÅ: É±ËÀÈÎÎñboss¹ÖtoÕ ðµ ÊýÁ¿
x805042_g_Param_sceneid		= 3									--3ºÅ: µ±Ç°¸±±¾ÈÎÎñtoÕ ðµ ³¡¾°ºÅ
x805042_g_Param_teamid		= 4									--4ºÅ: ½Ó¸±±¾ÈÎÎñÊ±ºòtoÕ ðµ ¶ÓÎéºÅ
x805042_g_Param_time			= 5									--5ºÅ: Íê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»:  giây)
																							--6ºÅ: ¾ßÌå¸±±¾ÊÂ¼þ½Å±¾Õ¼ÓÃ
																							--7ºÅ: ¾ßÌå¸±±¾ÊÂ¼þ½Å±¾Õ¼ÓÃ
--MisDescEnd
--************************************************************************

x805042_g_CopySceneType			= FUBEN_PROTECTGUILD	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x805042_g_LimitMembers			= 3		--¿ÉÒÔ½ø¸±±¾toÕ ðµ ×îÐ¡¶ÓÎéÈËÊý
x805042_g_TickTime					= 5		--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x805042_g_LimitTotalHoldTime= 360	--¸±±¾¿ÉÒÔ´æ»îtoÕ ðµ Ê±¼ä(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x805042_g_LimitTimeSuccess	= 500	--¸±±¾Ê±¼äÏÞÖÆ(µ¥Î»: ´ÎÊý),Èç¹û´ËÊ±¼äµ½ÁË,Nhi®m vø hoàn thành
x805042_g_CloseTick					= 7		--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý) zchw 3-->7
x805042_g_NoUserTime				= 300	--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x805042_g_Fuben_X						= 99	--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x805042_g_Fuben_Z						= 152	--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ
x805042_g_Back_X						= 99	--Ô´³¡¾°Î»ÖÃX
x805042_g_Back_Z						= 152	--Ô´³¡¾°Î»ÖÃZ
x805042_g_Totalkillmonstercount	= 30	--C¥n É±ËÀmonsterÊýÁ¿
x805042_g_Totalkillbosscount	= 1	--C¥n É±ËÀBossÊýÁ¿

x805042_g_StartTick				=	3	--ÈÎÎñ¿ªÊ¼Ê±¼ä
x805042_g_CurrentStage			=	0	--µ±Ç°Ëù´¦toÕ ðµ ½×¶Î	0--15 giây¿ªÊ¼½×¶Î  1--8 phútÇåÀíÐ¡¹Ö½×¶Î 2--Boss½×¶Î
x805042_g_FirstStage			=	183	--µÚmµt ½×¶Î,15 phútÏÞÖÆ
x805042_g_FirstStage_msg		=	{4,9,15,21,27,33,39,45,51,57,63,69,75,81,87,93,99,105,111,117,123,129,135,141,147,153,159,165,171,175,177,178,179,180,181,182,}	--µÚmµt ½×¶Î,Ê£ÓàÊ±¼äÌáÊ¾

--¸±±¾Êý¾ÝË÷Òý¶ÔÕÕ
x805042_g_keySD					= {}
x805042_g_keySD["typ"]			= 0		--ÉèÖÃ¸±±¾ÀàÐÍ
x805042_g_keySD["spt"]			= 1		--ÉèÖÃ¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
x805042_g_keySD["tim"]			= 2		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
x805042_g_keySD["currStage"]	= 3		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
x805042_g_keySD["scn"]			= 4		--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
x805042_g_keySD["cls"]			= 5		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
x805042_g_keySD["dwn"]			= 6		--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
x805042_g_keySD["tem"]			= 7		--±£´æ¶ÓÎéºÅ
x805042_g_keySD["x"]			= 8			--ÈËÎïTÕi Èë¿Ú³¡¾°ÖÐtoÕ ðµ xÎ»ÖÃ
x805042_g_keySD["z"]			= 9			--ÈËÎïTÕi Èë¿Ú³¡¾°ÖÐtoÕ ðµ zÎ»ÖÃ
x805042_g_keySD["killMonsterNum"]	= 10		--É±ËÀ¹ÖÎïÊýÁ¿
x805042_g_keySD["genMonsterNum"]	= 11			--Éú³É¹ÖÎïÊýÁ¿
x805042_g_keySD["playerLevel"]	= 12		--¼ÇÂ¼µ±Ç°¸±±¾toÕ ðµ c¤p±ð

--½ÓÈ¡ÈÎÎñtoÕ ðµ ×îµÍµÈc¤p
x805042_g_minLevel			= 85

--¹ÖÎïÁÐ±í
x805042_g_monster_list = {
	[1]={
			StageId=1,
			MonsterList={
				{mType=9626,	x=74, 	z=90,	aiType=25,	aiScript=-1,	scriptId=805044, deltLevel=0	},
				{mType=9621,	x=72, 	z=90,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=76, 	z=90,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=74, 	z=92,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				
				{mType=9626,	x=50, 	z=97,	aiType=25,	aiScript=-1,	scriptId=805044, deltLevel=0	},
				{mType=9621,	x=48, 	z=97,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=52, 	z=97,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=50, 	z=95,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				
				{mType=9626,	x=46, 	z=91,	aiType=25,	aiScript=-1,	scriptId=805044, deltLevel=0	},
				{mType=9621,	x=47, 	z=93,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=47, 	z=89,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=49, 	z=91,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				
				{mType=9626,	x=45, 	z=72,	aiType=25,	aiScript=-1,	scriptId=805044, deltLevel=0	},
				{mType=9621,	x=47, 	z=72,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=45, 	z=70,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=45, 	z=74,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				
				{mType=9626,	x=44, 	z=59,	aiType=25,	aiScript=-1,	scriptId=805044, deltLevel=0	},
				{mType=9621,	x=46, 	z=59,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=44, 	z=57,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=44, 	z=61,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				
				{mType=9626,	x=44, 	z=47,	aiType=25,	aiScript=-1,	scriptId=805044, deltLevel=0	},
				{mType=9621,	x=42, 	z=47,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=46, 	z=47,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=44, 	z=49,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				
				{mType=9626,	x=64, 	z=55,	aiType=25,	aiScript=-1,	scriptId=805044, deltLevel=0	},
				{mType=9621,	x=62, 	z=55,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=66, 	z=55,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=64, 	z=57,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				
				{mType=9626,	x=134, 	z=50,	aiType=25,	aiScript=-1,	scriptId=805044, deltLevel=0	},
				{mType=9621,	x=132, 	z=50,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=136, 	z=50,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=134, 	z=52,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				
				{mType=9626,	x=149, 	z=44,	aiType=25,	aiScript=-1,	scriptId=805044, deltLevel=0	},
				{mType=9621,	x=147, 	z=44,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=151, 	z=44,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=149, 	z=46,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				
				{mType=9626,	x=148, 	z=56,	aiType=25,	aiScript=-1,	scriptId=805044, deltLevel=0	},
				{mType=9621,	x=146, 	z=56,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=148, 	z=54,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=148, 	z=58,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				
				{mType=9626,	x=147, 	z=96,	aiType=25,	aiScript=-1,	scriptId=805044, deltLevel=0	},
				{mType=9621,	x=145, 	z=96,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=147, 	z=94,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=147, 	z=98,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				
				{mType=9626,	x=128, 	z=98,	aiType=25,	aiScript=-1,	scriptId=805044, deltLevel=0	},
				{mType=9621,	x=126, 	z=98,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=130, 	z=98,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
				{mType=9621,	x=128, 	z=100,	aiType=25,	aiScript=-1,	scriptId=805046, deltLevel=-1	},
			}
		},
	[2]={
			StageId=2,
			MonsterList={
				{mType=9631,	x=99,	z=54,	aiType=25,	aiScript=-1,	scriptId=805045 , deltLevel=1	},
			}
		},
}


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x805042_OnDefaultEvent( sceneId, selfId, targetId )
	
	if GetNumText() == 1 then
		if x805042_CheckEnter( sceneId, selfId, targetId ) ~= 1  then
			return
		end
	
		if (x805042_OnAccept( sceneId, selfId ) == 1) then
			LuaFnDeleteMonster( sceneId, targetId)
		end
	elseif GetNumText() == 2 then
		
		if GetName( sceneId, targetId ) == "S½n QuÖ" then
			x805042_MsgBox( sceneId, selfId, targetId, "#{bhbpzd_20080522_002}" )
		elseif GetName( sceneId, targetId ) == "S½n Yêu" then
			x805042_MsgBox( sceneId, selfId, targetId, "#{bhbpzd_20080522_001}" )
		end
		
	end

end



function x805042_CheckEnter( sceneId, selfId, targetId )

	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x805042_MsgBox_With_Help( sceneId, selfId, targetId, "S½n th¥n ðã mu¯n ð¯i này bang hµi thành th¸ không th¬ nh¸n ðßþc næa, phäi phát uy ! Ngß½i mµt ngß¶i ðã nghî ðªn khiêu chiªn s½n th¥n sao, r¤t không biªt lßþng sÑc!" )
		return 0
	end
	
	local nPlayerNum = GetNearTeamCount(sceneId,selfId)
	for i=0, nPlayerNum-1  do
		local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
		if GetLevel(sceneId,nPlayerId) < x805042_g_minLevel  then
			x805042_MsgBox_With_Help( sceneId, selfId, targetId, "S½n th¥n ðã mu¯n ð¯i này bang hµi thành th¸ không th¬ nh¸n ðßþc næa, phäi phát uy ! Các ngß½i vçn là ð«u ðÕt t¾i 85 c¤p lÕi ðªn khiêu chiªn cß¶ng ðÕi  s½n th¥n ði!" )
			return 0
		end
	end


	if GetTeamSize( sceneId, selfId ) < x805042_g_LimitMembers then
	  x805042_MsgBox_With_Help( sceneId, selfId, targetId, "S½n th¥n ðã mu¯n ð¯i này bang hµi thành th¸ không th¬ nh¸n ðßþc næa, phäi phát uy ! Các ngß½i mu¯n khiêu chiªn ta ít nh¤t cûng mu¯n ðªn ba ngß¶i, nªu không s½n th¥n là khinh thß¶ng cho cùng các ngß½i ðµng thü!" )
	  return 0
	end


	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		x805042_MsgBox_With_Help( sceneId, selfId, targetId, "S½n th¥n ðã mu¯n ð¯i này bang hµi thành th¸ không th¬ nh¸n ðßþc næa, phäi phát uy ! Mu¯n khiêu chiªn ta? G÷i các ngß½i  ðµi trß·ng ðªn ðây ði!" )
		return 0
	end


	-- È¡ ði¬mÍæ¼Ò¸½½ütoÕ ðµ ¶ÓÓÑÊýÁ¿(°üÀ¨×Ô¼º)
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x805042_MsgBox_With_Help( sceneId, selfId, targetId, "S½n th¥n ðã mu¯n ð¯i này bang hµi thành th¸ không th¬ nh¸n ðßþc næa, phäi phát uy ! Mu¯n khiêu chiªn ta? Vçn là ch¶ các ngß½i  m÷i ngß¶i ðªn ðông ðü ði!" )
		return 0
	end
	
	return 1
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x805042_OnEnumerate( sceneId, selfId, targetId )

	if x805042_CheckEnter( sceneId, selfId, targetId ) ~= 1  then
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, "S½n th¥n ðã mu¯n ð¯i này bang hµi thành th¸ không th¬ nh¸n ðßþc næa, phäi phát uy ! Không biªt s¯ng chªt  phàm nhân a, nªm thØ s½n lñc lßþng cüa th¥n ði!" )
		AddNumText( sceneId, x805042_g_ScriptId, "Khiêu chiªn S½n Th¥n" ,10 ,1)
		AddNumText( sceneId, x805042_g_ScriptId, "V« bäo hµ bang hµi" ,11 ,2)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x805042_CheckAccept( sceneId, selfId )

	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x805042_OnAccept( sceneId, selfId )
	local numMem	= GetNearTeamCount( sceneId, selfId )	
	return x805042_MakeCopyScene( sceneId, selfId, numMem )
end

--**********************************
--·ÅÆú
--**********************************
function x805042_OnAbandon( sceneId, selfId )

end

--**********************************
--´´½¨¸±±¾
--**********************************
function x805042_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mems = {}
	local mylevel = 0
	local i

	local member, mylevel, numerator, denominator = 0, 0, 0, 0

	for	i = 0, nearmembercount - 1 do
		member = GetNearTeamMember( sceneId, selfId, i )
		numerator = numerator + GetLevel( sceneId, member ) ^ 4
		denominator = denominator + GetLevel( sceneId, member ) ^ 3
		mems[i] = member
	end

	if denominator <= 0 then
		mylevel = 0
	else
		mylevel = numerator / denominator
	end

	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	--µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetSceneLoad_Map( sceneId, "protectguild.nav" )
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x805042_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x805042_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["typ"], x805042_g_CopySceneType )
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["spt"], x805042_g_ScriptId )
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["tim"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["currStage"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["scn"], -1 )
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["cls"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["dwn"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["tem"], GetTeamId( sceneId, selfId ) )
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["playerLevel"], mylevel)
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["killMonsterNum"] , 0)	
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["genMonsterNum"] , 0)	

	local x,z = GetWorldPos( sceneId, selfId )

	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["x"], x805042_g_Back_X )
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["z"], x805042_g_Back_Z )

	LuaFnSetSceneLoad_Monster( sceneId, "protectguild_monster.ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c¤p±ð²î,CopyScene_LevelGap TÕi  scene.lua ÖÐ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
	if bRetSceneID > 0 then
		x805042_NotifyTip( sceneId, selfId, "D¸ch chuy¬n thành công" )
		return 1
	else
		x805042_NotifyTip( sceneId, selfId, "Bän sao s¯ lßþng ðã ðÕt thßþng hÕn, thïnh ch¶ mµt chút thØ lÕi!" )
		return 0
	end

end

--**********************************
--¼ÌÐø
--**********************************
function x805042_OnContinue( sceneId, selfId, targetId )

end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x805042_CheckSubmit( sceneId, selfId, selectRadioId )


end

--**********************************
--Ìá½»
--**********************************
function x805042_OnSubmit( sceneId, selfId, targetId, selectRadioId )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x805042_OnKillObject( sceneId, selfId, objdataId, objId )

end



--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x805042_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x805042_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x805042_OnCopySceneReady( sceneId, destsceneId )
	--ÉèÖÃThành ph¯ ¸±±¾ÌØÊâÊý¾Ý
	LuaFnSetSceneCopySceneCityData(sceneId, destsceneId )
	LuaFnSetIsCityCopyScene( destsceneId, 1)

	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	LuaFnSetCopySceneData_Param( destsceneId, x805042_g_keySD["scn"], sceneId )
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	--ÕÒ²»µ½¸ÃÍæ¼Ò
	if leaderObjId == -1 then
		return
	end

	--´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	--È¡ ði¬mÍæ¼Ò¸½½ütoÕ ðµ ¶ÓÓÑÊýÁ¿(°üÀ¨×Ô¼º)
	local numMem	= GetNearTeamCount( sceneId, leaderObjId )
	local member
	
	--»î¶¯Í³¼Æ
	LuaFnAuditQuest(sceneId, leaderObjId, x805042_g_MissionName.."-"..x805042_g_CopySceneName)

	local cityName = LuaFnCityGetNameBySceneId( sceneId )
	local strLog = format("CopyScene Start  SceneId=%d, CityName=%s", sceneId, cityName )
	AuditProtectGuild( sceneId, strLog)

	for	i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )

		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then			-- ´¦ÓÚ¿ÉÒÔÖ´ÐÐÂß¼­toÕ ðµ ×´Ì¬

			NewWorld( sceneId, member, destsceneId, x805042_g_Fuben_X, x805042_g_Fuben_Z )
			
			local strLog = format("Player Enter CopyScene  SceneId=%d, CityName=%s, PlayerGuid=%x", sceneId, cityName, LuaFnGetGUID(sceneId, member)  )
			AuditProtectGuild( sceneId, strLog)
			
			--»î¶¯Í³¼Æ
			LuaFnAuditQuest(sceneId, member, x805042_g_MissionName.."-"..x805042_g_CopySceneName)
		end
	end
	
end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x805042_OnPlayerEnter( sceneId, selfId )
	--ÉèÖ giâyÀÍöºó¸´»î ði¬mÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x805042_g_Fuben_X, x805042_g_Fuben_Z )

end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x805042_OnHumanDie( sceneId, selfId, killerId )
--	x = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["x"] )
--	z = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["z"] )
--	NewWorld( sceneId, selfId, oldsceneId, x, z )

	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x805042_g_Fuben_X, x805042_g_Fuben_Z )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x805042_OnCopySceneTimer( sceneId, nowTime )

	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	--È¡ ði¬mÒÑ¾­Ö´ÐÐtoÕ ðµ ¶¨Ê±´ÎÊý
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["tim"] )
	TickCount = TickCount + 1
	--ÉèÖÃÐÂtoÕ ðµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["tim"], TickCount )
	
	x805042_g_CurrentStage = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["currStage"] )

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["cls"] )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	if membercount==0 and leaveFlag~=1 then
		LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["cls"], 1 )
		return
	end

	for	i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--C¥n Àë¿ª
	if leaveFlag == 1 then
		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ðµ ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["dwn"] )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["dwn"], leaveTickCount )

		if leaveTickCount >= x805042_g_CloseTick then										--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["scn"] )	--È¡ ði¬m¸±±¾Èë¿Ú³¡¾°ºÅ

			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ðµ ËùÓÐÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ðµ ³¡¾°
			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["x"] )
					z = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["z"] )
					NewWorld( sceneId, mems[i], oldsceneId, x, z )
				end
			end

		elseif leaveTickCount < x805042_g_CloseTick then
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ðµ ËùÓÐÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Hoàn t¤t nhi®m vø, trong vòng %d giây næa s¨ r¶i khöi.", (x805042_g_CloseTick-leaveTickCount) * x805042_g_TickTime )

			x805042_TipAllHuman( sceneId,  strText)
		end
	end
	
	
	if x805042_g_CurrentStage == 0 then
		local strText = "";
		
		if TickCount >= x805042_g_StartTick then
			x805042_g_CurrentStage = 1
			LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["currStage"] , x805042_g_CurrentStage)
			
			--Éú³É¹ÖÎï
			x805042_GenObj( sceneId, 1 )
			
			strText = "Cuµc chiªn b¡t ð¥u!";
			
			x805042_TipAllHuman( sceneId,  strText)
			x805042_TipAllHuman( sceneId,  "Giªt chªt S½n QuÖ trong vòng 15 phút")
			
		else
			strText = format("Sau %ds cuµc chiªn b¡t ð¥u!", (x805042_g_StartTick - TickCount) * x805042_g_TickTime);
			x805042_TipAllHuman( sceneId,  strText)
		end
	end
	
	if x805042_g_CurrentStage == 1 then
		
		local killNum = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["killMonsterNum"] )	
		local genNum = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["genMonsterNum"] )	
		
		if killNum == genNum then
			x805042_g_CurrentStage = 2
			LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["currStage"] , x805042_g_CurrentStage)
			
			--Éú³É¹ÖÎï
			x805042_GenObj( sceneId, 2 )
		
				
			return
		end
		
		if TickCount >= x805042_g_FirstStage then
			--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓÐÊ±¼äÏÞÖÆtoÕ ðµ Çé¿ö,µ±Ê±¼äµ½ºó´¦Àí...
			x805042_TipAllHuman( sceneId,  "Nhi®m vø th¤t bÕi!")
	
			--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
			LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["cls"], 1 )
		end
		
		local msgTick = 0
		for msgTick = 1, getn(x805042_g_FirstStage_msg) do
			if TickCount == x805042_g_FirstStage_msg[msgTick] then
				local tickMsg = format("Giªt chªt t¤t cä S½n QuÖ, còn th×a th¶i gian %d giây", (x805042_g_FirstStage-TickCount)*x805042_g_TickTime)
				x805042_TipAllHuman( sceneId,  tickMsg)
				break
			end
		end
	end
	
	if x805042_g_CurrentStage == 2 then
		local killNum = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["killMonsterNum"] )	
		local genNum = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["genMonsterNum"] )	
		
		if killNum == genNum then
			--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
			LuaFnSetCopySceneData_Param( sceneId, x805042_g_keySD["cls"], 1 )
		end
	end
	
	local killNum = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["killMonsterNum"] )	
	local genNum = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["genMonsterNum"] )	
	--x805042_TipAllHuman(sceneId, killNum.." / "..genNum )
end


function x805042_GenObj( sceneId, stageid )
	if x805042_g_monster_list[stageid] == nil then
		return
	end
	
    local IndexList = x805042_g_monster_list[stageid].MonsterList
    local IndexListSize = getn( IndexList )
    
    local i=1
    local str
    for i=1, IndexListSize do        
		local MonsterId = x805042_CreateNpc( sceneId, IndexList[i].mType, IndexList[i].x, IndexList[i].z, IndexList[i].aiType, IndexList[i].aiScript, IndexList[i].scriptId, IndexList[i].deltLevel )
    end
end


--**********************************
-- Í¨ÓÃ´´½¨¹ÖÎïº¯Êý
--**********************************
function x805042_CreateNpc(sceneId, NpcId, x, y, Ai, AiFile, Script, deltLevel)
	local PlayerLevel = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["playerLevel"])
	local ModifyLevel = 0
	
	--PrintStr("  "..PlayerLevel.." "..x.." "..y.." ")
	
	if PlayerLevel > 80   then
		ModifyLevel = 1
	end
	if PlayerLevel > 90   then
		ModifyLevel = 2
	end
	if PlayerLevel > 100   then         
		ModifyLevel = 3
	end
	if PlayerLevel > 110   then         
		ModifyLevel = 4
	end
	if PlayerLevel > 120   then         
		ModifyLevel = 5
	end
	if PlayerLevel > 130   then         
		ModifyLevel = 6
	end
	if PlayerLevel > 140   then         
		ModifyLevel = 7
	end
	local nNpcId = NpcId + ModifyLevel-1
	local nMonsterId = LuaFnCreateMonster(sceneId, nNpcId, x, y, Ai, AiFile, Script)
	SetLevel(sceneId, nMonsterId, PlayerLevel + deltLevel)
	
	-- ¿´ÓÐÃ»ÓÐÉèÖÃ³ÆºÅ,ÓÐ¾Í¼Ó³ÆºÅ
	--x805042_SetNpcTitle(sceneId, nMonsterId)
	local strNpcName = GetName(sceneId, nMonsterId )
	if (strNpcName == "ÐÕi S½n QuÖ") or (strNpcName == "S½n Th¥n") then
			SetCharacterTitle(sceneId, nMonsterId, "ThÕch ð¥u quái nhân")
	end
	
	return nMonsterId
end


--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x805042_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x805042_MsgBox( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

function x805042_MsgBox_With_Help( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
		AddNumText( sceneId, x805042_g_ScriptId, "V« bäo hµ bang hµi" ,11 ,2)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--ÌáÊ¾ËùÓÐ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x805042_TipAllHuman( sceneId, Str )
	--  ðÕt ðßþc³¡¾°ÀïÍ·toÕ ðµ ËùÓÐÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
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


--Íæ¼Ò½øÈëmµt cái area Ê±´¥·¢
function x805042_OnEnterArea( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["scn"] )	--È¡ ði¬m¸±±¾Èë¿Ú³¡¾°ºÅ
	local x = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["x"] )
	local z = LuaFnGetCopySceneData_Param( sceneId, x805042_g_keySD["z"] )

	NewWorld( sceneId, selfId, oldsceneId, x, z )
end

--Íæ¼ÒTÕi mµt cái area ´ôÁËmµt ¶ÎÊ±¼äÃ»×ßÔò¶¨Ê±´¥·¢
function x805042_OnTimer( sceneId, selfId )

end

--Íæ¼ÒÀë¿ªmµt cái area Ê±´¥·¢
function x805042_OnLeaveArea( sceneId, selfId )
	
end

--Ê°È¡ÎïÆ·
function x805042_OnPlayerPickUpItem( sceneId, selfId, itemId, bagidx )


end

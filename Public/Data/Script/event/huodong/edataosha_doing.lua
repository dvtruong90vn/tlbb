--´óÌÓÉ±
--»î¶¯½øÐÐÖÐ
--¸±±¾µØÍ¼´óÐ¡Îª256*256,¹²°üº¬64*64toÕ ðµ 16cáiÐ¡·¿¼ä

--½Å±¾ºÅ
x808002_g_ScriptId			= 808002
x808002_g_ScriptId_Ctrl	= 808003		--»Øµ÷½Å±¾

x808002_g_PlyJoinMax		= 64				--×î´ó±¨ÃûÈËÊý
x808002_g_GoldMin				= 10000			--±¨Ãû·Ñ
x808002_g_LevelMin			= 40				--×îµÍµÈc¤pÏÞÖÆ
x808002_g_GodBuff				= 112				--ÎÞµÐBUFF
x808002_g_CampA					= 10				--Khiêu chiªnA·½ÕóÓªºÅ
x808002_g_CampB					= 11				--Khiêu chiªnB·½ÕóÓªºÅ
x808002_g_BackCity			=						--»Ø³Ç×ø±ê
{
	["scn"]	= 1,
	["px"]	= 183,
	["pz"]	= 140,
}

--¸±±¾Ïà¹Ø
x808002_g_CopySceneName	= "TÖ Võ Hµi Trß¶ng"		--¸±±¾Ãû³Æ
x808002_g_CopySceneType	= FUBEN_DATAOSHA--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x808002_g_CopySceneMap	= "dataosha.nav"
x808002_g_TickTime			= 5					--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x808002_g_CloseTick			= 6					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊý)
x808002_g_NoUserTime		= 600				--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x808002_g_PvpRuler			= 5					--¸±±¾Pvp¹æÔò,¿ÉPK
x808002_g_JoinTick			= 3					--±¨Ãûµ¹¼ÆÊ±

--¸±±¾Êý¾ÝÇøË÷Òý
x808002_g_ScnParam			=
{
	["typ"]	= 0,	--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	["sid"]	= 1,	--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	["tim"]	= 2,	--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	["ent"]	= 3,	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	["cls"]	= 4,	--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	["rnd"]	= 5,	--ÉèÖÃµÚ¼¸»ØºÏ
	["jon"]	= 6,	--ÉèÖÃ±¨Ãûµ¹¼ÆÊ±´ÎÊý
	["chk"]	= 7,	--ÉèÖÃÐ£ÑéÊ±¼ä²î
	["tab"]	= 8,	--ÉèÖÃ±íµ¥ID
}

--ÅÅÐÐ°ñ±íµ¥Êý¾ÝÇøË÷Òý
x808002_g_TabParam			=
{
	["enn"]	= 0,	--½øÈë¸±±¾toÕ ðµ ÈËÊý
	["fbn"]	= 1,	--Ê¹ÓÃ¸±±¾ÊýÁ¿
	["fb1"]	= 2,	--¸±±¾1toÕ ðµ SceneId
	["fb2"]	= 3,	--¸±±¾2toÕ ðµ SceneId
	["fbs"]	= 4,	--¸±±¾toÕ ðµ ´´½¨×´Ì¬: 0(¿ÕÏÐ),1(´´½¨ÖÐ)
}

--ÏûÏ¢ÌáÊ¾
x808002_g_Msg						=
{
	["flw"]		= "Xin l²i, trong trÕng thái theo sau t± ðµi không th¬ báo danh.",
	["drd"]		= "Xin l²i, trong trÕng thái thú cßÞi ðôi không th¬ báo danh.",
	["ear"]		= "Hi®n không phäi là th¶i gian báo danh cüa hoÕt ðµng. Hãy t¾i tìm ta trong th¶i gian báo danh",
	["pop1"]	= "  ÐÕi hµi thí võ hi®n chính thÑc b¡t ð¥u. Nhæng thí sinh l¥n ð¥u tham dñ m²i ngß¶i phäi nµp #{_MONEY"..x808002_g_GoldMin.."} phí báo danh, các hÕ có mu¯n tham gia không?",
	["gld"]		= "Ngân lßþng trên ngß¶i các hÕ không ðü #{_MONEY"..x808002_g_GoldMin.."}, xin gom ðü s¯ ngân lßþng r°i hÇng t¾i tìm ta báo danh",
	["itm"]		= "Tay näi cüa các hÕ t¯t nh¤t nên có ch² tr¯ng. Võ trÕng nguyên có t£ng thß·ng ðó!",
	["ful"]		= "Xin l²i, s¯ lßþng báo danh cüa nhóm có cùng ðÆng c¤p cüa các hÕ ðã ðü, xin ðþi l¥n sau t¾i tham gia",
	["lev"]		= "Xin l²i, chï có"..x808002_g_LevelMin.."T× c¤p tr· lên m¾i ðßþc tham gia tÖ thí",
	["grp"]		= "Xin l²i, cuµc tÖ thí cüa nhóm cùng ðÆng c¤p v¾i các hÕ vçn chßa m·",
	["popn"]	= "  Hi®n là th¶i gian báo danh cho vòng thi tiªp theo cüa ðÕi hµi thí võ, chï có nhæng kë th¡ng cuµc cüa vòng ð¥u m¾i ðßþc báo danh tiªp",
	["fal"]		= "Xin l²i, chï có nhæng kë th¡ng cuµc cüa vòng ð¥u m¾i ðßþc báo danh tiªp",

	["n_son"]	= "HoÕt ðµng ÐÕi hµi thí võ Nhóm c¤p %d l¥n này còn %d phút næa kªt thúc, Xin các v¸ tuy¬n thü nhanh chóng kªt thúc thí võ",
	["n_end"]	= "HoÕt ðµng ÐÕi hµi thí võ Nhóm c¤p %d l¥n này ðã kªt thúc, Các tuy¬n thü vòng sau xin nhanh chóng chu¦n b¸ báo danh",
	["r_win"]	= "Xin chúc m×ng, giành ðßþc chiªn th¡ng TÖ Võ",
	["r_wnx"]	= "Xin hãy ðªn Tùy Báo Minh nh§n lînh ph¥n thß·ng cüa các hÕ, sau ðó m¾i có th¬ tiªn vào vòng TÖ Võ tiªp theo.",
	["r_mal"]	= "Chúc m×ng các hÕ ðã chiªn th¡ng trong TÖ Võ! Xin hãy ðªn tìm Tùy Báo Minh (173, 130) nh§n lînh ph¥n thß·ng cüa các hÕ, khi xong vi®c các hÕ s¨ tiªn vào TÖ Võ tiªp theo. #rChú ý: Các hÕ phäi nh§n lînh ph¥n thß·ng xong m¾i có th¬ bß¾c vào vòng kª tiªp, ð×ng bö lÞ c½ hµi này, mau ði nh§n lînh nào.",
	["r_fal"]	= "r¤t l¤y làm tiªc, tÖ võ th¤t bÕi",
	["r_flx"]	= "Xin hãy ðªn Tùy Báo Minh nh§n lînh ph¥n thß·ng cüa các hÕ",
}

--th¤t bÕiÕß½±Àø
x808002_g_BountyRate		= 5	--½±Àø¸ÅÂÊ°Ù·Ö±È
x808002_g_BountyItem	 	=		--½±ÀøÎïÆ·ÁÐ±í
{
	20500000,									--TinhÌúËéÆ¬
	20501000,									--ÃÞ²¼ËéÆ¬
	20502000,									--ÃØÒøËéÆ¬
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x808002_OnDefaultEvent( sceneId, selfId, targetId )

	--ÕÒ²»µ½¸ÃÍæ¼Ò
	if LuaFnIsObjValid( sceneId, selfId ) ~= 1 then
		return
	end
	--ÅÐ¶Ï×é¶Ó¸úËæ×´Ì¬
	if IsTeamFollow( sceneId, selfId ) == 1 then
		x808002_MsgBox( sceneId, selfId, x808002_g_Msg["flw"] )
		return
	end
	--ÅÐ¶ÏË«ÈËÆï³Ë×´Ì¬
	if LuaFnGetDRideFlag( sceneId, selfId ) == 1 then
		x808002_MsgBox( sceneId, selfId, x808002_g_Msg["drd"] )
		return
	end

	--±ÈÎä»ØºÏÊý
	local	rnd	= CallScriptFunction( x808002_g_ScriptId_Ctrl, "GetRound", sceneId, selfId )

	--Ñ¡Ôñ°´Å¥
	local	key	= GetNumText()

	--ÎÒÒª±¨Ãû
	if key == 0 then
		--²é¿´±ÈÎä½á¹û,Ðúng·ñLînh ¹ý½±Àø
		if x808002_OnPlyBounty( sceneId, selfId, targetId, rnd ) == 1 then
			if rnd > 0 then
				x808002_MsgBox( sceneId, selfId, "Xin ð×ng ði quá xa tÕi hÕ, s¨ công b¯ thành tích ð¤u võ sau ít phút næa" )
			end
			return
		end

		--»î¶¯Ðúng·ñ´¦ÓÚ±¨ÃûÖÐ
		if CallScriptFunction( x808002_g_ScriptId_Ctrl, "IsJoinDoing", sceneId, selfId ) == 0 then
			x808002_MsgBox( sceneId, selfId, x808002_g_Msg["ear"] )
			return
		end
		
		--¼ì²â±¨ÃûÌõ¼þ
		if x808002_CheckPlyJoin( sceneId, selfId ) ~= 1 then
			return
		end

		--µÚmµt ´Î²ÎÈü
		if rnd == 1 then
			BeginEvent( sceneId )
			AddText( sceneId, x808002_g_Msg["pop1"] )
			AddNumText( sceneId, x808002_g_ScriptId, "Ta mu¯n tham gia bây gi¶", 10, 1001 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		--Ñ­»·Èü
		else
			BeginEvent( sceneId )
			AddText( sceneId, x808002_g_Msg["popn"] )
			AddNumText( sceneId, x808002_g_ScriptId, "Ta mu¯n tham gia bây gi¶", 10, 1002 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end

	--µÚmµt ÂÖ: ÎÒÏÖTÕi ¾ÍÒª²Î¼Ó
	elseif key == 1001 then
		--¹Ø±Õ½çÃæ
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

		local nMoneyJZ = GetMoneyJZ (sceneId, selfId)
		local nMoney = GetMoney (sceneId, selfId)
		
		--½ðÇ®¼ì²é
		if (nMoneyJZ + nMoney) < x808002_g_GoldMin then
			-- Ç®²»¹»
			x808002_MsgBox( sceneId, selfId, x808002_g_Msg["gld"] )
			return
		end

		x808002_MsgBox( sceneId, selfId, "Chúc m×ng các hÕ báo danh thành công, hy v÷ng các hÕ ðü dûng cäm ðoÕt ðßþc Võ TrÕng Nguyên!" )
		x808002_MsgBox( sceneId, selfId, "Sau khi r¶i hµi trß¶ng, nh¾ quay v« lînh thß·ng ðúng gi¶!" )

		--Íæ¼Ò±¨Ãû
		x808002_OnPlyJoin( sceneId, selfId, rnd )
	
	--Ñ­»·: ÎÒÏÖTÕi ¾ÍÒª²Î¼Ó
	elseif key == 1002 then
		--¹Ø±Õ½çÃæ
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

		--Íæ¼Ò±¨Ãû
		x808002_OnPlyJoin( sceneId, selfId, rnd )
	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x808002_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x808002_g_ScriptId, "Ta mu¯n báo danh", 4, 0 )

end

--**********************************
--¼ì²âÍæ¼Ò±¨ÃûÌõ¼þ
--**********************************
function x808002_CheckPlyJoin( sceneId, selfId )

	if GetLevel( sceneId, selfId ) < x808002_g_LevelMin then
		x808002_MsgBox( sceneId, selfId, x808002_g_Msg["lev"] )
		return 0
	end
	
	--¸ù¾ÝÍæ¼ÒµÈc¤p»ñÈ¡×é±ðÐÅÏ¢
	local	ActID, _, _	= CallScriptFunction( x808002_g_ScriptId_Ctrl, "GetGroupInfo", sceneId, selfId )
	if ActID == nil then
		x808002_MsgBox( sceneId, selfId, x808002_g_Msg["grp"] )
		return 0
	end

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x808002_MsgBox( sceneId, selfId, x808002_g_Msg["itm"] )
		return 0
	end
	return 1

end

--**********************************
--Íæ¼Ò±¨Ãû
--**********************************
function x808002_OnPlyJoin( sceneId, selfId, rnd )

	--ÕÒ²»µ½¸ÃÍæ¼Ò
	if LuaFnIsObjValid( sceneId, selfId ) ~= 1 then
		return
	end

	--±ÈÎä»ØºÏÊý
	rnd_self	= x808002_GetMyCurrentRound( sceneId, selfId )
	ret_self	= GetMissionData( sceneId, selfId, MD_DATAOSHA_RESULT )
	if rnd > 1 then
		if rnd ~= (rnd_self+1) or ret_self <= 0 then
			x808002_MsgBox( sceneId, selfId, x808002_g_Msg["fal"] )
			return
		end
	end

	--»ñÈ¡±íµ¥ID
	tabId			= CallScriptFunction( x808002_g_ScriptId_Ctrl, "GetTableID", sceneId, selfId )
	--±íµ¥ÈËÊý
	ply_num		= HitParadeGetTabParam( sceneId, tabId, x808002_g_TabParam["enn"] )
	if tabId == -1 or ply_num >= x808002_g_PlyJoinMax then
		x808002_MsgBox( sceneId, selfId, x808002_g_Msg["ful"] )
		--Add Log
		LogInfo	= format( "[TAOSHA]: x808002_OnPlyJoin( sceneId=%d, GUID=%0X, rnd=%d ), tabId=%d, ply_num=%d",
			sceneId,
			LuaFnObjId2Guid( sceneId, selfId ),
			rnd,
			tabId,
			ply_num )
		MissionLog( sceneId, LogInfo )
		return
	end

	--ÅÐ¶Ï¸±±¾Ðúng·ñ¼ÓÔØ
	scn_num		= HitParadeGetTabParam( sceneId, tabId, x808002_g_TabParam["fbn"] )
	scn_fb		= { 0, 0 }
	scn_fb[1]	= HitParadeGetTabParam( sceneId, tabId, x808002_g_TabParam["fb1"] )
	scn_fb[2]	= HitParadeGetTabParam( sceneId, tabId, x808002_g_TabParam["fb2"] )
	if scn_num > 0 then
		--µ±±¨ÃûÈËÊýÎª(x808002_g_PlyJoinMax/2)Ê±,´´½¨¸±±¾2
		if LuaFnGetSceneType( scn_fb[scn_num] ) == 1 and ply_num ~= floor(x808002_g_PlyJoinMax/2) then
			x808002_OnSelectRoom( sceneId, selfId, scn_fb[scn_num], tabId )
			return
		end
	end

	--mµt ¶¨Òª¿¼ÂÇ¡°¸±±¾´´½¨ÖÐ¡±toÕ ðµ ×´¿ö
	if scn_num <= 2 then
		if HitParadeGetTabParam( sceneId, tabId, x808002_g_TabParam["fbs"] ) == 0 then
			HitParadeSetTabParam( sceneId, tabId, x808002_g_TabParam["fbs"], 1 )
			x808002_MakeCopyScene( sceneId, selfId, tabId, rnd, tabId )
		else
			x808002_MsgBox( sceneId, selfId, "Trong xây dñng phø bän" )
			return
		end

	else
		x808002_MsgBox( sceneId, selfId, x808002_g_Msg["ful"] )
		--Add Log
		LogInfo	= format( "[TAOSHA]: x808002_OnPlyJoin( sceneId=%d, GUID=%0X, rnd=%d ), tabId=%d, scn_num=%d, fb1=%d, fb2=%d, ply_num=%d",
			sceneId,
			LuaFnObjId2Guid( sceneId, selfId ),
			rnd,
			tabId,
			scn_num, scn_fb[1], scn_fb[2],
			ply_num )
		MissionLog( sceneId, LogInfo )
		return
	end

end

--**********************************
--Íæ¼Ò½±Àø
--**********************************
function x808002_OnPlyBounty( sceneId, selfId, targetId, rnd )

	--±ÈÈü½á¹û,ÒÔÆä"·ûºÅÎ»"±êÊ¶Ê¤¸º,ÒÔÆä"¾ø¶ÔÖµÐúng·ñ´óÓÚ1"±êÊ¶Ðúng·ñLînh ¹ý½±Àø,0µÈÍ¬ÓÚÃ»ÓÐ¹ý±ÈÈü
	ret_self	= GetMissionData( sceneId, selfId, MD_DATAOSHA_RESULT )
	if abs( ret_self ) <= 1 then
		return 0
	end
	--Ðúng·ñ»ñÊ¤
	if ret_self > 0 then
		isWin		= 1
	else
		isWin		= 0
	end

	ret_self	= floor( ret_self / abs(ret_self) )
	SetMissionData( sceneId, selfId, MD_DATAOSHA_RESULT, ret_self )

	--·Ö³öÊ¤¸ºtoÕ ðµ ×é,ÎÞÂÛÐúngÊ¤ÀûÕß»¹Ðúngth¤t bÕiÕß¾ù¿ÉÒÔ ðÕt ðßþcKinh nghi®m
	BeginEvent( sceneId )
		AddText( sceneId, "  Tuy®t l¡m, các hÕ dûng khí vô song. — ðây, ta ðã chu¦n b¸ 1 s¯ quà t£ng nhö, xin ch¾ cß¶i chê!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	--Ôö¼ÓKinh nghi®mÖµ
	exp				= GetLevel( sceneId, selfId ) * 44
	AddExp( sceneId, selfId, exp )

	--Lînh ½±ÀøÔÙ½øÐÐÅÅÃû
	--ÀíÓÉ: °´ÕÕµÈc¤p»®·ÖÎª¶à×é,Ã¿×é¶ÔÓ¦¶à¸±±¾,¶àÏß³Ì
	--»ñÈ¡±íµ¥ID
	tabId			= CallScriptFunction( x808002_g_ScriptId_Ctrl, "GetTableID", sceneId, selfId )
	--Add Log
	LogInfo	= format( "[TAOSHA]: x808002_OnPlyBounty( sceneId=%d, GUID=%0X ), AddExp=%d, tabId=%d",
		sceneId,
		LuaFnObjId2Guid( sceneId, selfId ),
		exp, tabId )
	MissionLog( sceneId, LogInfo )

	rnd_self	= x808002_GetMyCurrentRound( sceneId, selfId )
	if tabId < 0 or rnd <= 0 or rnd_self <= 0 then
		return 0
	end
	guid			= LuaFnObjId2Guid( sceneId, selfId )
	--ÅÅÐÐ¼üÖµ(½µÐò,¼üÖµÔ½´ó,ÅÅÃûÔ½¿¿Ç°): »·Êý * 3 ,Ê¤Õß¼Ó2,¸ºÕß¼Ó1
	key				= rnd_self * 3
	if ret_self > 0 then
		key			= key + 2				--Ê¤Õß
	elseif ret_self < 0 then
		key			= key + 1				--¸ºÕß
	end
	HitParadePlayerJoin( sceneId, tabId, guid, key )
	
	--th¤t bÕiÕß¶îÍâ½±Àø
	if isWin == 0 and
		random( 100 ) <= x808002_g_BountyRate and
		LuaFnGetPropertyBagSpace( sceneId, selfId ) >= 1
		then
		idLst		= random( getn( x808002_g_BountyItem ) )
		idBag		= LuaFnTryRecieveItem( sceneId, selfId, x808002_g_BountyItem[idLst], 1 )
		if idBag >= 0 then
			LuaFnItemBind( sceneId, selfId, idBag )
			szTran= GetBagItemTransfer( sceneId, selfId, idBag )
			szMsg	= format( "¶£¶£µ±µ±£¡±ÈÎä³¡ÉÏ,#{_INFOUSR%s}Óë¶ÔÊÖ¼¤Õ½Õýº¨,Àä²»·À³¡Íâ·ÉÀ´mµt Îï,¾¹Ðúng#{_INFOMSG%s}.",
				LuaFnGetName( sceneId, selfId ),
				szTran )
			x808002_MyGlobalNews( sceneId, szMsg )
		end
	end
	
	return 1

end

--**********************************
--´´½¨¸±±¾
--**********************************
function x808002_MakeCopyScene( sceneId, selfId, tabId, rnd, tabId )

	--»ñÈ¡¸±±¾cáiÊý
	scn_num	= HitParadeGetTabParam( sceneId, tabId, x808002_g_TabParam["fbn"] )
	--»ñÈ¡µ¥ÂÖÖ´ÐÐÊ±¼ä
	unt_tim	= CallScriptFunction( x808002_g_ScriptId_Ctrl, "GetCurrentUnitTime", sceneId, selfId, x808002_g_TickTime )

	--ÉèÖÃ¸±±¾²ÎÊý
	local	leaderguid	= LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x808002_g_CopySceneMap )							--µØÍ¼Ðúng±ØÐëÑ¡È¡toÕ ðµ ,¶øÇÒ±ØÐëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x808002_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_PvpRuler( sceneId, x808002_g_PvpRuler )
	LuaFnSetCopySceneData_Timer( sceneId, x808002_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["typ"], x808002_g_CopySceneType )			--ÉèÖÃ¸±±¾Êý¾Ý,ÕâÀï½«0ºÅË÷ÒýtoÕ ðµ Êý¾ÝÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["sid"], x808002_g_ScriptId )						--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["tim"], 0 )	--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["ent"], -1 )	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["cls"], 0 )	--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["rnd"], rnd )--ÉèÖÃµÚ¼¸»ØºÏ
	LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["jon"], 0 )	--ÉèÖÃ±¨Ãûµ¹¼ÆÊ±´ÎÊý

	LuaFnSetSceneLoad_Area( sceneId, "dataosha_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "dataosha_monster.ini" )

	--ÉèÖÃÐ£ÑéÊ±¼ä²î
	LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["chk"], unt_tim )
	--ÉèÖÃ±íµ¥ID
	LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["tab"], tabId )

	--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
	local bRetSceneID = LuaFnCreateCopyScene( sceneId )
	if bRetSceneID > 0 then
		HitParadeSetTabParam( sceneId, tabId, x808002_g_TabParam["fbn"], scn_num + 1 )
		x808002_MsgBox( sceneId, selfId, "Sáng l§p Bän thêm thành công" )
	else
		HitParadeSetTabParam( sceneId, tabId, x808002_g_TabParam["fbs"], 0 )
		x808002_MsgBox( sceneId, selfId, "S¯ lßþng Bän thêm ðã ðÕt t¾i cñc ði¬m, xin ch¶ r°i thØ lÕi" )
	end

end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x808002_OnCopySceneReady( sceneId, destsceneId )

	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	LuaFnSetCopySceneData_Param( destsceneId, x808002_g_ScnParam["ent"], sceneId )
	local	leaderguid	= LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local	leaderObjId	= LuaFnGuid2ObjId( sceneId, leaderguid )

	--»ñÈ¡±íµ¥ID
	tabId		= LuaFnGetCopySceneData_Param( destsceneId, x808002_g_ScnParam["tab"] )

	--ÉèÖÃ¸±±¾toÕ ðµ ³¡¾°ºÅ
	scn_num	= HitParadeGetTabParam( sceneId, tabId, x808002_g_TabParam["fbn"] )
	if scn_num == 1 then
		HitParadeSetTabParam( sceneId, tabId, x808002_g_TabParam["fb1"], destsceneId )
	else
		HitParadeSetTabParam( sceneId, tabId, x808002_g_TabParam["fb2"], destsceneId )
	end
	--¸±±¾´´½¨Íê³É
	HitParadeSetTabParam( sceneId, tabId, x808002_g_TabParam["fbs"], 0 )

	--Ñ¡Ôñ·¿¼ä
	x808002_OnSelectRoom( sceneId, leaderObjId, destsceneId, tabId )

	--Add Log
	LogInfo	= format( "[TAOSHA]: x808002_OnCopySceneReady( sceneId=%d, destsceneId=%d ), GUID=%0X, tabId=%d, scn_num=%d",
		sceneId, destsceneId, leaderguid, tabId, scn_num )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--ÎªÍæ¼ÒÑ¡Ôñ·¿¼ä,²¢´«Èë¸±±¾
--**********************************
function x808002_OnSelectRoom( sceneId, selfId, destsceneId, tabId  )

	--ÕÒ²»µ½¸ÃÍæ¼Ò
	if LuaFnIsObjValid( sceneId, selfId ) ~= 1 then
		return
	end

	--Ðúng·ñ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return
	end

	--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
--LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["cls"], 0 )

	--±ÈÎä»ØºÏÊý
	rnd			= CallScriptFunction( x808002_g_ScriptId_Ctrl, "GetRound", sceneId, selfId )
	--Íæ¼Ò±¨Ãû,È¡±ÈÎä»·ÊýÎªÅÅÐÐ¼üÖµ
	guid		= LuaFnObjId2Guid( sceneId, selfId )
	--ÅÅÐÐ¼üÖµ(½µÐò,¼üÖµÔ½´ó,ÅÅÃûÔ½¿¿Ç°): »·Êý * 3 ,Ê¤Õß¼Ó2,¸ºÕß¼Ó1
	ply_id	= HitParadePlayerJoin( sceneId, tabId, guid, rnd*3 )
	if ply_id < 0 then
		return
	end
	--½øÈë¸±±¾toÕ ðµ ÈËÊý
	ent_id	= HitParadeGetTabParam( sceneId, tabId, x808002_g_TabParam["enn"] )
	HitParadeSetTabParam( sceneId, tabId, x808002_g_TabParam["enn"], ( ent_id + 1 ) )

	--ÕóÓªºÅ»º´æ,ÒòÎªÃ¿´Î½øÈë³¡¾°Ê±,ÕóÓª»áÇå¿Õ
	id_mod	= ent_id - floor( ent_id / 2 ) * 2
	if id_mod == 0 then
		SetMissionData( sceneId, selfId, MD_PREV_CAMP, x808002_g_CampA )
	else
		SetMissionData( sceneId, selfId, MD_PREV_CAMP, x808002_g_CampB )
	end

	--¸±±¾cáiÊý
	scn_num	= HitParadeGetTabParam( sceneId, tabId, x808002_g_TabParam["fbn"] )

	--·¿¼äË÷Òý,·¿¼ä´óÐ¡64*64
	idRoom	= floor( ent_id / 2 ) - floor( (scn_num-1) * 16 )
	px_mod	= idRoom - floor( idRoom /4 ) * 4
	if px_mod < 0 or px_mod >= 4 then
		px_mod= 0
	end
	px			= floor( px_mod * 64 + 32 )
	pz_mul	= floor( idRoom / 4 )
	if pz_mul < 0 or pz_mul >= 4 then
		pz_mul= 0
	end
	pz			= floor( pz_mul * 64 + 32 )

	--´«Èë¸±±¾
	NewWorld( sceneId, selfId, destsceneId, px, pz )
	
	--»î¶¯Í³¼Æ
	LuaFnAuditQuest( sceneId, selfId, "ÐÕi hµi thí võ" )
	
	--¿Û³ý½ðÇ®(Ö»TÕi µÚmµt ÂÖ¿ÛÇ®)
	if rnd <= 1 then

		-- Ê¹ÓÃ´øÓÅÏÈc¤ptoÕ ðµ ½ðÇ®ÏûºÄº¯Êý
		-- Ô­À´¿Û½ð±ÒÃ»ÓÐÅÐ¶ÏÐúng·ñ¿ÛÇ®th¤t bÕi,ËùÒÔ¿Û½»×ÓÒ²Î´¼ÓÐúng·ñ¿ÛÇ®th¤t bÕitoÕ ðµ ´¦Àí£¡				
		LuaFnCostMoneyWithPriority (sceneId, selfId, x808002_g_GoldMin)
				
		--Add Log
		LogInfo	= format( "[TAOSHA]: LuaFnCostMoneyWithPriority( sceneId=%d, GUID=%0X, Money=%d )", sceneId, guid, x808002_g_GoldMin )
		MissionLog( sceneId, LogInfo )
	end
	
	--¼ÇÂ¼±ÈÎä»ØºÏÊý(Äê+µ±ÄêµÚ¼¸Ìì+»ØºÏÊý: YY+DDD+RR)
	rnd_MD	= GetDayTime() * 100 + rnd
	SetMissionData( sceneId, selfId, MD_DATAOSHA_ROUND, rnd_MD )
	--¼ÇÂ¼±ÈÎä½á¹û
	SetMissionData( sceneId, selfId, MD_DATAOSHA_RESULT, 0 )

	--Add Log
	LogInfo	= format( "[TAOSHA]: x808002_OnSelectRoom( sceneId=%d, destsceneId=%d ), GUID=%0X, tabId=%d, ent_id=%d, idRoom=%d, px=%d, pz=%d",
		sceneId, destsceneId, guid, tabId, ent_id, idRoom, px, pz )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x808002_OnPlayerEnter( sceneId, selfId )
	
	--Add Log
	LogInfo	= format( "[TAOSHA]: x808002_OnPlayerEnter( sceneId=%d, GUID=%0X )",
		sceneId,
		LuaFnObjId2Guid( sceneId, selfId ) )
	MissionLog( sceneId, LogInfo )

	--ÉèÖÃ¸´»îÐÅÏ¢
	--»Ø³ÇÖÁTô Châu±¨Ãû ði¬m¸½½ü
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", x808002_g_BackCity["scn"], x808002_g_BackCity["px"], x808002_g_BackCity["pz"] )

	--¸±±¾¹Ø±Õ±êÖ¾
	local	LeaveFlag	= LuaFnGetCopySceneData_Param( sceneId, x808002_g_ScnParam["cls"] )

	--±¨ÃûÖÐ,´«Èë»á³¡
	if LuaFnGetCopySceneData_Param( sceneId, x808002_g_ScnParam["typ"] ) == x808002_g_CopySceneType then
		--ÅÐ¶ÏÍæ¼ÒÐúng·ñÒÑ¾­±¨Ãû¸Ã»ØºÏ±ÈÈü
		rnd_self= x808002_GetMyCurrentRound( sceneId, selfId )
		rnd			= LuaFnGetCopySceneData_Param( sceneId, x808002_g_ScnParam["rnd"] )
		if rnd_self ~= rnd then
			x808002_MsgBox( sceneId, selfId, x808002_g_Msg["fal"] )
			x808002_OnGoBack( sceneId, selfId )
			return
		end
		if LeaveFlag > 0 then
			x808002_MsgBox( sceneId, selfId, "±ÈÎä´ó»á±¾´Î»î¶¯ÒÑ¾­½áÊø" )
			x808002_OnGoBack( sceneId, selfId )
			return
		end

		--ÉèÖÃ¶ÔÁ¢ÕóÓª
		idCamp	= GetMissionData( sceneId, selfId, MD_PREV_CAMP )
		SetUnitCampID( sceneId, selfId, selfId, idCamp )
		--ÉèÖÃÍæ¼ÒtoÕ ðµ Ö¸¶¨PvpÊÚÈ¨Î»
		SetPvpAuthorizationFlagByID( sceneId, selfId, 2, 0 )			--2Ðúng¾º¼¼ÊÚÈ¨±ê¼Ç
		--ÉèÖÃÎÞµÐBUFF
		--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808002_g_GodBuff, 0 )
		--µ¥»ØºÏ»ñÊ¤±ê¼Ç,Ê¤ÀûÕß´«³ö
		SetMissionFlag( sceneId, selfId, MF_DATAOSHA_WIN, 0 )

	end

end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x808002_OnHumanDie( sceneId, selfId, killerId )

	--th¤t bÕiÕß´¦Àí
	--¼ÇÂ¼±ÈÎä½á¹û
	SetMissionData( sceneId, selfId, MD_DATAOSHA_RESULT, -10 )
	x808002_MsgBox( sceneId, selfId, x808002_g_Msg["r_fal"] )
	x808002_MsgBox( sceneId, selfId, x808002_g_Msg["r_flx"] )
	--ÉèÖÃÍæ¼ÒtoÕ ðµ Ö¸¶¨PvpÊÚÈ¨Î»
	--SetPvpAuthorizationFlagByID( sceneId, selfId, 2, 0 )			--2Ðúng¾º¼¼ÊÚÈ¨±ê¼Ç

	--»ñÊ¤Õß´¦Àí
	--¼ÇÂ¼±ÈÎä½á¹û
	if killerId == nil or LuaFnIsObjValid( sceneId, killerId ) ~= 1 then
		return
	end
	SetMissionData( sceneId, killerId, MD_DATAOSHA_RESULT, 10 )
	x808002_MsgBox( sceneId, killerId, x808002_g_Msg["r_win"] )
	x808002_MsgBox( sceneId, killerId, x808002_g_Msg["r_wnx"] )
	LuaFnSendSystemMail( sceneId, GetName( sceneId, killerId ), x808002_g_Msg["r_mal"] )
	--ÉèÖÃÍæ¼ÒtoÕ ðµ Ö¸¶¨PvpÊÚÈ¨Î»
	--SetPvpAuthorizationFlagByID( sceneId, killerId, 2, 0 )		--2Ðúng¾º¼¼ÊÚÈ¨±ê¼Ç
	if LuaFnIsCharacterLiving( sceneId, killerId ) == 1 then
		--µ¥»ØºÏ»ñÊ¤±ê¼Ç,Ê¤ÀûÕß´«³ö
		SetMissionFlag( sceneId, killerId, MF_DATAOSHA_WIN, 1 )
		--x808002_OnGoBack( sceneId, killerId )
	end

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x808002_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x808002_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x808002_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x808002_OnCopySceneTimer( sceneId, nowTime )

	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	--È¡ ði¬mÒÑ¾­Ö´ÐÐtoÕ ðµ ¶¨Ê±´ÎÊý
	local	TickCount	= LuaFnGetCopySceneData_Param( sceneId, x808002_g_ScnParam["tim"] )
	TickCount				= TickCount + 1
	--ÉèÖÃÐÂtoÕ ðµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["tim"], TickCount )

	--¸±±¾¹Ø±Õ±êÖ¾
	local	LeaveFlag	= LuaFnGetCopySceneData_Param( sceneId, x808002_g_ScnParam["cls"] )
	--±¨Ãûµ¹¼ÆÊ±
	local	JoinFlag	= LuaFnGetCopySceneData_Param( sceneId, x808002_g_ScnParam["jon"] )

	--»ñÈ¡³¡¾°ÖÐÍæ¼ÒÈËÊý
	local	mem_num		= LuaFnGetCopyScene_HumanCount( sceneId )
	local	mem_obj		= LuaFnGetCopyScene_HumanObjId( sceneId, 0 )
	--¸ù¾ÝÍæ¼ÒµÈc¤p»ñÈ¡×é±ðÐÅÏ¢
	local	ActID, ActMinLev, _	= CallScriptFunction( x808002_g_ScriptId_Ctrl, "GetGroupInfo", sceneId, mem_obj )

	--»ñÈ¡mµt cái»ØºÏÖÐtoÕ ðµ ±¨ÃûÊ±¼ä³¤¶È
	local	JoinTime	= CallScriptFunction( x808002_g_ScriptId_Ctrl, "GetJoinTime", sceneId, x808002_g_TickTime )
	--»ñÈ¡mµt cái»ØºÏÖÐtoÕ ðµ ±ÈÎäÊ±¼ä³¤¶È
	local	AttackTime= CallScriptFunction( x808002_g_ScriptId_Ctrl, "GetAttackTime", sceneId, x808002_g_TickTime )
	AttackTime			= JoinTime + AttackTime

	--Ê±¼äÐ£Ñé
	local	CheckTime	= LuaFnGetCopySceneData_Param( sceneId, x808002_g_ScnParam["chk"] )
	if JoinTime > CheckTime then
		JoinTime			= JoinTime - CheckTime
	else
		JoinTime			= 0
	end
	if AttackTime > CheckTime then
		AttackTime		= AttackTime - CheckTime
	else
		AttackTime		= 0
	end

	if LeaveFlag < 1 then
	--±ÈÎä½øÐÐÖÐ

		if JoinFlag == 0 then
		--Ðúng·ñ¿ªÊ¼µ¹¼ÆÊ±
			if TickCount == JoinTime then
				LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["jon"], x808002_g_JoinTick )
			elseif TickCount > JoinTime then
				LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["jon"], -1 )
				--±ÈÎä¿ªÊ¼
				for i = 0, mem_num - 1 do
					mem_obj	= LuaFnGetCopyScene_HumanObjId( sceneId, i )
					if LuaFnIsObjValid( sceneId, mem_obj ) ~= 1 then
						break
					end
					--ÉèÖÃÍæ¼ÒtoÕ ðµ Ö¸¶¨PvpÊÚÈ¨Î»
					SetPvpAuthorizationFlagByID( sceneId, mem_obj, 2, 1 )			--2Ðúng¾º¼¼ÊÚÈ¨±ê¼Ç
				end
			end
		elseif JoinFlag > 0 then
		--±¨Ãûµ¹¼ÆÊ±
			LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["jon"], JoinFlag-1 )
			for i = 0, mem_num - 1 do
				mem_obj	= LuaFnGetCopyScene_HumanObjId( sceneId, i )
				if LuaFnIsObjValid( sceneId, mem_obj ) ~= 1 then
					break
				end
				str		= format( "Thí võ s¨ b¡t ð¥u sau %d giây", JoinFlag * x808002_g_TickTime )
				x808002_MsgBox( sceneId, mem_obj, str )
			end
		end

		--±ÈÎäÐúng·ñµ½Ê±
		if TickCount == (AttackTime-12) then
			--±ÈÎä¼´½«½áÊø,ÌáÇ°mµt  phútÈ«Çò¹«¸æ
			if ActMinLev ~= nil then
				str		= format( x808002_g_Msg["n_son"], ActMinLev, 1 )
				x808002_MyGlobalNews( sceneId, str )
			end
		elseif TickCount >= AttackTime then
			--±ÈÎä½áÊø
			LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["cls"], 1 )
		end
		--É¨Ãè»á³¡
		x808002_OnScanScene( sceneId )

	elseif LeaveFlag == 1 then
	--±ÈÎäÒÑ½áÊø
		LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["cls"], LeaveFlag+1 )
		x808002_OnScanRoom( sceneId, mem_num )
	elseif LeaveFlag < x808002_g_CloseTick then
	--µ¹¼ÆÊ±
		LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["cls"], LeaveFlag+1 )
		for i = 0, mem_num - 1 do
			mem_obj	= LuaFnGetCopyScene_HumanObjId( sceneId, i )
			if LuaFnIsObjValid( sceneId, mem_obj ) ~= 1 then
				break
			end
			str			= format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa!", ( x808002_g_CloseTick - LeaveFlag ) * x808002_g_TickTime )
			x808002_MsgBox( sceneId, mem_obj, str )
		end
	elseif LeaveFlag == x808002_g_CloseTick then
	--»Ø³Ç
		LuaFnSetCopySceneData_Param( sceneId, x808002_g_ScnParam["cls"], LeaveFlag+1 )	--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		for i = 0, mem_num - 1 do
			mem_obj	= LuaFnGetCopyScene_HumanObjId( sceneId, i )
			if LuaFnIsObjValid( sceneId, mem_obj ) ~= 1 then
				break
			end
			--ÉèÖÃÍæ¼ÒtoÕ ðµ Ö¸¶¨PvpÊÚÈ¨Î»
			--SetPvpAuthorizationFlagByID( sceneId, mem_obj, 2, 0 )			--2Ðúng¾º¼¼ÊÚÈ¨±ê¼Ç
			if LuaFnIsCharacterLiving( sceneId, mem_obj ) == 1 then
				x808002_OnGoBack( sceneId, mem_obj )
			end
		end
		
		--È«Çò¹«¸æ
		if ActMinLev ~= nil then
			str			= format( x808002_g_Msg["n_end"], ActMinLev )
			x808002_MyGlobalNews( sceneId, str )
		end
	end

end

--**********************************
--±ÈÎä½áÊøÉ¨Ãè»á³¡
--¹æÔò: »î¶¯½áÊøtoÕ ðµ Ê±ºò¶ÔµØÍ¼ËùÓÐ·¿¼ä
--É¨Ãèmµt ´Î,·¿¼äÈËÊý>1toÕ ðµ ÈÎÎñth¤t bÕi,´«
--ËÍÖÁTô Châu±¨ÃûµØ ði¬mÅÔ±ßtoÕ ðµ Î»ÖÃ.
--**********************************
function x808002_OnScanRoom( sceneId, mem_num )

	--É¨Ãè»á³¡Íæ¼Ò
	local mem_lst		= {}
	local mem_px		= {}
	local mem_pz		= {}
	for i = 0, mem_num - 1 do
		mem_lst[i]						= LuaFnGetCopyScene_HumanObjId( sceneId, i )
		mem_px[i], mem_pz[i]	= GetWorldPos( sceneId, mem_lst[i] )
	end

	--É¨Ãè32cái·¿¼ä,¾ö¶¨Ê¤¸º
	local	rom_px, rom_pz		--Ã¿cái·¿¼ätoÕ ðµ ×óÉÏ½Ç×ø±ê
	local	num, id
	for i = 0, 31 do
		px_mod	= i - floor( i /4 ) * 4
		pz_mul	= floor( i / 4 )
		rom_px	= floor( px_mod * 64 )
		rom_pz	= floor( pz_mul * 64 )
		
		num			= 0
		id			= -1
		for j = 0, mem_num - 1 do
			if num >= 2 then
				break
			end
			if mem_px[j] > rom_px and mem_px[j] < (rom_px+64) and
				mem_pz[j] > rom_pz and mem_pz[j] < (rom_pz+64) and
				LuaFnIsObjValid( sceneId, mem_lst[j] ) == 1 and
				LuaFnIsCharacterLiving( sceneId, mem_lst[j] ) == 1 then
				num	= num + 1
				id	= j
			end
		end

		--ÅÐ¶ÏÍæ¼ÒÊ¤¸º
		if num == 1 then
			--Ðúng·ñÒÑ¾­TÕi ±¾ÂÖth¤t bÕi¹ý,ÒÔ·À·¶¸´»î¼¼ÄÜ
			if GetMissionData( sceneId, mem_lst[id], MD_DATAOSHA_RESULT ) == -10 then
				x808002_MsgBox( sceneId, mem_lst[id], x808002_g_Msg["r_fal"] )
				x808002_MsgBox( sceneId, mem_lst[id], x808002_g_Msg["r_flx"] )
			else
				--¼ÇÂ¼±ÈÎä½á¹û
				SetMissionData( sceneId, mem_lst[id], MD_DATAOSHA_RESULT, 10 )
				x808002_MsgBox( sceneId, mem_lst[id], x808002_g_Msg["r_win"] )
				x808002_MsgBox( sceneId, mem_lst[id], x808002_g_Msg["r_wnx"] )
				LuaFnSendSystemMail( sceneId, GetName( sceneId, mem_lst[id] ), x808002_g_Msg["r_mal"] )
			end
		end
	end

end

--**********************************
--É¨Ãè»á³¡
--»ñÊ¤Õß´«³ö¸±±¾
--**********************************
function x808002_OnScanScene( sceneId )

	--»ñÈ¡³¡¾°ÖÐÍæ¼ÒÈËÊý
	local	mem_num		= LuaFnGetCopyScene_HumanCount( sceneId )
	for i = 0, mem_num - 1 do
		mem_obj				= LuaFnGetCopyScene_HumanObjId( sceneId, i )
		if LuaFnIsObjValid( sceneId, mem_obj ) ~= 1 then
			break
		end
		--µ¥»ØºÏ»ñÊ¤±ê¼Ç,Ê¤ÀûÕß´«³ö
		if GetMissionFlag( sceneId, mem_obj, MF_DATAOSHA_WIN ) == 1 and
			LuaFnIsCharacterLiving( sceneId, mem_obj ) == 1
		then
			x808002_OnGoBack( sceneId, mem_obj )
		end
	end

end

--**********************************
--»Ø³Ç
--**********************************
function x808002_OnGoBack( sceneId, selfId )

	NewWorld( sceneId, selfId, x808002_g_BackCity["scn"], x808002_g_BackCity["px"], x808002_g_BackCity["pz"] )
	--Add Log
	LogInfo	= format( "[TAOSHA]: x808002_OnGoBack( sceneId=%d, GUID=%0X ), BackScn=%d, BackX=%d, BackY=%d",
		sceneId,
		LuaFnObjId2Guid( sceneId, selfId ),
		x808002_g_BackCity["scn"],
		x808002_g_BackCity["px"],
		x808002_g_BackCity["pz"] )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--»ñÈ¡Ä³Íæ¼Ò´Ë´Î±ÈÎätoÕ ðµ µ±Ç°»ØºÏÊý
--**********************************
function x808002_GetMyCurrentRound( sceneId, selfId )

	rnd_MD		= GetMissionData( sceneId, selfId, MD_DATAOSHA_ROUND )
	rnd_dat		= floor( rnd_MD / 100 )
	rnd_rnd		= mod( rnd_MD, 100 )
	if rnd_dat ~= GetDayTime() then
		return 0
	end
	return rnd_rnd

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x808002_MsgBox( sceneId, selfId, Msg )

	if Msg == nil then
		return
	end
	--Ðúng·ñ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­toÕ ðµ ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

	--Add Log
	LogInfo	= format( "[TAOSHA]: x808002_MsgBox( sceneId=%d, GUID=%0X ), %s",
		sceneId,
		LuaFnObjId2Guid( sceneId, selfId ),
		Msg )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--È«Çò¹«¸æ
--**********************************
function x808002_MyGlobalNews( sceneId, Msg )

	if Msg == nil then
		return
	end

	AddGlobalCountNews( sceneId, Msg )
	--Add Log
	MissionLog( sceneId, "[TAOSHA]: "..Msg )

end

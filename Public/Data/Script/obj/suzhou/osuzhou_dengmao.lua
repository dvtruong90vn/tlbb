--À’÷›NPC
--µÀ√Ø
--∆’Õ®

x001081_g_ScriptId	= 001081

--√≈≈…–≈œ¢(√≈≈…√˚≥∆£¨SceneID£¨PosX£¨PosY£¨√≈≈…ID)
x001081_g_mpInfo		= {}
x001081_g_mpInfo[0]	= { "Tinh T˙c", 16,  96, 152, MP_XINGSU }
x001081_g_mpInfo[1]	= { "TiÍu Dao", 14,  67, 145, MP_XIAOYAO }
x001081_g_mpInfo[2]	= { "Thi™u L‚m",  9,  96, 127, MP_SHAOLIN }
x001081_g_mpInfo[3]	= { "ThiÍn SΩn", 17,  95, 120, MP_TIANSHAN }
x001081_g_mpInfo[4]	= { "ThiÍn Long", 13,  96, 120, MP_DALI }
x001081_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x001081_g_mpInfo[6]	= { "Vı –ang", 12, 103, 140, MP_WUDANG }
x001081_g_mpInfo[7]	= { "Minh Gi·o", 11,  98, 167, MP_MINGJIAO }
x001081_g_mpInfo[8]	= { "C·i Bang", 10,  91, 116, MP_GAIBANG }

x001081_g_Yinpiao = 40002000

x001081_g_Impact_NotTransportList = { 5929, 5944 } -- Ω˚÷π¥´ÀÕµƒImpact
x001081_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- Ω˚÷π¥´ÀÕµƒImpactÃ· æ–≈œ¢

--**********************************
-- ¬º˛Ωªª•»Îø⁄
--**********************************
function x001081_OnDefaultEvent( sceneId, selfId,targetId )
	CallScriptFunction( (300053), "ChuanSong", sceneId, selfId, 400, 1 )
end

--**********************************
-- ¬º˛¡–±Ì—°÷–“ªœÓ
--**********************************
function x001081_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( (300053), "ChuanSong", sceneId, selfId, GetNumText(),1)
end
--  add by zchw
function x001081_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--∏˘æ›√≈≈…IDªÒ»°√≈≈…–≈œ¢
--**********************************
function x001081_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x001081_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--∂‘ª∞¥∞ø⁄–≈œ¢Ã· æ
--**********************************
function x001081_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

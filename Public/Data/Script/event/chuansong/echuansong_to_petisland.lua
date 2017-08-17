--ÊÂ¼þ
--´«ËÍµ½ÕäÊÞµº

--½Å±¾ºÅ
x400918_g_ScriptId = 400918

--ÈÎÎñÎÄ±¾ÃèÊö
x400918_g_MissionName="Ði Huy«n Vû Ðäo"
x400918_g_MissionInfo="Ðªn Huy«n Vû Ðäo"  --ÈÎÎñÃèÊö
x400918_g_MissionTarget="Ðªn Huy«n Vû Ðäo"		--ÈÎÎñÄ¿±ê
x400918_g_ContinueInfo="Ðªn Huy«n Vû Ðäo"		--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x400918_g_MissionComplete="Ðªn Huy«n Vû Ðäo"					--Íê³ÉÈÎÎñnpcËµ»°µÄ»°

--**********************************
--Èë¿Úº¯Êý
--**********************************
function x400918_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾

	-- ¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐ¡°ÒøÆ±¡±Õâ¸ö¶«Î÷£¬ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïµÄ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, 40002000) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Ngß½i trên ngß¶i có Ngân Phiªu, ta không th¬ giúp gì ðßþc." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--äîÔËÏà¹Ø
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				BeginEvent( sceneId )
					AddText( sceneId, "  Trong ðµi ngû có thành viên ðang trong trÕng thái Tào V§n, không th¬ d¸ch chuy¬n." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
		end
	end

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Ngß½i ðang trong trÕng thái Tào V§n, không th¬ d¸ch chuy¬n." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 39, 109, 25)

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x400918_OnEnumerate( sceneId, selfId, targetId )
	--µÈ tr· lên m¾i có th¬ ðªn n½i này!´ïµ½10 tr· lên m¾i có th¬ ðªn n½i này!¾ÍÏÔÊ¾´«ËÍÑ¡Ïî
	if GetLevel( sceneId, selfId ) >= 10 then
		AddNumText(sceneId,x400918_g_ScriptId,x400918_g_MissionName, 9, -1)
	else
		return
	end
end

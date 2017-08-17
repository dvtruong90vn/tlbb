--created by WTT 2009.3.2

--ÊÂ¼þ£º´«ËÍµ½Ê¥ÊÞÉ½

--½Å±¾ºÅ
x400963_g_ScriptId = 400963

--ÈÎÎñÎÄ±¾ÃèÊö
x400963_g_MissionName="#{QSSS_090302_1}"		-- È¥Ê¥ÊÞÉ½
x400963_g_MissionInfo="Ði Thánh Thú S½n"  		-- ÈÎÎñÃèÊö
x400963_g_MissionTarget="Ði Thánh Thú S½n"		-- ÈÎÎñÄ¿±ê
x400963_g_ContinueInfo="Ði Thánh Thú S½n"			-- Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x400963_g_MissionComplete="Ði Thánh Thú S½n"	-- Íê³ÉÈÎÎñnpcËµ»°µÄ»°

--**********************************
--Èë¿Úº¯Êý
--**********************************
function x400963_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	-- ¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐ¡°ÒøÆ±¡±Õâ¸ö¶«Î÷£¬ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïµÄ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, 40002000) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Ngß½i trên ngß¶i có ngân phiªu, ta không th¬ giúp gì ðßþc." )
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
	
	-- ÒÔÉÏ¼ì²â¾ùÍ¨¹ý	
	BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x400963_g_ScriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShengShouShan");
			UICommand_AddString(sceneId, "#{QSSS_090302_2}");		-- ¡°Ê¥ÊÞÉ½Îª²»¼ÓÉ±Æø³¡¾°£¬Çë×¢Òâ°²È«¡£ÄãÈ·ÈÏÒª½øÈëÂð£¿¡±
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x400963_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText(sceneId,x400963_g_ScriptId,x400963_g_MissionName, 9, 1)	
	
end

--**********************************
--´«ËÍÖÁÊ¥ÊÞÉ½
--**********************************
function x400963_GotoShengShouShan( sceneId, selfId, targetId )

	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 158, 233, 225, 21 );
	return
	
end

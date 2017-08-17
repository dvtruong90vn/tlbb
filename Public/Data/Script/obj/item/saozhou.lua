--×¢Òâ£º

--ÎïÆ·¼¼ÄÜµÄÂß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ

--½Å±¾ºÅ
x300020_g_ScriptId = 300020

--ÈÎÎñºÅ
x300020_g_MissionId = 1060

x300020_g_Impact = 213

x300020_g_TreasureAddress = {{scene=9,x1=84,x2=108,z1=64,z2=86},
						{scene=9,x1=122,x2=146,z1=132,z2=159},
						{scene=9,x1=89,x2=102,z1=110,z2=137},
						{scene=9,x1=54,x2=83,z1=52,z2=71}}

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300020_OnDefaultEvent( sceneId, selfId, bagIndex )
--É¨Öã
end

--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ı³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ĞĞ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊıµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ĞĞ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜµÄÖ´ĞĞ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function x300020_IsSkillLikeScript( sceneId, selfId)
	return 1; --Õâ¸ö½Å±¾ĞèÒª¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓÈ¡ÏûĞ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ğ§¹û£¬²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»·µ»Ø0£ºÃ»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û£¬¼ÌĞøÖ´ĞĞ¡£
--**********************************
function x300020_CancelImpacts( sceneId, selfId )
	return 0;
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÌõ¼ş¼ì²âÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÌõ¼ş¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--**********************************
function x300020_OnConditionCheck( sceneId, selfId )
	local x,z = GetWorldPos( sceneId, selfId)
	local misIndex = GetMissionIndexByID(sceneId,selfId,x300020_g_MissionId)
	if	sceneId ~= x300020_g_TreasureAddress[1].scene  then
		Msg2Player( sceneId,selfId,"B¯i cänh này không th¬ tiªn hành d÷n d©p",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
		return 0
	elseif	IsHaveMission(sceneId,selfId,x300020_g_MissionId) > 0	 then
		if	GetMissionParam( sceneId, selfId, misIndex,4) == 1  then
			if	x>x300020_g_TreasureAddress[1].x1  and  x<x300020_g_TreasureAddress[1].x2  and  z>x300020_g_TreasureAddress[1].z1  and  z<x300020_g_TreasureAddress[1].z2  then
				if	GetMissionParam( sceneId, selfId, misIndex,0) >= 1  then
					Msg2Player( sceneId,selfId,"ĞÕi ği®n ğã ğßşc d÷n d©p sÕch s¨ r°i",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 0
				else
					Msg2Player( sceneId,selfId,"Các hÕ b¡t ğ¥u d÷n d©p ğÕi ği®n...",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 1
				end
			else
				Msg2Player( sceneId,selfId,"C¥n ğªn: ĞÕi ği®n",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
				return 0
			end
		elseif	GetMissionParam( sceneId, selfId, misIndex,4) == 2  then
			if  x>x300020_g_TreasureAddress[2].x1  and  x<x300020_g_TreasureAddress[2].x2  and  z>x300020_g_TreasureAddress[2].z1  and  z<x300020_g_TreasureAddress[2].z2  then
				if	GetMissionParam( sceneId, selfId, misIndex,0) >= 1  then
					Msg2Player( sceneId,selfId,"Tàng Kinh Các ğã ğßşc d÷n d©p sÕch s¨ r°i",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 0
				else
					Msg2Player( sceneId,selfId,"Các hÕ b¡t ğ¥u d÷n d©p Tàng Kinh Các...",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 1
				end
			else
				Msg2Player( sceneId,selfId,"C¥n ğªn: Tàng Kinh Các",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
				return 0
			end
		elseif	GetMissionParam( sceneId, selfId, misIndex,4) == 3  then
			if  x>x300020_g_TreasureAddress[3].x1  and  x<x300020_g_TreasureAddress[3].x2  and  z>x300020_g_TreasureAddress[3].z1  and  z<x300020_g_TreasureAddress[3].z2  then
				if	GetMissionParam( sceneId, selfId, misIndex,0) >=1  then
					Msg2Player( sceneId,selfId,"S½n Môn ğã ğßşc d÷n d©p sÕch s¨ r°i",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 0
				else
					Msg2Player( sceneId,selfId,"Các hÕ b¡t ğ¥u d÷n d©p S½n Môn...",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 1
				end
			else
				Msg2Player( sceneId,selfId,"C¥n ğªn: S½n Môn",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
				return 0
			end		
		elseif	GetMissionParam( sceneId, selfId, misIndex,4) == 4  then
			if  x>x300020_g_TreasureAddress[4].x1  and  x<x300020_g_TreasureAddress[4].x2  and  z>x300020_g_TreasureAddress[4].z1  and  z<x300020_g_TreasureAddress[4].z2  then
				if	GetMissionParam( sceneId, selfId, misIndex,0) >= 1  then
					Msg2Player( sceneId,selfId,"Tháp Ğ°ng H° ğã ğßşc d÷n d©p sÕch s¨ r°i.",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 0
				else
					Msg2Player( sceneId,selfId,"Các hÕ b¡t ğ¥u d÷n d©p Tháp Ğ°ng H°...",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
					return 1
				end
			else
				Msg2Player( sceneId,selfId,"C¥n ğªn: Tháp Ğ°ng H°",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
				return 0
			end
		end
	else
		return 0
	end
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜÏûºÄµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÏûºÄ´¦ÀíÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÏûºÄ¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--×¢Òâ£ºÕâ²»¹â¸ºÔğÏûºÄµÄ¼ì²âÒ²¸ºÔğÏûºÄµÄÖ´ĞĞ¡£
--**********************************
function x300020_OnDeplete( sceneId, selfId )
	return 1; --²»ÏûºÄ
end

--**********************************
--Ö»»áÖ´ĞĞÒ»´ÎÈë¿Ú£º
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Âú×ãµÄÊ±ºò£©£¬¶øÒıµ¼
--¼¼ÄÜÒ²»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¼¼ÄÜµÄÒ»¿ªÊ¼£¬ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó£©¡£
--·µ»Ø1£º´¦Àí³É¹¦£»·µ»Ø0£º´¦ÀíÊ§°Ü¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x300020_OnActivateOnce( sceneId, selfId )
	local misIndex = GetMissionIndexByID(sceneId,selfId,x300020_g_MissionId)
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 5900, 0);
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	BeginEvent(sceneId)
		AddText(sceneId,"Quét d÷n xong, nhi®m vø ğã hoàn thành!")
	EndEvent( )
	DispatchMissionTips(sceneId,selfId)
	Msg2Player( sceneId,selfId,"D÷n dep sÕch s¨ r°i, nhi®m vø hoàn thành",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
	return 1;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú£º
--Òıµ¼¼¼ÄÜ»áÔÚÃ¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃÕâ¸ö½Ó¿Ú¡£
--·µ»Ø£º1¼ÌĞøÏÂ´ÎĞÄÌø£»0£ºÖĞ¶ÏÒıµ¼¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x300020_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÊÇÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

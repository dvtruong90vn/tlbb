--ÃÅÅÉÖ¸Òý

--MisDescBegin
--½Å±¾ºÅ
x210241_g_ScriptId	= 210241
--MisDescEnd

--ÃÅÅÉÐÅÏ¢£ºÃÅÅÉÃû³Æ£¬ÌØÉ«ÃèÊö£¬NumText£¬½ÓÒýÈË×ø±ê£¬½ÓÒýÈËÃû³Æ
x210241_g_MPInfo		=
{
	{ nam="Thiªu Lâm", des="#{event_dali_mp_sl}", key=1020, x=276, z=229, npc="Tu® D¸ch"			},
	{ nam="Minh Giáo",   des="#{event_dali_mp_mj}", key=1021, x=288, z=238, npc="ThÕch Bäo"			},
	{ nam="Cái Bang",   des="#{event_dali_mp_gb}", key=1022, x=276, z=232, npc="Giän Ninh"			},
	{ nam="Võ Ðang", des="#{event_dali_mp_wd}", key=1023, x=276, z=225, npc="Trß½ng HoÕch"		},
	{ nam="Nga My", des="#{event_dali_mp_em}", key=1024, x=276, z=235, npc="Lµ Tam Nß½ng"		},
	{ nam="Tinh Túc", des="#{event_dali_mp_xx}", key=1025, x=288, z=232, npc="Häi Phong TØ"		},
	{ nam="Thiên Long", des="#{event_dali_mp_tl}", key=1026, x=288, z=228, npc="Phá Tham"			},
	{ nam="Thiên S½n", des="#{event_dali_mp_ts}", key=1027, x=288, z=235, npc="Trình Thanh Sß½ng"		},
	{ nam="Tiêu Dao", des="#{event_dali_mp_xy}", key=1028, x=288, z=225, npc="Ðàm TØ Vû"	},
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210241_OnDefaultEvent( sceneId, selfId, targetId )
  
	local	key	= GetNumText()
	local	MP

	if key == 1010 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{event_dali_mp_dlg}" )
			for _, MP in x210241_g_MPInfo do
				AddNumText( sceneId, x210241_g_ScriptId, MP.nam, 11, MP.key )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	else
		for _, MP in x210241_g_MPInfo do
			if key == MP.key then
				x210241_MsgBox( sceneId, selfId, targetId, MP.des )
				CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, MP.x, MP.z, MP.npc )
				break
			end
		end
	end

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210241_OnEnumerate( sceneId, selfId, targetId )

	if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		AddNumText( sceneId, x210241_g_ScriptId, "Tìm g£p ngß¶i tiªp dçn #GCØu ðÕi môn phái", 11, 1010 )
	end

end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x210241_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x210241_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x210241_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x210241_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210241_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x210241_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210241_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210241_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210241_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--Message Box
--**********************************
function x210241_MsgBox( sceneId, selfId, targetId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

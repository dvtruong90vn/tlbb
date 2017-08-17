--ÂåÑôNPC
--ÌïæçÃù
--ÆÕÍ¨

x000104_g_ScriptId	= 000104

--²Ù×÷¼¯
x000104_g_Key				=
{
		["stu"]					= 100,	--Ñ§Ï°Æï³Ë¼¼ÄÜ
		["buy"]					= 101,	--¹ºÂòÆï³Ë
}

--¼¼ÄÜÁĞ±í
x000104_g_Skill			=
{
	{ id=446, name="KÜ Thu§t: Løc Hành Ğiêu"},
}

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000104_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Nªu ngß½i là ğ® tØ cüa CØu ğÕi môn phái, có th¬ tìm ngß¶i truy«n thø kÜ thu§t cüa môn phái ğ¬ h÷c kÜ thu§t" )
	---	AddNumText( sceneId, x000104_g_ScriptId, "Ñ§Ï°Æï³Ë¼¼ÄÜ", -1, x000104_g_Key["stu"] )
		AddNumText( sceneId, x000104_g_ScriptId, "Mua v§t cßŞi", 7, x000104_g_Key["buy"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x000104_OnEventRequest( sceneId, selfId, targetId )
	local	key	= GetNumText()

	if key == 0	then
		AddSkill( sceneId, selfId, 21 )
		x000104_MsgBox( sceneId, selfId, targetId, "Ngß½i hi®n ğã h÷c xong kÛ nång cßŞi" )
--	elseif key == x000104_g_Key["stu"] then
--		if GetLevel( sceneId, selfId ) < 20 then
--			x000104_MsgBox( sceneId, selfId, targetId, "  Çë20¼¶ºóÔÙÀ´ÕÒÎÒ£¡" )
--		end
--		if LuaFnHaveSpecificEquitation( sceneId, selfId, x000104_g_Skill[1].id ) == 0 then
--			if LuaFnLearnSpecificEquitation( sceneId, selfId, x000104_g_Skill[1].id, 1 ) == 1 then
--				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
--				x000104_MsgBox( sceneId, selfId, targetId, "  ÄãÑ§»áÁË¡°"..x000104_g_Skill[1].name.."¡±¡£" )
--			end
--		else
--			x000104_MsgBox( sceneId, selfId, targetId, "  ÄãÒÑ¾­Ñ§»á¡°"..x000104_g_Skill[1].name.."¡±ÁË°¡£¡" )
--		end
	elseif key == x000104_g_Key["buy"] then
		DispatchShopItem( sceneId, selfId, targetId, 138 )
	end
end

--**********************************
--¶Ô»°¿òÌáÊ¾
--**********************************
function x000104_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

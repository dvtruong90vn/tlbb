--Í¬ÃÅÏàÖú
--»¨·Ñmµt Ğ©ÃÅÅÉ¹±Ï×À´Ö±½ÓÍê³Émµt »·Nhi®m vø sß môn....

x229011_g_scriptId = 229011

x229011_g_strHelpFinishedText = "  Ğ°ng môn g£p nÕn, phäi ra tay tß½ng trş, nhi®m vø cüa các hÕ ta ğã giao cho ğ°ng môn khác ği hoàn thành r°i. #r#Gnhi®m vø hoàn thành! #W"

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x229011_OnDefaultEvent( sceneId, selfId, targetId, menpaiId, numTextId )

	if numTextId == 1 then

		BeginEvent( sceneId )

			if IsHaveMission(sceneId,selfId,MENPAI_SHIMEN_MISID[menpaiId+1]) <= 0 then
				AddText( sceneId, "Hình nhß các hÕ không có tiªp nh§n nhi®m vø sß môn.")
			else
				local strText = "  VÕn doanh sß môn, ngß¶i ngß¶i có phúc! M±i ngày nhæng ğ® tØ không ng×ng n± lñc làm nhi®m vø sß môn chúng tôi s¨ thß·ng cho ph¥n thß·ng quı giá, ğß½ng nhiên, ğ® tØ khi làm nhi®m vø sß môn g£p phäi khó khån chúng tôi s¨ t§n tâm trş giúp. #Rcác hÕ quyªt ğ¸nh tiêu hao #G%d ği¬m #W cüa ğµ c¯ng hiªn sß môn, và nhæng sß huynh sß tÖ có th¬ giúp các hÕ hoàn thành nhi®m vø sß môn hi®n gi¶ nhé?"
				strText = format( strText, x229011_GetHelpFinishNeed( sceneId, selfId ) )
				AddText( sceneId, strText )
				AddNumText( sceneId, x229011_g_scriptId, "Duy®t", 6, 2 )
				AddNumText( sceneId, x229011_g_scriptId, "R¶i khöi", 8, 3 )
			end

		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif numTextId == 2 then

		CallScriptFunction( MENPAI_SHIMEN_SCRIPTID[menpaiId+1], "HelpFinishOneHuan", sceneId, selfId, targetId )

	elseif numTextId == 3 then

		--¹Ø±Õ¶Ô»°´°¿Ú....
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		
	end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x229011_OnEnumerate( sceneId, selfId, targetId, menpaiId )

	--Èç¹ûÍæ¼Ò²»Ğúng¸Ã±¾ÃÅÅÉtoÕ ğµ ¾Í²»ÏÔÊ¾....
	if menpaiId == GetMenPai( sceneId, selfId ) then
		AddNumText( sceneId, x229011_g_scriptId, "Ğ°ng môn tß½ng trş", 6, 1 );
	end

end

--**********************************
--¼ÆËãÍ¬ÃÅÏàÖúËùĞètoÕ ğµ ÃÅÅÉ¹±Ï×....
--**********************************
function x229011_GetHelpFinishNeed( sceneId, selfId )

	--Í¬ÃÅÏàÖúËùĞè¹±Ï×¶È=Íê³É20»·toÕ ğµ ¹±Ï×¶È * 80%
	
	--Ã¿»·Êµ¼Ê½±Àø¹±Ï×¶È=(Íæ¼ÒµÈc¤p-»ù´¡µÈc¤p)* µÈc¤pÓ°Ïì²ÎÊı + »ù´¡¹±Ï×¶È
	--Íê³É20»·toÕ ğµ ¹±Ï×¶È=(Íæ¼ÒµÈc¤p-»ù´¡µÈc¤p)* µÈc¤pÓ°Ïì²ÎÊı * 20 + 20»·»ù´¡¹±Ï×¶È×ÜºÍ(=40)
	
	local level = GetLevel(sceneId, selfId)
	local need = (level - 10) * 0.05 * 20 + 40
	need = need * 0.8
	need = floor( need )

	return need

end

--**********************************
--¼ì²â²¢¿Û³ıÍ¬ÃÅÏàÖúËùĞètoÕ ğµ ÃÅÅÉ¹±Ï×....
--**********************************
function x229011_CheckAndDepleteHelpFinishMenPaiPoint( sceneId, selfId, targetId )

	local needPoint = x229011_GetHelpFinishNeed( sceneId, selfId )
	local menpaiPoint = GetHumanMenpaiPoint( sceneId, selfId )

	if menpaiPoint < needPoint then
		BeginEvent(sceneId)
			AddText( sceneId, "  Hình nhß các hÕ không có ğü ği¬m c¯ng hiªn sß môn, hãy vì sß phø làm thêm tı vi®c, các ğ°ng môn s¨ toàn lñc giúp các hÕ." )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return 0
	else
		SetHumanMenpaiPoint( sceneId, selfId, menpaiPoint-needPoint )
		return 1
	end

end

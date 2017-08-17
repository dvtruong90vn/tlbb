--NPC Mµ Dung S½n Trang
--Mµ Dung Thanh S½n - Võ h÷c truy«n thø phái Mµ Dung
--Script by Sói Ğz
--ID = 960002

x960002_g_ScriptId	= 960002

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960002_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"TÕi hÕ là Mµ Dung Thanh S½n, ngß¶i truy«n thø võ h÷c Mµ Dung Gia cho các ğ® tØ bän môn.")
		
		local MP = GetMenPai(sceneId, selfId)
		if MP == 9 then
			AddText(sceneId,"Các hÕ vçn chßa gia nh§p môn phái nào. Phäi chång là có duyên v¾i bän phái. Hãy ğªn yªt kiªn trß·ng môn Mµ Dung Thùy mµt chuyªn xem c½ duyên cüa các hÕ v¾i bän phái thª nào?")
		elseif MP == 10 then
			AddNumText(sceneId,x960002_g_scriptId, "KÛ nång h÷c t§p",1,1)
			AddNumText(sceneId,x960002_g_scriptId, "Gi¾i thi®u tâm pháp",8,2)
		else
			AddText(sceneId,"KÛ nång cüa ta chï truy«n thø cho ğ® tØ bän môn, các hÕ ğã là cao ğ° môn phái khác, hãy v« môn phái mình tu luy®n ği!")
		end
		
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x960002_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()
local Sex = GetSex(sceneId,selfId)

	--*****************--
	if key == 2 then
		
		BeginEvent(sceneId)
			AddText(sceneId,"#{function_xinfajieshao_001}")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	
	end
	--*****************--
	if key == 1 then
		
		BeginEvent(sceneId)
			AddText(sceneId,"M²i l¥n tu luy®n s¨ gia tång tâm pháp tÕi quy¬n bí t¸ch chï ğ¸nh lên #G10 c¤p#W tuy nhiên không c¥n t¯n #GKinh Nghi®m#W hay #GNgân Lßşng#W gì hªt!")
			AddText(sceneId,"Các hÕ mu¯n thång c¤p bí t¸ch nào?")
			AddNumText(sceneId,x960002_g_scriptId, "#WGiang Nam Kiªm Quyªt",1,3)
			AddNumText(sceneId,x960002_g_scriptId, "#WSát Trß¶ng Quyªt",1,4)
			AddNumText(sceneId,x960002_g_scriptId, "#WViêm Dß½ng Tâm Pháp",1,5)
			AddNumText(sceneId,x960002_g_scriptId, "#WThanh Vân Bí T¸ch",1,6)
			AddNumText(sceneId,x960002_g_scriptId, "#WSß½ng Lînh Kiªm Thu§t",1,7)
			AddNumText(sceneId,x960002_g_scriptId, "#WTinh Nguy®t Yªu Thu§t",1,8)
			if LuaFnGetXinFaLevel(sceneId,selfId,70) >= 1 then
				AddNumText(sceneId,x960002_g_scriptId, "Bí t¸ch #YTham Hşp Công",1,9)
			end
			if LuaFnGetXinFaLevel(sceneId,selfId,71) >= 1 then
				AddNumText(sceneId,x960002_g_scriptId, "Bí t¸ch #GĞµn Dân Ği¬n Bí",1,10)
			end
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
			
	end
	--*****************--
	local TP
	local Lev=GetLevel(sceneId,selfId)
	--*****************--
	if key == 3 then
		BeginEvent(sceneId)
			TP = LuaFnGetXinFaLevel(sceneId,selfId,64)
			if TP >= 119 then
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GGiang Nam Kiªm Quyªt#W cüa các hÕ ğã ğÕt ğªn thßşng hÕn, không c¥n tu luy®n thêm næa!")
			elseif Lev+5<TP+10 then
				AddText(sceneId,"C¥n thiªt gia tång c¤p ğµ nhân v§t ğäm bäo chênh l®ch tâm pháp và c¤p ğµ nhân v§t không quá 5")
			else
				LuaFnSetXinFaLevel(sceneId,selfId,64,TP+10)
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GGiang Nam Kiªm Quyªt#W cüa các hÕ gia tång lên c¤p "..TP.."!")
			end
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 4 then
		BeginEvent(sceneId)
			TP = LuaFnGetXinFaLevel(sceneId,selfId,65)
			if TP >= 119 then
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GSát Trß¶ng Quyªt#W cüa các hÕ ğã ğÕt ğªn thßşng hÕn, không c¥n tu luy®n thêm næa!")
			elseif Lev+5<TP+10 then
				AddText(sceneId,"C¥n thiªt gia tång c¤p ğµ nhân v§t ğäm bäo chênh l®ch tâm pháp và c¤p ğµ nhân v§t không quá 5")
			else
				LuaFnSetXinFaLevel(sceneId,selfId,65,TP+10)
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GSát Trß¶ng QuyªtW cüa các hÕ gia tång lên c¤p "..TP.."!")
			end
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 5 then
		BeginEvent(sceneId)
			TP = LuaFnGetXinFaLevel(sceneId,selfId,66)
			if TP >= 119 then
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GViêm Dß½ng Tâm Pháp#W cüa các hÕ ğã ğÕt ğªn thßşng hÕn, không c¥n tu luy®n thêm næa!")
			elseif Lev+5<TP+10 then
				AddText(sceneId,"C¥n thiªt gia tång c¤p ğµ nhân v§t ğäm bäo chênh l®ch tâm pháp và c¤p ğµ nhân v§t không quá 5")
			else
				LuaFnSetXinFaLevel(sceneId,selfId,66,TP+10)
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GViêm Dß½ng Tâm Pháp#W cüa các hÕ gia tång lên c¤p "..TP.."!")
			end
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 6 then
		BeginEvent(sceneId)
			TP = LuaFnGetXinFaLevel(sceneId,selfId,67)
			if TP >= 119 then
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GThanh Vân Bí T¸ch#W cüa các hÕ ğã ğÕt ğªn thßşng hÕn, không c¥n tu luy®n thêm næa!")
			elseif Lev+5<TP+10 then
				AddText(sceneId,"C¥n thiªt gia tång c¤p ğµ nhân v§t ğäm bäo chênh l®ch tâm pháp và c¤p ğµ nhân v§t không quá 5")
			else
				LuaFnSetXinFaLevel(sceneId,selfId,67,TP+10)
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GThanh Vân Bí T¸ch#W cüa các hÕ gia tång lên c¤p "..TP.."!")
			end
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 7 then
		BeginEvent(sceneId)
			TP = LuaFnGetXinFaLevel(sceneId,selfId,68)
			if TP >= 119 then
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GSß½ng Lînh Kiªm Thu§t#W cüa các hÕ ğã ğÕt ğªn thßşng hÕn, không c¥n tu luy®n thêm næa!")
			elseif Lev+5<TP+10 then
				AddText(sceneId,"C¥n thiªt gia tång c¤p ğµ nhân v§t ğäm bäo chênh l®ch tâm pháp và c¤p ğµ nhân v§t không quá 5")
			else
				LuaFnSetXinFaLevel(sceneId,selfId,68,TP+10)
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GSß½ng Lînh Kiªm Thu§t#W cüa các hÕ gia tång lên c¤p "..TP.."!")
			end
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 8 then
		BeginEvent(sceneId)
			TP = LuaFnGetXinFaLevel(sceneId,selfId,69)
			if TP >= 119 then
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GTinh Nguy®t Yªu ThÑc#W cüa các hÕ ğã ğÕt ğªn thßşng hÕn, không c¥n tu luy®n thêm næa!")
			elseif Lev+5<TP+10 then
				AddText(sceneId,"C¥n thiªt gia tång c¤p ğµ nhân v§t ğäm bäo chênh l®ch tâm pháp và c¤p ğµ nhân v§t không quá 5")
			else
				LuaFnSetXinFaLevel(sceneId,selfId,69,TP+10)
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GTinh Nguy®t Yªu ThÑc#W cüa các hÕ gia tång lên c¤p "..TP.."!")
			end
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 9 then
		BeginEvent(sceneId)
			TP = LuaFnGetXinFaLevel(sceneId,selfId,70)
			if TP >= 119 then
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GTham Hşp Công#W cüa các hÕ ğã ğÕt ğªn thßşng hÕn, không c¥n tu luy®n thêm næa!")
			elseif Lev+5<TP+10 then
				AddText(sceneId,"C¥n thiªt gia tång c¤p ğµ nhân v§t ğäm bäo chênh l®ch tâm pháp và c¤p ğµ nhân v§t không quá 5")
			else
				LuaFnSetXinFaLevel(sceneId,selfId,70,TP+10)
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GTham Hşp Công#W cüa các hÕ gia tång lên c¤p "..TP.."!")
			end
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 10 then
		BeginEvent(sceneId)
			TP = LuaFnGetXinFaLevel(sceneId,selfId,71)
			if TP >= 119 then
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GĞµn Dân Ği¬n Bí#W cüa các hÕ ğã ğÕt ğªn thßşng hÕn, không c¥n tu luy®n thêm næa!")
			elseif Lev+5<TP+10 then
				AddText(sceneId,"C¥n thiªt gia tång c¤p ğµ nhân v§t ğäm bäo chênh l®ch tâm pháp và c¤p ğµ nhân v§t không quá 5")
			else
				LuaFnSetXinFaLevel(sceneId,selfId,71,TP+10)
				AddText(sceneId,"Ğµ tu luy®n tâm pháp #GĞµn Dân Ği¬n Bí#W cüa các hÕ gia tång lên c¤p "..TP.."!")
			end
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
end
--*****************************--
--*     Notify Fail Tips      *--
--*****************************--
function x960002_NotifyFailTips(sceneId,selfId,Tip)

	BeginEvent(sceneId)
		AddText(sceneId,sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end


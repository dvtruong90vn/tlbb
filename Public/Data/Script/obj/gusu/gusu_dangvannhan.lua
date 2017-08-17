--NPC Mµ Dung S½n Trang
--D¸ch trÕm - Ð£ng VÕn Nh§n
--Script by Sói Ðz
--ID = 960000

x960000_g_ScriptId	= 960000

--*****************************--
--*     On Default Event      *--
--*****************************--
function x960000_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"N½i này là #GMµ Dung S½n Trang#W, t±ng ðà môn phái #GMµ Dung#W tÕi #GCô Tô#W. Ch² ta cung c¤p d¸ch vø truy«n t¯ng ðªn các môn phái và thành th¸. Các hÕ mu¯n ði ðâu?")
		AddNumText(sceneId,x960000_g_ScriptId,"Thành th¸ - Tô Châu",9,0)
		AddNumText(sceneId,x960000_g_ScriptId,"Thành th¸ - Tô Châu - Thiªt Tß¶ng Ph¯",9,1)
		AddNumText(sceneId,x960000_g_ScriptId,"Thành th¸ - LÕc Dß½ng",9,2)
		AddNumText(sceneId,x960000_g_ScriptId,"Thành th¸ - LÕc Dß½ng - CØu Châu Thß½ng Hµi",9,3)
		AddNumText(sceneId,x960000_g_ScriptId,"Thành th¸ - ÐÕi Lý",9,4)
		AddNumText(sceneId,x960000_g_ScriptId,"Thành th¸ - Lâu Lan",9,5)
		AddNumText(sceneId,x960000_g_ScriptId,"Thành th¸ - Thúc Hà C± Tr¤n",9,6)
		AddNumText(sceneId,x960000_g_ScriptId,"Thành th¸ - #GPhßþng Minh Tr¤n",9,7)
		AddNumText(sceneId,x960000_g_ScriptId,"Ðªn các môn phái khác",9,8)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x960000_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	--*****************--
	if key == 0 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,1,202,257)
	elseif key == 1 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,1,331,226)
	elseif key == 2 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,0,233,321)
	elseif key == 3 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,0,325,270)
	elseif key == 4 then
		CallScriptFunction((400900),"TransferFuncFromNpc",sceneId,selfId,2,376,222)
	elseif key == 5 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,186,286,129)
	elseif key == 6 then
		BeginEvent(sceneId)
			AddText(sceneId,"Thúc Hà C± Tr¤n là khu vñc không tång sát khí, các hÕ xác nh§n tiªn vào?")
			AddNumText(sceneId,x960000_g_ScriptId,"Xác nh§n",-1,1000)
			AddNumText(sceneId,x960000_g_ScriptId,"Tr· lÕi",-1,1001)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif key == 7 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,580,158,120)
	end
	--*****************--
	if key == 8 then
		BeginEvent(sceneId)
			AddNumText(sceneId,x960000_g_ScriptId,"Môn phái - Tinh Túc",9,90)
			AddNumText(sceneId,x960000_g_ScriptId,"Môn phái - Tiêu Dao",9,91)
			AddNumText(sceneId,x960000_g_ScriptId,"Môn phái - Thiªu Lâm",9,92)
			AddNumText(sceneId,x960000_g_ScriptId,"Môn phái - Thiên S½n",9,93)
			AddNumText(sceneId,x960000_g_ScriptId,"Môn phái - Thiên Long",9,94)
			AddNumText(sceneId,x960000_g_ScriptId,"Môn phái - Nga My",9,95)
			AddNumText(sceneId,x960000_g_ScriptId,"Môn phái - Võ Ðang",9,96)
			AddNumText(sceneId,x960000_g_ScriptId,"Môn phái - Minh Giáo",9,97)
			AddNumText(sceneId,x960000_g_ScriptId,"Môn phái - Cái Bang",9,98)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*****************--
	if key == 90 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,16,96,152)
	elseif key == 91 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,14,67,145)
	elseif key == 92 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,9,96,127)
	elseif key == 93 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,17,95,120)
	elseif key == 94 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,13,96,120)
	elseif key == 95 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,15,89,139)
	elseif key == 96 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,12,103,140)
	elseif key == 97 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,11,98,167)
	elseif key == 98 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,10,91,116)
	end
	--*****************--
	if key == 1000 then
		CallScriptFunction((400900),"TransferFuncFromNpc",sceneId,selfId,420,200,211)
	elseif key == 1001 then
		x960000_OnDefaultEvent(sceneId,selfId,targetId)
	end
	
end
--*****************************--
--*       Messenge Box        *--
--*****************************--
function x960000_MsgBox(sceneId,selfId,targetId,msg)

	BeginEvent(sceneId)
		AddText(sceneId,sceneId,msg)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	
end


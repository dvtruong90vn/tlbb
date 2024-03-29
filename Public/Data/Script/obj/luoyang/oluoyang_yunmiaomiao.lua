--洛阳NPC
--云渺渺
--普通

x000101_g_scriptId = 000101

x000101_g_shoptableindex=17

--所拥有的事件ID列表
x000101_g_eventList={800107,311112}  --del 311112  珍兽技能升级

x000101_g_miscEventId = 311111;

--**********************************
--事件交互入口
--**********************************
function x000101_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_luoyang_0026}")
		
		AddNumText( sceneId, x000101_g_scriptId, "Gi緄 thi畊 li阯 quan v� tr鈔 th�", 11, 10 )
		
		AddNumText(sceneId,x000101_g_scriptId,"Mua 鸢 d鵱g cho tr鈔 th�",7,0)
		AddNumText(sceneId,x000101_g_scriptId,"Luy畁 k� n錸g tr鈔 th�",6,1)
		AddNumText(sceneId,x000101_g_scriptId,"Tr鈔 Th� ho鄋 鸢ng",6,2)
		AddNumText(sceneId,x000101_g_scriptId,"K閛 d鄆 tr叨ng th�",6,3)
		AddNumText(sceneId,x000101_g_scriptId,"Thu d咿ng tr鈔 th�",6,4)
		--AddNumText(sceneId,x000101_g_scriptId,"发布征友信息",6,5)
		--AddNumText(sceneId,x000101_g_scriptId,"征友",6,6)
		--AddNumText(sceneId,x000101_g_scriptId,"查询繁殖的珍兽",6,7)
		for i, eventId in x000101_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId)
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--事件列表选中一项
--**********************************
function x000101_OnEventRequest( sceneId, selfId, targetId, eventId )
   
---------------------------介绍-------------------------------------------------
	if eventId == x000101_g_scriptId then
		if GetNumText() == 10 then
			BeginEvent(sceneId)	
				AddText(sceneId,"#{function_help_056}#r")
				
				AddNumText(sceneId, x000101_g_scriptId,"Gi緄 thi畊 tr鈔 th� sinh s鋘",11,11);
				AddNumText(sceneId, x000101_g_scriptId,"Gi緄 thi畊 k� n錸g h鱟 t c黙 tr鈔 th�",11,12);			
				AddNumText(sceneId, x000101_g_scriptId,"Gi緄 thi畊 th錸g c k� n錸g tr鈔 th�",11,13);
					
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	
		if GetNumText() == 11 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_057}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 12 then
			BeginEvent(sceneId)						
					AddText(sceneId,"#{function_help_058}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 13 then
			BeginEvent(sceneId)						
					AddText(sceneId,"#{JNHC_81015_01}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
---------------------------介绍-------------------------------------------------		
		if	GetNumText() == 0	then
			DispatchShopItem( sceneId, selfId,targetId, x000101_g_shoptableindex )
		elseif GetNumText() <= 6 then
			local sel = GetNumText();
			CallScriptFunction( x000101_g_miscEventId, "OnEnumerate",sceneId, selfId, targetId, sel)
		elseif GetNumText() == 7 then
			LuaFnGetPetProcreateInfo(sceneId, selfId);
		end
	else
		for i, findId in x000101_g_eventList do
			if findId == eventId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId)
			end
		end
	end
end

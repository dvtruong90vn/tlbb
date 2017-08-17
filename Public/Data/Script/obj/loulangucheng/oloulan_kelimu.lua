--Â¥À¼NPC....
--±¦Ê¯¹¤½³....

x001119_g_scriptId = 001119

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001119_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )

		AddText( sceneId, "#{loulan_baoshigongjiang_20080329}" )
		AddNumText( sceneId, x001119_g_scriptId, "Gi¾i thi®u tính nång Bäo ThÕch", 11, 0 )
		AddNumText( sceneId, x001119_g_scriptId, "Gi¾i thi®u hþp thành Bäo Thành", 11, 20 ) -- add by cuiyinjie 20081021
		AddNumText( sceneId, x001119_g_scriptId, "Bäo ThÕch hþp thành", 6, 1 )
		AddNumText( sceneId, x001119_g_scriptId, "Khoan l² trang b¸", 6, 2 )
		AddNumText( sceneId, x001119_g_scriptId, "Tháo gÞ bäo thÕch", 6, 3 )
		AddNumText( sceneId, x001119_g_scriptId, "Nguyên li®u hþp thành", 6, 4 )
		AddNumText( sceneId, x001119_g_scriptId, "Khäm bäo Bäo ThÕch", 6, 5 )
		AddNumText( sceneId, x001119_g_scriptId, "Ðiêu trác Bäo ThÕch", 6, 6 )
		AddNumText( sceneId, x001119_g_scriptId, "Dung luy®n Bäo ThÕch", 6, 7 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001119_OnEventRequest( sceneId, selfId, targetId, eventId )

		if GetNumText() == 0 then
			BeginEvent(sceneId)	
			
				AddText(sceneId,"#{function_help_104}#r")
			
				AddNumText(sceneId, x001119_g_scriptId,"Gi¾i thi®u v« khoan l²",11,8);
				AddNumText(sceneId, x001119_g_scriptId,"Gi¾i thi®u v« hþp thành Bäo ThÕch",11,9);
				AddNumText(sceneId, x001119_g_scriptId,"Gi¾i thi®u khäm Bäo ThÕch",11,10);
				AddNumText(sceneId, x001119_g_scriptId,"Gi¾i thi®u tháo gÞ Bäo ThÕch",11,11);
--				AddNumText(sceneId, x001119_g_scriptId,"×°±¸ÐÞÀí½éÉÜ",11,12);
				AddNumText(sceneId, x001119_g_scriptId,"Gi¾i thi®u ðiêu trác Bäo ThÕch",11,13);
				AddNumText(sceneId, x001119_g_scriptId,"Gi¾i thi®u dung luy®n Bäo ThÕch",11,14);
				AddNumText(sceneId, x001119_g_scriptId,"Gi¾i thi®u Bäo ThÕch th¡ng lþi",11,15);

			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- addstart 2008-10-21 add by cuiyinjie
		if GetNumText() == 20 then  -- add by cuiyinjie ²ÄÁÏºÏ³É½éÉÜ
			BeginEvent(sceneId)			
				AddText(sceneId,"#{SJSJ_081021_003}#r")
				AddNumText(sceneId, x001119_g_scriptId,"Gi¾i thi®u v« thao tác Tinh Thiªt",11,21);
				AddNumText(sceneId, x001119_g_scriptId,"Gi¾i thi®u v« thao tác Bí Ngân",11,22);
				AddNumText(sceneId, x001119_g_scriptId,"Gi¾i thi®u v« thao tác Väi Bông",11,23);					
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if GetNumText() == 21 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{SJSJ_081021_004}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 22 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{SJSJ_081021_005}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 23 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{SJSJ_081021_006}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		-- addend 2008-10-21 
	
		if GetNumText() == 8 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_039}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 9 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_040}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 10 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_041}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		if GetNumText() == 11 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_042}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
--		if GetNumText() == 12 then
--			BeginEvent(sceneId)						
--				AddText(sceneId,"#{function_help_043}#r")
--			EndEvent(sceneId)
--			DispatchEventList(sceneId,selfId,targetId)
--			return
--		end

		if GetNumText() == 13 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{INTERFACE_XML_GemCarve_6}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 14 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{JKBS_081021_022}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if GetNumText() == 15 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{JKBS_081021_023}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end


		--------------------------------------------------------------------------
		if GetNumText() == 1 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 23 )
			return
		end

		if GetNumText() == 2 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 25 )
			return
		end

		if GetNumText() == 3 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 27 )
			return
		end

		if GetNumText() == 4 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 19810424 )
			return
		end

		if GetNumText() == 5 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 19830424 )
			return
		end

		if GetNumText() == 6 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 112236 )
			return
		end

		if GetNumText() == 7 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 112237 )
			return
		end

end

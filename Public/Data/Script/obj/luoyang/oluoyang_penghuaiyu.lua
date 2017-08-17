--ÂåÑôNPC
--Åí»³Óñ
--ÆÕÍ¨

x000110_g_scriptId = 000110

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000110_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )

		AddText( sceneId, "Ngß½i có th¬ ðem m¤y viên Bäo ThÕch gi¯ng nhau hþp thành 1 viên Bäo ThÕch cao h½n 1 c¤p, ðem nguyên li®u cüa m¤y viên c¤p th¤p hþp thành 1 nguyên li®u cao h½n 1 c¤p, cûng có th¬ khoan l² khäm Bäo ThÕch lên trang b¸, cûng có th¬ gÞ bö Bäo ThÕch" )
		AddNumText( sceneId, x000110_g_scriptId, "Gi¾i thi®u tính nång Bäo ThÕch", 11, 0 )
		AddNumText( sceneId, x000110_g_scriptId, "Gi¾i thi®u v« kªt hþp nguyên li®u", 11, 20 ) -- add by cuiyinjie 20081021
		AddNumText( sceneId, x000110_g_scriptId, "Bäo ThÕch Hþp Thành", 6, 1 )
		AddNumText( sceneId, x000110_g_scriptId, "Trang b¸ khoan", 6, 2 )
		AddNumText( sceneId, x000110_g_scriptId, "Tháo gÞ Bäo ThÕch", 6, 3 )
		AddNumText( sceneId, x000110_g_scriptId, "Nguyên li®u hþp thành", 6, 4 )
		AddNumText( sceneId, x000110_g_scriptId, "Khäm Bäo ThÕch", 6, 5 )
		AddNumText( sceneId, x000110_g_scriptId, "Ðiêu Trác", 6, 6 )
		AddNumText( sceneId, x000110_g_scriptId, "Bäo ThÕch Dung Luy®n", 6, 7 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000110_OnEventRequest( sceneId, selfId, targetId, eventId )

		---------------------------½éÉÜ-------------------------------------------------
		if GetNumText() == 0 then
			BeginEvent(sceneId)	
			
				AddText(sceneId,"#{function_help_054}#r")
			
				AddNumText(sceneId, x000110_g_scriptId,"Gi¾i thi®u trang b¸ khoan",11,8);
				AddNumText(sceneId, x000110_g_scriptId,"Gi¾i thi®u hþp thành Bäo ThÕch",11,9);
				AddNumText(sceneId, x000110_g_scriptId,"Gi¾i thi®u khäm Bäo ThÕch",11,10);
				AddNumText(sceneId, x000110_g_scriptId,"Gi¾i thi®u tháo gÞ Bäo ThÕch",11,11);
--				AddNumText(sceneId, x000110_g_scriptId,"×°±¸ÐÞÀí½éÉÜ",11,12);
				AddNumText(sceneId, x000110_g_scriptId,"Gi¾i thi®u ðiêu trác Bäo ThÕch",11,13);
				AddNumText(sceneId, x000110_g_scriptId,"Gi¾i thi®u v« Bäo ThÕch Dung Luy®n",11,14);
				AddNumText(sceneId, x000110_g_scriptId,"Gi¾i thi®u v« Th¡ng Lþi Bäo ThÕch",11,15);

			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- addstart 2008-10-21 add by cuiyinjie
		if GetNumText() == 20 then  -- add by cuiyinjie ²ÄÁÏºÏ³É½éÉÜ
			BeginEvent(sceneId)			
				AddText(sceneId,"#{SJSJ_081021_001}#r")
				AddNumText(sceneId, x000110_g_scriptId,"Gi¾i thi®u v« thao tác Tinh Thiªt",11,21);
				AddNumText(sceneId, x000110_g_scriptId,"Gi¾i thi®u v« thao tác Bí Ngân",11,22);
				AddNumText(sceneId, x000110_g_scriptId,"Gi¾i thi®u v« thao tác Miên B¯",11,23);					
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
		if GetNumText() == 12 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_043}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
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

--¸±±¾ÈÎÎñ
--Ä¾ÈË

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x892009_g_ScriptId = 892009

--¸´»î´ÎÊý
x892009_g_ReLifeTimes = 10
--¸±±¾Ãû³Æ
x892009_g_CopySceneName="Lôi Ðài Sinh TØ"

--MisDescEnd
--************************************************************************

--½ÇÉ«Mission±äÁ¿ËµÃ÷
x892009_g_Param_huan		=0	--0ºÅ£ºÒÑ¾­Íê³ÉµÄ»·Êý£¬ÔÚ½ÓÊÕÈÎÎñÊ±ºò¸³Öµ
x892009_g_Param_ok			=1	--1ºÅ£ºµ±Ç°ÈÎÎñÊÇ·ñÍê³É(0Î´Íê³É£»1Íê³É)
x892009_g_Param_sceneid		=2	--2ºÅ£ºµ±Ç°¸±±¾ÈÎÎñµÄ³¡¾°ºÅ
x892009_g_Param_teamid		=3	--3ºÅ£º½Ó¸±±¾ÈÎÎñÊ±ºòµÄ¶ÓÎéºÅ
x892009_g_Param_killcount	=4	--4ºÅ£ºÉ±ËÀÈÎÎñ¹ÖµÄÊýÁ¿
x892009_g_Param_time		=5	--5ºÅ£ºÍê³É¸±±¾ËùÓÃÊ±¼ä(µ¥Î»£ºÃë)
--6ºÅ£ºÎ´ÓÃ
--7ºÅ£ºÎ´ÓÃ

x892009_g_CopySceneType=FUBEN_GODFIRE	--¸±±¾ÀàÐÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ
x892009_g_LimitMembers=1			--¿ÉÒÔ½ø¸±±¾µÄ×îÐ¡¶ÓÎéÈËÊý
x892009_g_TickTime=5				--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x892009_g_LimitTotalHoldTime=360	--360,1440¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊý£©,Èç¹û´ËÊ±¼äµ½ÁË£¬ÔòÈÎÎñ½«»áÊ§°Ü
x892009_g_LimitTimeSuccess=360		--360,1440¸±±¾Ê±¼äÏÞÖÆ£¨µ¥Î»£º´ÎÊý£©£¬Èç¹û´ËÊ±¼äµ½ÁË£¬ÈÎÎñÍê³É
x892009_g_CloseTick=6				--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊý£©
x892009_g_NoUserTime=5			--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x892009_g_DeadTrans=0				--ËÀÍö×ªÒÆÄ£Ê½£¬0£ºËÀÍöºó»¹¿ÉÒÔ¼ÌÐøÔÚ¸±±¾£¬1£ºËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x892009_g_Fuben_X=28				--½øÈë¸±±¾µÄÎ»ÖÃX
x892009_g_Fuben_Z=31				--½øÈë¸±±¾µÄÎ»ÖÃZ
x892009_g_Back_X=255				--Ô´³¡¾°Î»ÖÃX
x892009_g_Back_Z=255				--Ô´³¡¾°Î»ÖÃZ
x892009_g_TotalNeedKill=10			--ÐèÒªÉ±ËÀ¹ÖÎïÊýÁ¿
x892009_g_Param_sceneid=8			--ÉèÖÃ³¡¾°ID

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x892009_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Không biªt t× n½i nào ðªn  mß¶i hai tên ác nhân, tñ xßng Th§p Nh¸ Sát Tinh tÕi LÕc Dß½ng hoành hành vô kÜ, làm nhøc bách tính. Mß¶i hai tên này võ ngh® cao cß¶ng, kiêu ngÕo, ß½ng ngÕnh. G¥n ðây r¤t nhi«u giang h° ðÕo chích linh tinh tìm n½i nß½ng tña dß¾i chß¾ng b÷n chúng, khiªn cho thª lñc cüa chúng ngày càng l¾n mÕnh. A di ðà ph§t. Thi®n tai, thi®n tai..." )	
		AddNumText( sceneId, x892009_g_ScriptId, "Khiêu chiªn Th§p Nh¸ Sát Tinh", 10, 10 )
		AddNumText( sceneId, x892009_g_ScriptId, "----Gi¾i thi®u Th§p Nh¸ Sát Tinh----", 0, 30 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x892009_OnEnumerate( sceneId, selfId, targetId )
	
end
--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x892009_OnEventRequest( sceneId, selfId, targetId, eventId)
	if GetNumText() == 10 then

	local ret, msg = x892009_CheckAccept( sceneId, selfId, targetId )
	if 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId,msg)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

		BeginEvent( sceneId )
			AddText( sceneId, "B÷n chúng thª lñc r¤t mÕnh, võ công lÕi cao cß¶ng. Thí chü hãy tri®u t§p ðü ð°ng ðµi cüa các ðÕi môn phái t¾i ðây, lão nÕp s¨ giúp ðßa các ngß¶i ðªn Lôi Ðài Sinh TØ." )
			AddNumText( sceneId, x892009_g_scriptId, "--Ðªn Lôi Ðài Sinh TØ--", 10, 666)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 100  then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  0910281)
	elseif GetNumText() == 20 then
	BeginEvent( sceneId )
		AddText( sceneId, "Các hÕ mu¯n s· hæu mµt Huy­n Hóa Th¥n Thú?. Giªt chªt BOSS có th¬ ðÕt ðßþc nhæng v§t ph¦m quý giá cùng trân thú Huy­n Hóa tß½ng Ñng." )
		AddText( sceneId, "  #YHuy­n Hóa trân thú c¥n #G1 cái#W Trân Thú Huy­n Hóa ðan. Huy­n Hóa Ðan Toái Phiªn có th¬ · phø bän Sát Tinh ðÕt ðßþc. #GTrân thú Huy­n Hóa#W có nång lñc chiªn ð¤u cûng nhß tß ch¤t ti«m nång cñc kÏ mÕnh m¨." )	
	
		AddNumText( sceneId, x892009_g_ScriptId, "Huy­n Hóa Bång Yêu", 6, 201 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy­n Hóa Công Tôn Thánh", 6, 202 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy­n Hóa Tôn MÛ MÛ", 6, 203 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy­n Hóa Lâm Sung", 6, 204 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy­n Hóa Thüy Phï Ð¥u Lînh", 6, 205 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy­n Hóa Lô Quân D§t", 6, 206 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy­n Hóa T¥n Vß½ng", 6, 207 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy­n Hóa Quan Th¸nh", 6, 208 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy­n Hóa L² Chí Sinh", 6, 209 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy­n Hóa T¯ng Khß½ng", 6, 210 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy­n Hóa Vi­n C± KÏ H°n", 6, 211 )
		AddNumText( sceneId, x892009_g_ScriptId, "Huy­n Hóa Cáp ÐÕi Phách", 6, 212 )
		AddNumText( sceneId, x892009_g_ScriptId, "Gi¾i thi®u Sát Tinh", 0, 30 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 201 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Trân Thú index´Ó0¿ªÊ¼
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 25011 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Trân thú Huy­n Hóa c¥n mang theo trân thú tß½ng Ñng. Hãy ki¬m tra xem trong ô trân thú có trân thú  #YBång Yêu chßa...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309802, 1)--¸øÓèÎïÆ·
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Trân thú Huy­n Hóa phäi mang theo #YTrân Thú Huy­n Hóa Ðan#W. Ki¬m tra trong tay näi ðã có v§t ph¦m này chßa...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 202 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Trân Thú index´Ó0¿ªÊ¼
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 13474 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Trân thú Huy­n Hóa c¥n mang theo trân thú tß½ng Ñng. Hãy ki¬m tra xem trong ô trân thú có trân thú  #YCông Tôn Thánh chßa...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309803, 1)--¸øÓèÎïÆ·
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Trân thú Huy­n Hóa phäi mang theo #YTrân Thú Huy­n Hóa Ðan#W. Ki¬m tra trong tay näi ðã có v§t ph¦m này chßa...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 203 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Trân Thú index´Ó0¿ªÊ¼
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 9560 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Trân thú Huy­n Hóa c¥n mang theo trân thú tß½ng Ñng. Hãy ki¬m tra xem trong ô trân thú có trân thú  #YTôn MÛ MÛ chßa...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309804, 1)--¸øÓèÎïÆ·
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Trân thú Huy­n Hóa phäi mang theo #YTrân Thú Huy­n Hóa Ðan#W. Ki¬m tra trong tay näi ðã có v§t ph¦m này chßa...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 204 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Trân Thú index´Ó0¿ªÊ¼
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 13510 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Trân thú Huy­n Hóa c¥n mang theo trân thú tß½ng Ñng. Hãy ki¬m tra xem trong ô trân thú có trân thú  #YLâm Sung chßa...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309805, 1)--¸øÓèÎïÆ·
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Trân thú Huy­n Hóa phäi mang theo #YTrân Thú Huy­n Hóa Ðan#W. Ki¬m tra trong tay näi ðã có v§t ph¦m này chßa...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 205 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Trân Thú index´Ó0¿ªÊ¼
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 32530 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Trân thú Huy­n Hóa c¥n mang theo trân thú tß½ng Ñng. Hãy ki¬m tra xem trong ô trân thú có trân thú  #YThüy Phï Ð¥u Lînh chßa...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309806, 1)--¸øÓèÎïÆ·
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Trân thú Huy­n Hóa phäi mang theo #YTrân Thú Huy­n Hóa Ðan#W. Ki¬m tra trong tay näi ðã có v§t ph¦m này chßa...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 206 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Trân Thú index´Ó0¿ªÊ¼
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 13465 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Trân thú Huy­n Hóa c¥n mang theo trân thú tß½ng Ñng. Hãy ki¬m tra xem trong ô trân thú có trân thú  #YLô Quân D§t chßa...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309807, 1)--¸øÓèÎïÆ·
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Trân thú Huy­n Hóa phäi mang theo #YTrân Thú Huy­n Hóa Ðan#W. Ki¬m tra trong tay näi ðã có v§t ph¦m này chßa...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 207 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Trân Thú index´Ó0¿ªÊ¼
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 1403 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Trân thú Huy­n Hóa c¥n mang theo trân thú tß½ng Ñng. Hãy ki¬m tra xem trong ô trân thú có trân thú  #YT¥n Vß½ng chßa...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309808, 1)--¸øÓèÎïÆ·
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Trân thú Huy­n Hóa phäi mang theo #YTrân Thú Huy­n Hóa Ðan#W. Ki¬m tra trong tay näi ðã có v§t ph¦m này chßa...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 208 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Trân Thú index´Ó0¿ªÊ¼
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 13483 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Trân thú Huy­n Hóa c¥n mang theo trân thú tß½ng Ñng. Hãy ki¬m tra xem trong ô trân thú có trân thú  #YQuan Th¸nh chßa...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309809, 1)--¸øÓèÎïÆ·
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Trân thú Huy­n Hóa phäi mang theo #YTrân Thú Huy­n Hóa Ðan#W. Ki¬m tra trong tay näi ðã có v§t ph¦m này chßa...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 209 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Trân Thú index´Ó0¿ªÊ¼
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 13492 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Trân thú Huy­n Hóa c¥n mang theo trân thú tß½ng Ñng. Hãy ki¬m tra xem trong ô trân thú có trân thú  #YL² Chí Sinh chßa...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309810, 1)--¸øÓèÎïÆ·
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Trân thú Huy­n Hóa phäi mang theo #YTrân Thú Huy­n Hóa Ðan#W. Ki¬m tra trong tay näi ðã có v§t ph¦m này chßa...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 210 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Trân Thú index´Ó0¿ªÊ¼
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 13438 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Trân thú Huy­n Hóa c¥n mang theo trân thú tß½ng Ñng. Hãy ki¬m tra xem trong ô trân thú có trân thú  #YT¯ng Khß½ng chßa...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309811, 1)--¸øÓèÎïÆ·
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Trân thú Huy­n Hóa phäi mang theo #YTrân Thú Huy­n Hóa Ðan#W. Ki¬m tra trong tay näi ðã có v§t ph¦m này chßa...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 211 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Trân Thú index´Ó0¿ªÊ¼
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 12040 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Trân thú Huy­n Hóa c¥n mang theo trân thú tß½ng Ñng. Hãy ki¬m tra xem trong ô trân thú có trân thú  #YVi­n C± KÏ H°n chßa...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309812, 1)--¸øÓèÎïÆ·
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Trân thú Huy­n Hóa phäi mang theo #YTrân Thú Huy­n Hóa Ðan#W. Ki¬m tra trong tay näi ðã có v§t ph¦m này chßa...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 212 then
              if LuaFnGetAvailableItemCount(sceneId, selfId, 30502005) >=1 then
	          local bok = 0
	          PetNum = LuaFnGetPetCount(sceneId,selfId)
	          if PetNum ~= 0 then
		          for i = 1,PetNum,1 do
			          PetIndex = i - 1		--Trân Thú index´Ó0¿ªÊ¼
			          if LuaFnGetPet_DataID(sceneId, selfId, PetIndex) == 9540 then
	                             LuaFnDeletePet( sceneId, selfId, PetIndex, 1 )
	                             bok=1
			          else
			                 BeginEvent(sceneId)
				                 AddText(sceneId,"Trân thú Huy­n Hóa c¥n mang theo trân thú tß½ng Ñng. Hãy ki¬m tra xem trong ô trân thú có trân thú  #YCáp ÐÕi Phách chßa...")
			                 EndEvent(sceneId)
			                 DispatchEventList(sceneId,selfId,targetId)
			          return
			          end
		          end
	          end
	          if bok == 1 then
	             LuaFnDelAvailableItem(sceneId,selfId,30502005,1)
	             TryRecieveItem( sceneId, selfId, 30309813, 1)--¸øÓèÎïÆ·
	          end
              else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Trân thú Huy­n Hóa phäi mang theo #YTrân Thú Huy­n Hóa Ðan#W. Ki¬m tra trong tay näi ðã có v§t ph¦m này chßa...")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	        end

	elseif GetNumText() == 40 then
		c0 = LuaFnGetAvailableItemCount(sceneId, selfId, 20310115)
              if c0 >=50 then
				BeginEvent( sceneId ) 
					LuaFnDelAvailableItem(sceneId,selfId,20310115,5)--É¾³ýÎïÆ·
					TryRecieveItem( sceneId, selfId, 30502005, 1)--¸øÓèÎïÆ·
		                     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
					strText = "#GChúc m×ng, hþp thành H°n Bång Châu thành công."
					AddText( sceneId, strText )
				   EndEvent( sceneId )
               	          DispatchEventList( sceneId, selfId, targetId )
             else
		     BeginEvent(sceneId)
			       AddText(sceneId,"Hþp thành phäi mang theo #YTrân Thú Huy­n Hóa Ðan Toái Phiªn  #G50 cái #W. Hãy ki¬m tra ðü s¯ lßþng.")
	            EndEvent(sceneId)
	            DispatchEventList(sceneId,selfId,targetId)
	      end

	elseif GetNumText() == 30 then
	BeginEvent( sceneId )
		AddText( sceneId, "Sát tinh phø bän t±ng cµng có BOSS 12, có th¬ khiêu chiªn t×ng tên mµt." )
		AddText( sceneId, "Phø bän m²i ngày có th¬ tiªn vào ba lßþt." )	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 666 then
		local nearmembercount	= GetNearTeamCount( sceneId, selfId )
		x892009_MakeCopyScene( sceneId, selfId, nearmembercount )
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#gff00f0Chúc m?ng #gffff00"..nam.."#gff00f0 cùng t± ðµi tiªn vào Sinh TØ Lôi Ðài thành công. M÷i ngß¶i hãy cùng nhau ch¶ tin tÑc t¯t lành cüa h÷ nào...", 4 )
	end
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x892009_CheckAccept( sceneId, selfId, targetId )

	if LuaFnHasTeam(sceneId,selfId) ~= 1 then
		return 0, "Phø bän Th§p Nh¸ Sát Tinh c¥n có t¯i thi¬u 3 thành viên trong mµt ðµi. Nªu ngß½i cäm th¤y mµt mình mình ðã giöi, hãy tham gia Hoa S½n Lu§n Kiªm ði."
	end

	--ÊÇ²»ÊÇ¶Ó³¤....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		return 0, "Ngß½i không phäi ðµi trß·ng."
	end

	--ÈËÊýÊÇ·ñ¹»....
	if GetTeamSize(sceneId,selfId) < 1 then
		return 0, "Ðµi ngû không ðü 3 ngß¶i. Tiªn vào Sinh TØ Lôi Ðài chï có nß¾c nÕp mÕng cho chúng mà thôi!"
	end

	--ÊÇ·ñ¶¼ÔÚ¸½½ü....
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)
	if GetTeamSize(sceneId,selfId) ~= NearTeamSize then
		return 0, "Có thành viên không · g¥n ðây."
	end

	local Humanlist = {}
	local nHumanNum = 0
	for i=0, NearTeamSize-1 do
		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		if GetLevel( sceneId, PlayerId ) < 80 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end
	end

	if nHumanNum > 0 then

		local msg = "Ngß½i c¤p ðµ còn dß¾i 80"
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. ", "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " không th¬ tiªn vào."
		return 0, msg

	end

	--ÊÇ·ñÓÐÈË½ñÌì×ö¹ý3´ÎÁË....ÑÀÑÀ3.6ÐÞ¸Ä ·ÀÖ¹Ã»ÓÐ½øÈ¥µÄµ±¶Ó³¤²»¼ì²â
	nHumanNum = 0
	local CurDayTime = GetDayTime()
	for i=0, NearTeamSize-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		local lastTime = GetMissionData( sceneId, PlayerId, MD_CHUNJIE_BIANPAO_DAYTIME )
		local lastDayTime = floor( lastTime / 100 )
		local lastDayCount = mod( lastTime, 100 )
	
		if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
		end

		if lastDayCount >= 3 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end

	end

	if nHumanNum > 0 then

		local msg = "    "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. ", "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " trong ngày ðã khiêu chiªn quá 3 lßþt r°i."
		return 0, msg

	end

	return	1
end

--**********************************
--½ÓÊÜ
--**********************************
function x892009_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x892009_OnAbandon( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x892009_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mylevel = 120
	local iniLevel=120

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "shengsileitai.nav"); --µØÍ¼ÊÇ±ØÐëÑ¡È¡µÄ£¬¶øÇÒ±ØÐëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x892009_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x892009_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x892009_g_CopySceneType);--ÉèÖÃ¸±±¾Êý¾Ý£¬ÕâÀï½«0ºÅË÷ÒýµÄÊý¾ÝÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x892009_g_ScriptId);--½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBossµÄÊýÁ¿
	LuaFnSetCopySceneData_PvpRuler( sceneId, 9 )

	local x,z = GetWorldPos( sceneId, selfId )		

	LuaFnSetSceneLoad_Monster( sceneId, "shengsileitai_monster2.ini" )
	
    local CopyScene_LevelGap = 31
	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --¼¶±ð²î£¬CopyScene_LevelGap ÔÚ scene.lua ÖÐ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"Tiªn vào phø bän thành công!");
		else
			AddText(sceneId,"S¯ lßþng bän sao ðã quá täi, hãy ðþi mµt lúc.");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--¼ÌÐø
--**********************************
function x892009_OnContinue( sceneId, selfId, targetId )
	
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x892009_CheckSubmit( sceneId, selfId )
	
end

--**********************************
--Ìá½»
--**********************************
function x892009_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end
--**********************************
--¹ÖÎïËÀÍö
--**********************************
function x892009_OnDie(sceneId, objId, killerId)
    --PrintStr( "x892009_OnDie [objId]"..objId.." [killerId]"..killerId.."[sceneId]"..sceneId )
    local DataID = GetMonsterDataID( sceneId, objId )
    x892009_OnKillObject( sceneId, killerId, DataID, objId )
end
--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x892009_OnKillObject( sceneId, selfId, objdataId ,objId )
	local temp = random(2)
		if temp==1 then
			AddMonsterDropItem( sceneId, objId, selfId, 30900001 )
		end
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x892009_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x892009_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x892009_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);
	NewWorld( sceneId,leaderObjId, destsceneId, x892009_g_Fuben_X, x892009_g_Fuben_Z)
	local nearmembercount	= GetNearTeamCount( sceneId, leaderObjId )
	local member
	local misIndex
	for	i=0, nearmembercount-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then
		NewWorld( sceneId, member, destsceneId, x892009_g_Fuben_X, x892009_g_Fuben_Z )
		end
	end
end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x892009_OnPlayerEnter( sceneId, selfId )

--ÉèÖÃËÀÍöºó¸´»îµãÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x892009_g_Fuben_X, x892009_g_Fuben_Z );
	--SetUnitCampID(sceneId, selfId, selfId, 109)

	local lastTime = GetMissionData( sceneId, selfId, MD_CHUNJIE_BIANPAO_DAYTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_CHUNJIE_BIANPAO_DAYTIME, lastTime )

end

--**********************************
--ÓÐÍæ¼ÒÔÚ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x892009_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x892009_OnCopySceneTimer( sceneId, nowTime )
	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--È¡µÃÒÑ¾­Ö´ÐÐµÄ¶¨Ê±´ÎÊý
	TickCount = TickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 2, TickCount);--ÉèÖÃÐÂµÄ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý

	--¸±±¾¹Ø±Õ±êÖ¾
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;

	if leaveFlag == 1 then --ÐèÒªÀë¿ª

		--Àë¿ªµ¹¼ÆÊ±¼äµÄ¶ÁÈ¡ºÍÉèÖÃ
		leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 5) ;
		leaveTickCount = leaveTickCount+1 ;
		LuaFnSetCopySceneData_Param(sceneId, 5, leaveTickCount) ;

		if leaveTickCount == x892009_g_CloseTick then --µ¹¼ÆÊ±¼äµ½£¬´ó¼Ò¶¼³öÈ¥°É

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ

			--½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓÐÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòµÄ³¡¾°
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, x892009_g_Back_X, x892009_g_Back_Z )
			end

		elseif leaveTickCount<x892009_g_CloseTick then

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ

			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïµÄËùÓÐÈË£¬³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
	  			BeginEvent(sceneId)
	  				strText = format("Ngß½i còn %d giây ð¬ r¶i khöi phø bän.", (x892009_g_CloseTick-leaveTickCount)*x892009_g_TickTime )
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
			end
		end
	elseif TickCount == x892009_g_LimitTimeSuccess then
		--´Ë´¦ÉèÖÃÓÐÊ±¼äÏÞÖÆµÄÈÎÎñÍê³É´¦Àí
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)

  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi®m vø hoàn thành!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
			misIndex = GetMissionIndexByID(sceneId,mems[i],x892009_g_MissionId)--È¡µÃÈÎÎñÊý¾ÝË÷ÒýÖµ
			--½«ÈÎÎñµÄµÚ1ºÅÊý¾ÝÉèÖÃÎª1,±íÊ¾Íê³ÉµÄÈÎÎñ
			SetMissionByIndex(sceneId,mems[i],misIndex,x892009_g_Param_ok,1)--ÉèÖÃÈÎÎñÊý¾Ý
			--Íê³É¸±±¾ËùÓÃÊ±¼ä
			SetMissionByIndex(sceneId,mems[i],misIndex,x892009_g_Param_time,TickCount*x892009_g_TickTime)--ÉèÖÃÈÎÎñÊý¾Ý
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	elseif TickCount == x892009_g_LimitTotalHoldTime then --¸±±¾×ÜÊ±¼äÏÞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓÐÊ±¼äÏÞÖÆµÄÇé¿ö£¬µ±Ê±¼äµ½ºó´¦Àí...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x892009_g_MissionId );--ÈÎÎñÊ§°Ü,É¾³ýÖ®

  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi®m vø th¤t bÕi.");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	end
end
--**********************************
--½«Ä³Íæ¼Ò´«ËÍ³ö¸±±¾,»Øµ½½øÈëÊ±µÄÎ»ÖÃ
--**********************************
function x892009_KickOut( sceneId, objId )
    local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )	--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local x = 158 --½øÈëÊ±µÄ×ø±êX
	local z = 130 --½øÈëÊ±µÄ×ø±êZ
	
	if LuaFnIsObjValid( sceneId, objId ) == 1 then
	    NewWorld( sceneId, objId, oldsceneId, x, z )
	end
	
end
--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x892009_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x892009_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
-- ¼ì²â¿ª·ÅÊ±¼ä
--**********************************
function x892009_IsActivityOpen(sceneId)
	local nHour = GetHour();
	local nMinute = GetMinute();
	local nCurTempTime = nHour * 60 + nMinute;
	if nCurTempTime >= 20 * 60 and nCurTempTime < 21 * 60 + 20 then
		return 1;
	end
	return 0;
--	return 1
end
--**********************************
-- ¼ì²â¿ª·ÅÊ±¼ä2
--**********************************
function x892009_IsActivityOpen2(sceneId)
	local nHour = GetHour();
	local nMinute = GetMinute();
	local nCurTempTime = nHour * 60 + nMinute;
	if nCurTempTime >= 21 * 60 + 20 and nCurTempTime < 21 * 50 then
		return 1;
	end
	return 0;
--	return 1
end
--**********************************
-- ¸³Öµ
--**********************************
function x892009_ToMax( sceneId, selfId, killerId ,guildName,maxCount )
	PK_MAXCOUNTGUILD=guildName
	PK_MAXCOUNT=maxCount
end
--**********************************
-- È«ÇòÍ¨¸æ
--**********************************
function x892009_GlobalCountNews( sceneId, selfId, targetId,str )
	BeginEvent( sceneId )
        	AddGlobalCountNews( sceneId, str )
        EndEvent( sceneId )
        DispatchEventList( sceneId, selfId, targetId )
end
function x892009_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

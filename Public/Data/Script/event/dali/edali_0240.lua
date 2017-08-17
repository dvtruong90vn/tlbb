
--ÁìÈ¡½­ºþÖ¸ÄÏ
--MisDescBegin
--½Å±¾ºÅ
x210240_g_ScriptId = 210240
--MisDescEnd

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210240_OnDefaultEvent( sceneId, selfId, targetId )
   local WorldReferenceID = 30308021
   local bHave = HaveItem( sceneId, selfId, WorldReferenceID )
   
   if( bHave < 0 ) then
       bHave = HaveItemInBank( sceneId, selfId, WorldReferenceID )
   end
   
   if( 1 == bHave ) then
       --PrintStr( "Have" )
       BeginEvent( sceneId )
			    AddText( sceneId, "ChÆng phäi các hÕ ðã có cu¯n Giang H° chï nam r°i sao?" )
		   EndEvent( sceneId )
		   DispatchEventList( sceneId, selfId, targetId )
       
       return   
   end
      
   local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
   if( FreeSpace > 0 ) then
       --ÓÐÊ£Óà¿Õ¼ä,ÔòËÍ¸øÍæ¼ÒÒ»±¾½­ºþÖ¸ÄÏ
       	BeginAddItem(sceneId)
	          AddItem( sceneId, WorldReferenceID, 1 )
	      EndAddItem(sceneId,selfId)
	      AddItemListToHuman(sceneId,selfId)
	      
	      --¹Ø±Õ½çÃæ
				BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
				EndUICommand( sceneId )
				DispatchUICommand( sceneId, selfId, 1000 )
				
				--ÏÔÊ¾ÐÑÄ¿ÌáÊ¾
			  BeginEvent(sceneId)
			      strText = "Các hÕ ðã có ðßþc cu¯n Giang H° Chï Nam"
			  AddText(sceneId,strText)
 		    EndEvent(sceneId)
 		    DispatchMissionTips(sceneId,selfId)
 		  
   else
       BeginEvent( sceneId )
			    AddText( sceneId, "Tay näi cüa các hÕ ðã ð¥y, hãy ð¬ ra ch² tr¯ng r°i quay lÕi, tìm tÕi hÕ" )			
		   EndEvent( sceneId )
		   DispatchEventList( sceneId, selfId, targetId )
   end
   
end


--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210240_OnEnumerate( sceneId, selfId, targetId )
    AddNumText( sceneId, x210240_g_ScriptId, "Lînh cu¯n Giang H° Chï Nam", 11, 100 )
end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x210240_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x210240_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x210240_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x210240_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x210240_CheckSubmit( sceneId, selfId )

end


--**********************************
--Ìá½»
--**********************************
function x210240_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210240_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210240_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210240_OnItemChanged( sceneId, selfId, itemdataId )
end








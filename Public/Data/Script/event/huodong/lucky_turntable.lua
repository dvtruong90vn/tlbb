--»î¶¯¡ª¡ª
--Ê¥µ®½ÚÔªµ©»î¶¯-ÊÕ¼¯ÃÅÅÉµÀ¾ß»»½±Àø

--½Å±¾ºÅ
x808071_g_ScriptId = 808071

x808071_g_UICommand = 1999986

x808071_g_BufferId = 8057

--2009.08.12~2009.09.16ÆÚ¼ä,²Î¼ÓĞÒÔË¿ì»îÈı»î¶¯ ğÕt ğßşctoÕ ğµ Kinh nghi®mÌá¸ßµ½ÏÖTÕi toÕ ğµ 300%
--czf, 2009.07.30

x808071_g_BeginTime	= 20090812
x808071_g_EndTime	= 20090916

x808071_g_GetXingYunDataParameter = {
	                 1,              --Ğúng·ñÓĞ×Ê¸ñ²Î¼Ó³é½±
	                 2,              --Ğúng·ñÓĞ×Ê¸ñ²Î¼Ó·ÉÁú³é½± 
	                 3,              --·ÉÁú½±Àø
	                 4,              --½±Àø1
	                 5,              --½±Àø2
	                 6,              --½±Àø3
}

x808071_g_DragonItem = {
	                 20310103,              --´ó·ç×¦
	                 20310104,              --´ó·çÒí 
	                 20310105,              --´ó·çÑÀ
}

--½±ÀøKinh nghi®m±í
x808071_g_Exp = {

	[20]=1274,[21]=1354,[22]=1434,[23]=1514,[24]=1594,
	[25]=1674,[26]=1754,[27]=1834,[28]=1914,[29]=1994,
	[30]=2074,[31]=2154,[32]=2234,[33]=2314,[34]=2394,
	[35]=2474,[36]=2554,[37]=2634,[38]=2714,[39]=2794,
	[40]=2874,[41]=2954,[42]=3034,[43]=3114,[44]=3194,
	[45]=3274,[46]=3354,[47]=3434,[48]=3514,[49]=3594,
	[50]=3674,[51]=3754,[52]=3834,[53]=3914,[54]=3994,
	[55]=4074,[56]=4154,[57]=4234,[58]=4314,[59]=4394,
	[60]=4474,[61]=4554,[62]=4634,[63]=4714,[64]=4794,
	[65]=4874,[66]=4954,[67]=5034,[68]=5114,[69]=5194,
	[70]=5274,[71]=5354,[72]=5434,[73]=5514,[74]=5594,
	[75]=5674,[76]=5754,[77]=5834,[78]=5914,[79]=5994,
	[80]=6074,[81]=6154,[82]=6234,[83]=6314,[84]=6394,
	[85]=6474,[86]=6554,[87]=6634,[88]=6714,[89]=6794,
	[90]=6874,[91]=6954,[92]=7034,[93]=7114,[94]=7194,
	[95]=7274,[96]=7354,[97]=7434,[98]=7514,[99]=7594,
	[100]=7674,[101]=7754,[102]=7834,[103]=7914,[104]=7994,
	[105]=8074,[106]=8154,[107]=8234,[108]=8314,[109]=8394,
	[110]=8474,[111]=8554,[112]=8634,[113]=8714,[114]=8794,
	[115]=8874,[116]=8954,[117]=9034,[118]=9114,[119]=9194,
	[120]=9274,[121]=9354,[122]=9434,[123]=9514,[124]=9594,
	[125]=9674,[126]=9754,[127]=9834,[128]=9914,[129]=9994,
	[130]=10074,[131]=10154,[132]=10234,[133]=10314,[134]=10394,
	[135]=10474,[136]=10554,[137]=10634,[138]=10714,[139]=10794,
	[140]=10874,[141]=10954,[142]=11034,[143]=11114,[144]=11194,
	[145]=11274,[146]=11354,[147]=11434,[148]=11514,[149]=11594,
	[150]=11674,

}
			

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x808071_OnDefaultEvent( sceneId, selfId, targetId )

	local NumText = GetNumText()

	if NumText == 111 then  --²Î¼Ó³é½±
	   x808071_JoinCampaign( sceneId, selfId, targetId )
	elseif NumText == 112 then  --Áì½±
	   x808071_CheckTime( sceneId, selfId )

	   if(x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[1]) ~= 3
	      or (x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[4]) == 0
	      and x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[5]) == 0
	      and x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[6]) == 0)) then
	    
	    BeginEvent(sceneId)
			  AddText( sceneId, "#{XYLP_20071222_02}" )
		  EndEvent(sceneId)
		  DispatchEventList(sceneId,selfId,targetId)
	    return
	   end
	   x808071_GivePlayerPrize( sceneId, selfId, targetId)
--	  BeginEvent(sceneId)
--	    local getgiftcount = x808071_GetGiftCount(sceneId, selfId) + 1
--	    local str
--	    if getgiftcount > 6 then
--	       str = "Äú½ñÌìtoÕ ğµ ¶mµt »»ú»áÒÑ¾­È«²¿Ê¹ÓÃÍêÁË,ÇëÄúÃ÷ÌìÔÙÀ´.(½ÚÈÕÆÚ¼äÃ¿ÈÕÓĞ6´Î¶mµt »»ú»á)"
--	    else
--	       str = format("ÄúXác nh§nÊ¹ÓÃ9´óÃÅÅÉtoÕ ğµ ½ÚÈÕºØÌû½øĞĞ½ñÈÕµÚ%d´Î¶mµt »Âğ?(½ÚÈÕÆÚ¼äÃ¿ÈÕÓĞ6´Î¶mµt »»ú»á.)", getgiftcount);
--			end
--			AddText(sceneId, str);
--			AddNumText(sceneId, x808071_g_ScriptId,"Xác nh§n", 8, 113);
--			AddNumText(sceneId, x808071_g_ScriptId,"HuÖ bö", 8, 114);
--		EndEvent(sceneId)
--		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 113 then
	  BeginEvent(sceneId)
		  AddText(sceneId,"#{XYLP_20071222_20}")
		  --x808071_SetXingYunData(sceneId,selfId,0,0,0,0,0,0)
	  EndEvent(sceneId)
	  DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 114 then
		if(x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[2]) == 0) then
			return
		end
	  --¼ì²âĞúng·ñ³é¹ı½±
	  if(x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[2]) == 2) then
	    return
	  end
	  local DragonOdds = random(1,150)
  
	  BeginEvent( sceneId )
	  if(DragonOdds == 150) then  --³éÖĞ·ÉÁú
	     local PlayerName = GetName(sceneId,selfId)
	     AddText( sceneId, "#{XYLP_20071222_16}" )
	     --¹öÆÁ¹«¸æ
	     local msg = format("@*;SrvMsg;SCA:#{XYLP_20071222_17}#{_INFOUSR%s}#{XYLP_20071222_18}",PlayerName)
		   AddGlobalCountNews( sceneId, msg )
		   --¸øÓë·ÉÁú²¢ÉèÖÃÎŞ·¨ÔÙ´Î³éÈ¡
		   x808071_SetXingYunData(sceneId,selfId,-1,2,1,-1,-1,-1)
		   --³éÈ¡·ÉÁúÍ³¼ÆÈÕÖ¾
		   LuaFnAuditLuckyTurnTableDragon(sceneId, selfId, 6, 0);
	  else
	     AddText( sceneId, "#{XYLP_20071222_15}" )
	     --¹Ø±Õ·ÉÁú°´Å¥
		   x808071_SetXingYunData(sceneId,selfId,-1,0,-1,-1,-1,-1)
	  end
		EndEvent( sceneId )
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 115 then  --Lînh ·ÉÁú
	  --Ã»ÓĞ½±Àø¿ÉÒÔLînh 
	  if(x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[3]) ~= 1) then
	    BeginEvent(sceneId)
			  AddText( sceneId, "#{XYLP_20071222_19}" )
		  EndEvent(sceneId)
		  DispatchEventList(sceneId,selfId,targetId)
	    return
	  end
	  --¼ì²â±³°üĞúng·ñÓĞµØ·½....
	  if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		  BeginEvent(sceneId)
			  AddText( sceneId, "Lieu Nguyet Hong 1" )
		  EndEvent(sceneId)
		  DispatchMissionTips(sceneId,selfId)
		  return
	  end
	  x808071_GetItem(sceneId,selfId,7,targetId)  --·ÉÁú
		--¹Ø±Õ³é·ÉÁúÑ¡Ïî,²¢Çå¿Õ·ÉÁú
	  x808071_SetXingYunData(sceneId,selfId,-1,0,0,-1,-1,-1)
  elseif NumText == 116 then  --Ğ±i phi long
    x808071_SwitchDragon( sceneId, selfId,targetId)  
	end
	
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x808071_OnEnumerate( sceneId, selfId, targetId )
	AddNumText(sceneId, x808071_g_ScriptId, "ThØ tài v§n may", 6, 111 )
	AddNumText(sceneId, x808071_g_ScriptId, "Nh§n lînh ph¥n thß·ng Khoái hoÕt tam", 6, 112 )
	AddNumText(sceneId, x808071_g_ScriptId, "Gi¾i thi®u ph¥n thß·ng rút thåm Khoái hoÕt tam", 11, 113 )

	if(x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[2]) ~= 0) then
	    AddNumText(sceneId, x808071_g_ScriptId,"Lieu Nguyet Hong 2", 6, 114);
  		AddNumText(sceneId, x808071_g_ScriptId,"Lieu Nguyet Hong 3", 6, 115);
	end
	
	AddNumText(sceneId, x808071_g_ScriptId, "Ğ±i phi long", 6, 116 )
end

--**********************************
--²Î¼Ó»î¶¯
--**********************************
function x808071_JoinCampaign( sceneId, selfId, targetId )

  --Èç¹ûÍæ¼ÒµÈc¤pĞ¡ÓÚ20²»ÄÜ²Î¼Ó³é½±
	if	GetLevel( sceneId, selfId) < 20 then
		BeginEvent(sceneId)
			AddText( sceneId, "Lieu Nguyet Hong 4" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	--Èç¹ûÍæ¼Ò½ñÌì²Î¼Ó¹ı³é½±
	x808071_CheckTime(sceneId, selfId)
	local join = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[1] )
	if(join ~= 0) then
	  BeginEvent(sceneId)
			AddText( sceneId, "Hôm nay các hÕ ğã tham gia sñ ki®n rút thåm ThØ Tài V§n May r°i! Xin ğşi ğªn ngày mai hãy ğªn ğây tham gia nhé!" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	--Èç¹ûÍæ¼ÒÓĞ¡°ĞÒÔË¿ì»îÈı¡±toÕ ğµ BUFF
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x808071_g_BufferId ) == 1 then
	   BeginEvent(sceneId)
			 AddText( sceneId, "#{XYLP_20071222_08}" )
		 EndEvent(sceneId)
		 DispatchEventList(sceneId,selfId,targetId)
		 return
	end
	--·ûºÏÌõ¼ş·¢ËÍĞÅÏ¢¿Í»§¶Ë´ò¿ªĞÒÔËÂÖÅÌ³é½±½çÃæ
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 19999 )

end

--**********************************
-- ğÕt ğßşcCái này Íæ¼Ò¹ØÓÚĞÒÔË³é½±toÕ ğµ Êı¾İ
--**********************************
function x808071_GetXingYunData( sceneId, selfId,index )
	local temp = 0
	local XingYunData = GetMissionData(sceneId,selfId,MD_XINGYUN_DATA)

	local IsJoin = floor(XingYunData/100000)    --0 Ã»²Î¼Ó¹ı 1²Î¼Ó¹ı

	temp = mod(XingYunData,100000)
	local JoinDragon = floor(temp/10000)        --0 ²»¿ÉÒÔ²Î¼Ó 1 ¿ÉÒÔ²Î¼Ó

	temp = mod(XingYunData,10000)
	local DragonPrize = floor(temp/1000)        --0 Ã»ÓĞ·ÉÁú½±Àø 1 ÓĞ·ÉÁú½±Àø

	temp = mod(XingYunData,1000)

	local Prize1 = floor(temp/100)        -- ½±Àø1toÕ ğµ ½±ÀøÀàĞÍ

	temp = mod(XingYunData,100)
	local Prize2 = floor(temp/10)        -- ½±Àø2toÕ ğµ ½±ÀøÀàĞÍ

	local Prize3 = mod(XingYunData,10)       -- ½±Àø3toÕ ğµ ½±ÀøÀàĞÍ

	if(x808071_g_GetXingYunDataParameter[1] == index) then
	  return IsJoin
	elseif(x808071_g_GetXingYunDataParameter[2] == index) then
	  return JoinDragon
	elseif(x808071_g_GetXingYunDataParameter[3] == index) then
	  return DragonPrize
	elseif(x808071_g_GetXingYunDataParameter[4] == index) then
	  return Prize1
	elseif(x808071_g_GetXingYunDataParameter[5] == index) then
	  return Prize2
	elseif(x808071_g_GetXingYunDataParameter[6] == index) then
	  return Prize3
	else 
	  return -1
	end

end
--**********************************
--´æ´¢Cái này Íæ¼Ò¹ØÓÚĞÒÔË³é½±toÕ ğµ Êı¾İ
--**********************************
function x808071_SetXingYunData(sceneId,selfId,IJoin,JDragon,DPrize,P1,P2,P3)

	local IsJoin,JoinDragon,DragonPrize,Prize1,Prize1,Prize1 = -1
	if(IJoin == -1) then
	  IsJoin = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[1] )*100000
	else
	  IsJoin = IJoin*100000    --0 Ã»²Î¼Ó¹ı 1²Î¼Ó¹ı
	end

	if(JDragon == -1) then
	  JoinDragon = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[2] )*10000
	else
	  JoinDragon = JDragon*10000        --0 ²»¿ÉÒÔ²Î¼Ó 1 ¿ÉÒÔ²Î¼Ó
	end

  if(DPrize == -1) then
	  DragonPrize = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[3] )*1000
	else
	  DragonPrize = DPrize*1000        --0 Ã»ÓĞ·ÉÁú½±Àø 1 ÓĞ·ÉÁú½±Àø
	end

	if(P1 == -1) then
	  Prize1 = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[4] )*100
	else
	  Prize1 = P1*100        -- ½±Àø1toÕ ğµ ½±ÀøÀàĞÍ
	end

	if(P2 == -1) then
	  Prize2 = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[5] )*10
	else
	  Prize2 = P2*10        -- ½±Àø2toÕ ğµ ½±ÀøÀàĞÍ
	end

	if(P3 == -1) then
	  Prize3 = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[6] )
	else
	  Prize3 = P3       -- ½±Àø3toÕ ğµ ½±ÀøÀàĞÍ
	end

	local val = IsJoin+JoinDragon+DragonPrize+Prize1+Prize2+Prize3
	SetMissionData( sceneId, selfId, MD_XINGYUN_DATA, val )

end
--**********************************
--ÊÕµ½¿Í»§¶Ë·¢ËÍ¹ıÀ´toÕ ğµ Ñ¡Ôñ½øĞĞ´¦Àí(Õ¼²·)
--**********************************
function x808071_OnAugury( sceneId, selfId, pos_ui )

   local IsJoin = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[1] )
   local JoinDragon,DragonPrize = 0,0

   local prizetype_1,prizetype_2,prizetype_3 = 0,0,0

   if(IsJoin == 0) then       --Èç¹ûÃ»³é¹ı½±,ÄÇÃ´µÚmµt ´Î³é½±

     prizetype_1 = x808071_OnPrize();
   
     prizetype_2 = x808071_OnPrize();
     while(prizetype_2 == 5) do --³¬c¤p´ó½±toÕ ğµ ¼¸ÂÊ±ØĞë±£Ö¤TÕi 10%
        prizetype_2 = x808071_OnPrize();
     end
     
     prizetype_3 = x808071_OnPrize();
     while(prizetype_3 == 5) do --³¬c¤p´ó½±toÕ ğµ ¼¸ÂÊ±ØĞë±£Ö¤TÕi 10%
        prizetype_3 = x808071_OnPrize();
     end
     --Èç¹ûÍæ¼ÒÊ²Ã´½±Àø¶¼Ã»ÓĞ,¾ÍÒª¸ømµt cáiĞ¡Kinh nghi®m½±Àø
     if(prizetype_1 == 4 and prizetype_2 == 4 and prizetype_3 == 4) then
        local index = random(1,3)
        if(index == 1) then
          prizetype_1 = 2
        elseif(index == 2) then
          prizetype_2 = 2
        elseif(index == 3) then
          prizetype_3 = 2
        end
     end
     
--     if(prizetype_1 == 5) then--³éÖĞ³¬c¤p´ó½±
--       JoinDragon = 0-- ¼´Ê¹³éÖĞ³¬c¤p´ó½±ÔİÊ±Ò²²»C¥n ÏÔÊ¾,µ«Ğúng¿ÉÒÔ¼ÌĞø³é·ÉÁú
--       local DragonOdds= random(1,150)
--       if(DragonOdds == 150) then --³éÖĞ·ÉÁú
--         DragonPrize = 1
--       else
--         DragonPrize = 0
--       end
--     else
--       JoinDragon = 0
--       DragonPrize = 0       
--     end
     --´æ´¢³é½±½á¹û
     x808071_SetXingYunData(sceneId,selfId,1,JoinDragon,DragonPrize,prizetype_1,prizetype_2,prizetype_3)
     --x808071_SetXingYunData(sceneId,selfId,1,0,0,5,3,3)
     --ĞÒÔËÂÖÅÌÖĞ½±Í³¼ÆÈÕÖ¾
     LuaFnAuditLuckyTurnTable(sceneId, selfId, prizetype_1, prizetype_2, prizetype_3);
     --¸øÓèÍæ¼Ò¡°ĞÒÔË¿ì»îÈı¡±toÕ ğµ BUFF
     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x808071_g_BufferId, 0)
     --·¢ËÍmµt cái½á¹û¸ø¿Í»§¶Ë
     BeginUICommand(sceneId)
       UICommand_AddInt(sceneId,1)--µÚmµt ÕÅÅÆ
		   UICommand_AddInt(sceneId,prizetype_1)
	   EndUICommand(sceneId)
	   DispatchUICommand(sceneId,selfId, x808071_g_UICommand)

   elseif(IsJoin == 1) then       --Èç¹û³é¹ıµÚmµt ´Î½±,ÄÇÃ´²»ÔÙ³é½±,Ö»°ÑÏÂµÚ2´Î½á¹û·¢ËÍ¹ıÈ¥

     prizetype_2 = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[5] )
     --·¢ËÍµÚ¶şcái½á¹û¸ø¿Í»§¶Ë
     BeginUICommand(sceneId)
       UICommand_AddInt(sceneId,2)--µÚ¶şÕÅÅÆ
		   UICommand_AddInt(sceneId,prizetype_2)
	   EndUICommand(sceneId)
	   DispatchUICommand(sceneId,selfId, x808071_g_UICommand)
	   --¼ÇÂ¼µÚ¶ş´ÎÒÑ¾­·¢ËÍ
	   x808071_SetXingYunData(sceneId,selfId,2,-1,-1,-1,-1,-1)

   elseif(IsJoin == 2) then       --Èç¹û³é¹ıµÚ¶ş´Î½±,ÄÇÃ´²»ÔÙ³é½±,Ö»°ÑÏÂµÚ3´Î½á¹û·¢ËÍ¹ıÈ¥

     prizetype_3 = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[6] )
     --·¢ËÍµÚÈıcái½á¹û¸ø¿Í»§¶Ë
     BeginUICommand(sceneId)
       UICommand_AddInt(sceneId,3)--µÚÈıÕÅÅÆ
		   UICommand_AddInt(sceneId,prizetype_3)
	   EndUICommand(sceneId)
	   DispatchUICommand(sceneId,selfId, x808071_g_UICommand)
	   --¼ÇÂ¼µÚÈı´ÎÒÑ¾­·¢ËÍ
	   x808071_SetXingYunData(sceneId,selfId,3,-1,-1,-1,-1,-1)
   end   
   
end

--**********************************
--Ëæ»ú³é½±
--**********************************
function x808071_OnPrize()
   local odds = random(1,100000)
   local prizetype = 0
   if( odds >= 1 and odds <= 1000 ) then       --1000 ´óKinh nghi®m
	    prizetype = 1
	 elseif( odds >= 1001 and odds <= 66540 ) then          --65540  Ğ¡Kinh nghi®m
	    prizetype = 2
	 elseif( odds >= 66541 and odds <= 66990 ) then          --450    µÀ¾ß
	    prizetype = 3
	 elseif( odds >= 66991 and odds <= 99990 ) then          --33000   ¿ÕÆø
	    prizetype = 4
	 elseif( odds >= 99991 and odds <= 100000 ) then          --10   ¿ì»îÈı
	    prizetype = 5
	 end
	 return prizetype
end

--**********************************
--¼ì²âÊ±¼ä
--**********************************
function x808071_CheckTime( sceneId, selfId )
	  
	local td = GetDayTime()
	local LastXingYunTime = GetMissionData(sceneId,selfId,MD_XINGYUN_TIME_INFO)

	if td > LastXingYunTime then
	    --Çå¿Õ³é½±½á¹û
      x808071_SetXingYunData(sceneId,selfId,0,0,0,0,0,0)
	    --SetMissionData( sceneId, selfId, MD_XINGYUN_TIME_INFO, td )
	end

end

--**********************************
--ÁìÈ¥ÆÕÍ¨½±Àø
--**********************************
function x808071_GivePlayerPrize( sceneId, selfId, targetId)

	  local PrizeType = {}	

	  PrizeType[1] = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[4] )
	  PrizeType[2] = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[5] )
	  PrizeType[3] = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[6] )
	  
	  --¼ÆË giâyùĞètoÕ ğµ ¿Õ¼ä
	  local needspace = 0
	  for i = 1,3 do
	    if(PrizeType[i] == 3 or PrizeType[i] ==5) then
	      needspace = needspace + 1
	    end
	  end
	  
	  --¼ì²â±³°üĞúng·ñÓĞµØ·½....
	  if LuaFnGetPropertyBagSpace( sceneId, selfId ) < needspace then
		  BeginEvent(sceneId)
			  AddText( sceneId, "Lieu Nguyet Hong 6" )
		  EndEvent(sceneId)
		  DispatchMissionTips(sceneId,selfId)
		  return
	  end
	 
	  --Ãæ°å¶Ô»°½±ÀøÌáÊ¾
	  BeginEvent(sceneId)
			 AddText( sceneId, "#{XYLP_20071222_03}" )

	  --¸øÓèÍæ¼Ò½±Àø
	  for i = 1,3 do
	    if(PrizeType[i] == 1) then
	      AddText( sceneId, x808071_GetExp(sceneId,selfId,1))  --´óKinh nghi®m	     
	    elseif(PrizeType[i] == 2) then
	      AddText( sceneId, x808071_GetExp(sceneId,selfId,2))--Ğ¡Kinh nghi®m
	    elseif(PrizeType[i] == 3) then
	      AddText( sceneId, x808071_GetItem(sceneId,selfId,3,targetId))--ÆÕÍ¨µÀ¾ß
	      --elseif(PrizeType[i] == 4) then  --¿ÕÆø Ã»ÓĞ½±Àø
	    elseif(PrizeType[i] == 5) then
	      x808071_GetItem(sceneId,selfId,5,targetId)
	      AddText( sceneId, "#GLieu Nguyet Hong 7")--¿ì»îÈı ³¬c¤pµÀ¾ß ²Å×Ó¼ÑÈË
	    end	  
	  end

	  EndEvent(sceneId)
	  DispatchEventList(sceneId,selfId,targetId)
	  	  
	  --Çå¿ÕÈıcái½±ÀøÊı¾İ
	  x808071_SetXingYunData(sceneId,selfId,-1,-1,-1,0,0,0)
end

--**********************************
-- ği¬mµ½Kinh nghi®m type´ú±íKinh nghi®mÀàĞÍ
--**********************************
-- 2009.08.12~2009.09.16ÆÚ¼ä,²Î¼ÓĞÒÔË¿ì»îÈı»î¶¯ ğÕt ğßşctoÕ ğµ Kinh nghi®mÌá¸ßµ½ÏÖTÕi toÕ ğµ 300%
-- czf, 2009.07.30

--Ğúng·ñ¹æ¶¨toÕ ğµ Ê±¼ä(2009.08.12~2009.09.16)
function x808071_IsInSpecialTime( )	

	local curDate = GetTime2Day( )
	--Èç¹ûĞúng»î¶¯Ê±¼äÔòTr· v«½ñÌìÈÕÆÚ
	if curDate >= x808071_g_BeginTime and curDate <= x808071_g_EndTime then
		return curDate
	end
	--·ñÔòTr· v«0
	return 0
	
end

function x808071_GetExp( sceneId, selfId, type, targetId )

   local str = ""
   local playerLevel = GetLevel(sceneId, selfId)
   local exp = x808071_g_Exp[playerLevel]
   if(type == 1) then--´óKinh nghi®m
     exp = exp * 5
   end
   -- ¼ì²âĞúng·ñTÕi 2009.08.12~2009.09.16ÆÚ¼ä, czf, 2009.07.30
   local curDate = x808071_IsInSpecialTime()
   if curDate ~= 0 then 
   		exp = exp * 3
   end
   AddExp( sceneId,selfId,exp)
   
   str = format( "#GKinh nghi®m: %d", exp )
   
   return str
--   BeginEvent( sceneId )
--	 AddText( sceneId, str )
--	 EndEvent( sceneId )
--	 DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
-- ği¬mµ½ÎïÆ·
--**********************************
function x808071_GetItem( sceneId, selfId, type, targetId )
  local ItemId = 0
  local str = ""
  
  if(type == 3) then
    ItemId = x808071_RandomItem()
    str = format( "#GĞÕo cø: #{_ITEM%d}", ItemId )
  elseif(type == 5) then
    ItemId = 10124048  -- ²Å×Ó¼ÑÈË
    --str = format( "µÀ¾ß: #{_ITEM%d}", ItemId )
  elseif(type == 7) then
    ItemId = 10141084  -- ·ÉÁú
    str = format( "Lieu Nguyet Hong 9 #G#{_ITEM%d}", ItemId )
  end
  
  local BagIndex = TryRecieveItem( sceneId, selfId, ItemId, QUALITY_MUST_BE_CHANGE )
  
  --´ó·çÏµÁĞÎïÆ·ºÍmµt c¤pÊŞÀ¸²»°ó¶¨
  if(ItemId ~= x808071_g_DragonItem[1] and ItemId ~= x808071_g_DragonItem[2] 
  and ItemId ~= x808071_g_DragonItem[3] and ItemId ~=30509500) then
  --°ó¶¨ÎïÆ·½±Àø
  	local	bindidx	=	LuaFnItemBind(sceneId, selfId,BagIndex)
		if bindidx ~= 1 then
		  	local bindmsg = "Lieu Nguyet Hong 10"													
		  	BeginEvent( sceneId )
		    	AddText( sceneId, bindmsg )
		  	EndEvent( sceneId )
		  	DispatchMissionTips( sceneId, selfId )
		end
	end
	
	-- ğÕt ğßşcÎïÆ·ĞÅÏ¢
	local ItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
	  
	if BagIndex ~= -1 then

	  if(type == 5) then
	    --·¢ËÍH® th¯ng¹«¸æ
      local PlayerName = GetName(sceneId,selfId)
	    str = format( "#{XYLP_20071222_11}#{_INFOUSR%s}#{XYLP_20071222_12}#{_INFOMSG%s}#{XYLP_20071222_13}·ÉÁú×øÆï#{XYLP_20071222_14}", PlayerName,ItemInfo )
	    BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	    --M· ra ³é·ÉÁúÑ¡Ïî
	    x808071_SetXingYunData(sceneId,selfId,-1,1,-1,-1,-1,-1)
	    --ÂíÉÏ¼ÓÉÏ°´Å¥,µ«ĞúngÎÒÈÏÎª²»ºÃ,ËùÒÔ×¢Ïúµô
--	    BeginEvent(sceneId)
--	    AddText(sceneId,"  ´ÓÏÖTÕi b¡t ğ¥u,ÄãÖ»ĞíÌÛÎÒmµt cái,Òª³èÎÒ,²»ĞíÆ­ÎÒ,´ğÓ¦ÎÒtoÕ ğµ Ã¿mµt ¼şÊÂÇé¶¼Òª×öµ½.")
--	    AddNumText(sceneId, x808071_g_ScriptId, "ĞÒÔË¿ì»îÈı", 6, 111 )
--	    AddNumText(sceneId, x808071_g_ScriptId, "Lînh ĞÒÔË¿ì»îÈı½±Àø", 6, 112 )
--	    AddNumText(sceneId, x808071_g_ScriptId, "ĞÒÔË¿ì»îÈı³é½±Ë ği¬m÷", 6, 113 )
--	    AddNumText(sceneId, x808071_g_ScriptId,"¿ì»îÈı: ·ÉÁú!", 6, 114);
--  		AddNumText(sceneId, x808071_g_ScriptId,"Lînh ·ÉÁú", 6, 115);
--	    EndEvent(sceneId)
--	    DispatchEventList(sceneId,selfId,targetId)      
	  elseif (type == 3) then-- Ãæ°å¶Ô»°
	    local PlayerName = GetName(sceneId,selfId)
	    local info = format( "#{XYLP_20080104_01}#{_INFOUSR%s}#{XYLP_20080104_02}#{_INFOMSG%s}#{XYLP_20080104_03}", PlayerName,ItemInfo )
	    BroadMsgByChatPipe( sceneId, selfId, info, 4 )
	    return str
		elseif (type == 7) then
		  BeginEvent( sceneId )
			  AddText( sceneId, str )
		    EndEvent( sceneId )
		  DispatchEventList(sceneId,selfId,targetId)
		  --·¢ËÍH® th¯ng¹«¸æ
		  local PlayerName = GetName(sceneId,selfId)
	    str = format( "#{XYLP_20071222_21}#{_INFOUSR%s}#{XYLP_20071222_22}#{_INFOMSG%s}#{XYLP_20071222_23}", PlayerName,ItemInfo )
	    BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	  end
		
	end
end

--**********************************
--Ëæ»ú ğÕt ğßşcÎïÆ·
--**********************************
function x808071_RandomItem( )
  local ItemId = 0
  local randomval = random(1,50000)

  if( randomval >= 1 and randomval <= 900 ) then       --Chiêu bài: Ğao kiªm tranh phong 9
	    ItemId = 30008022
	 elseif( randomval >= 901 and randomval <= 1800 ) then          --Chiêu bài: Thiªt giáp ğ°ng bích 9
	    ItemId = 30008023
	 elseif( randomval >= 1801 and randomval <= 2700 ) then          --Chiêu bài: Trân c¥m d¸ thú  9
	    ItemId = 30008024
	 elseif( randomval >= 2701 and randomval <= 4685 ) then          --Âí°°  19.85
	    ItemId = 30008006
	 elseif( randomval >= 4686 and randomval <= 6185 ) then          --ÇåĞÄµ¤	15
	    ItemId = 30008018
	 elseif( randomval >= 6186 and randomval <= 7185 ) then          --¸ÉÀ¤±­	10
	    ItemId = 30008033
	 elseif( randomval >= 7186 and randomval <= 8185 ) then          --Ğ¡Linhµ¤	10
	    ItemId = 30008016
	 elseif( randomval >= 8186 and randomval <= 9685 ) then          --Ììî¸Ç¿»¯Tinh»ª	15
	    ItemId = 30900006
	 elseif( randomval >= 9686 and randomval <= 9985 ) then          --mµt c¤pÊŞÀ¸	3
	    ItemId = 30509500
	 elseif( randomval >= 9986 and randomval <= 9990 ) then          --´ó·ç×¦	0.05
	    ItemId = x808071_g_DragonItem[1]
	 elseif( randomval >= 9991 and randomval <= 9995 ) then          --´ó·çÒí	0.05
	    ItemId = x808071_g_DragonItem[2]
	 elseif( randomval >= 9996 and randomval <= 10000 ) then          --´ó·çÑÀ	0.05
	    ItemId = x808071_g_DragonItem[3]
	 elseif( randomval >= 10001 and randomval <= 50000 ) then         --¸ßc¤p»¹Í¯ÌìÊé dun.liu
	    ItemId = 30503019
	 end
	 return ItemId

end

--**********************************
--¸øÓèÍæ¼ÒÌáÊ¾
--**********************************
function x808071_PlayerTip( sceneId, selfId, tip )
	
			if tip ~= 1 then
				local td = GetDayTime()
		    SetMissionData( sceneId, selfId, MD_XINGYUN_TIME_INFO, td )
	    end
      
      BeginEvent(sceneId)
      if(tip == 1) then
        AddText( sceneId, "Li­u Nguy®t H°ng: Ph¥n thß·ng cüa các hÕ vçn chßa rút hªt." )
      else
        AddText( sceneId, "Li­u Nguy®t H°ng: Chúc m×ng các hÕ! HoÕt ğµng b¯c thåm cüa các hÕ hôm nay ğã hoàn thành, xin hãy tìm ta nh§n lînh ph¥n thß·ng." )
      end      
			  
		  EndEvent(sceneId)
		  DispatchEventList(sceneId,selfId,-1)
end

--**********************************
--Ğ±i phi long
--**********************************
function x808071_SwitchDragon( sceneId, selfId,targetId)
      
      local ZhuaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x808071_g_DragonItem[1])   --´ó·ç×¦
      local YiCount = LuaFnGetAvailableItemCount(sceneId, selfId, x808071_g_DragonItem[2])  --´ó·çÒí
      local YaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x808071_g_DragonItem[3])   --´ó·çÑÀ
      
      local result = 1
      if ZhuaCount < 2 then
    			result = 0
  		elseif YiCount < 2 then
    			result = 0
  		elseif YaCount < 2 then
    			result = 0
    	end
    	
    	if result == 0 then
				BeginEvent(sceneId)
					AddText( sceneId, "Nªu thu th§p ğü 2 ĞÕi Phong Nha, 2 ĞÕi Phong Dñc và 2 ĞÕi Phong Träo, ta có th¬ giúp các hÕ chiêu g÷i Phi Long: ĞÕi Phong. Th§t ğáng tiªc, các hÕ hi®n gi¶ vçn chßa thu th§p ğü ğÕo cø, ta không th¬ giúp gì." )
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
			
			--¼ì²â±³°üĞúng·ñÓĞµØ·½....
	  	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		  	BeginEvent(sceneId)
			  	AddText( sceneId, "Lieu Nguyet Hong 14" )
		  	EndEvent(sceneId)
		  	DispatchMissionTips(sceneId,selfId)
		 	 return
	  	end
	  	
	  	--Ğúng·ñÉ¾³ıth¤t bÕi....
			for i, v in x808071_g_DragonItem do
	  		if LuaFnDelAvailableItem(sceneId, selfId, v, 2) == 0 then
			 		BeginEvent(sceneId)
			 			AddText( sceneId, "Lieu Nguyet Hong 15" )
		   		EndEvent(sceneId)
		   		DispatchMissionTips( sceneId, selfId )
		   		return
		 		end
	 		end
	 		
	 		--¸øÓè·ÉÁú
	 		local BagIndex = TryRecieveItem( sceneId, selfId, 10141084, QUALITY_MUST_BE_CHANGE )
  		--°ó¶¨ÎïÆ·½±Àø
  		local	bindidx	=	LuaFnItemBind(sceneId, selfId,BagIndex)
			if bindidx ~= 1 then
		  		local bindmsg = "Lieu Nguyet Hong 16"													
		  		BeginEvent( sceneId )
		    		AddText( sceneId, bindmsg )
		  		EndEvent( sceneId )
		  		DispatchMissionTips( sceneId, selfId )
			end
	
	    local PlayerName = GetName(sceneId,selfId)
			-- ğÕt ğßşcÎïÆ·ĞÅÏ¢
			local ItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
			
			--¸÷ÖÖ¹«¸æ
			if BagIndex ~= -1 then
      	BeginEvent( sceneId )
					AddText( sceneId, "#{XYLP_20071222_16}" )
		    
		    
		    --¹öÆÁ¹«¸æ1
	      local msg = format("@*;SrvMsg;SCA:#{XYLP_20071222_17}#{_INFOUSR%s}#{XYLP_20071222_18}",PlayerName)
		    AddGlobalCountNews( sceneId, msg )
		   
		    
		 		--·¢ËÍH® th¯ng¹«¸æ
		  	local PlayerName = GetName(sceneId,selfId)
	    	str = format( "#{XYLP_20071222_21}#{_INFOUSR%s}#{XYLP_20071222_22}#{_INFOMSG%s}#{XYLP_20071222_23}", PlayerName,ItemInfo )
	    	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	    	
	    	--¹öÆÁ¹«¸æ2
	      local msg = format("@*;SrvMsg;SCL:#{XYLP_20071222_21}#{_INFOUSR%s}#{XYLP_20071222_22}Lieu Nguyet Hong 17#{XYLP_20071222_23}",PlayerName)
		    AddGlobalCountNews( sceneId, msg )
		    
		    EndEvent( sceneId )
		    DispatchEventList(sceneId,selfId,targetId)
	  	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x808071_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x808071_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x808071_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌĞø
--**********************************
function x808071_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x808071_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x808071_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x808071_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x808071_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x808071_OnItemChanged( sceneId, selfId, itemdataId )
end

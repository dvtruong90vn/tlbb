-- 200100
-- ¾çÇéÑ­»·ÈÎÎñtoÕ ðµ Ë ði¬m÷

x200100_g_ScriptId = 200100
x200100_g_Info = {	
		{name="Mµc Uy¬n Thanh",  mis=8,s1="#{help_JQXH_001}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}", s4="#{help_JQXH_018}"},
		{name="Chung Linh",    mis=8,s1="#{help_JQXH_002}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}", s4="#{help_JQXH_031}"},
		{name="Ðoàn Diên Khánh",  mis=8,s1="#{help_JQXH_003}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}", s4="#{help_JQXH_032}"},
		{name="Cßu Ma Trí",  mis=37,s1="#{help_JQXH_004}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}",s4="#{help_JQXH_040}"},
		{name="Nguy­n Tinh Trúc",  mis=15,s1="#{help_JQXH_005}" ,s2="#{help_JQXH_020}",s3="#{help_JQXH_021}",s4="#{help_JQXH_034}"},
		{name="A Bích",    mis=15,s1="#{help_JQXH_006}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}",s4="#{help_JQXH_035}"},
		{name="Vß½ng Phu Nhân",  mis=15,s1="#{help_JQXH_007}" ,s2="#{help_JQXH_022}",s3="#{help_JQXH_023}",s4="#{help_JQXH_036}"},
		{name="A TØ",    mis=32,s1="#{help_JQXH_008}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}",s4="#{help_JQXH_037}"},
		{name="Hách Liên Thiªt Thø",mis=45,s1="#{help_JQXH_009}" ,s2="#{help_JQXH_024}",s3="#{help_JQXH_025}",s4="#{help_JQXH_041}"},
		{name="Mµ Dung Phøc",  mis=37,s1="#{help_JQXH_010}" ,s2="#{help_JQXH_014}",s3="#{help_JQXH_016}",s4="#{help_JQXH_038}"},
		{name="Ðoàn Chính Thu¥n",  mis=8,s1="#{help_JQXH_011}" ,s2="#{help_JQXH_026}",s3="#{help_JQXH_027}", s4="#{help_JQXH_033}"},
		{name="Gia Lu§t ÐÕi ThÕch",mis=23,s1="#{help_JQXH_012}" ,s2="#{help_JQXH_015}",s3="#{help_JQXH_017}",s4="#{help_JQXH_019}"},
		{name="Di®p Nh¸ Nß½ng",  mis=37,s1="#{help_JQXH_013}" ,s2="#{help_JQXH_028}",s3="#{help_JQXH_029}",s4="#{help_JQXH_039}"}
}
--Ä¾ÍñÇå			ÐÕi Lý     
--ÖÓLinh        ÎÞÁ¿É½   
--¶ÎÑÓÇì      ÐÕi Lý 
--Cßu Ma Trí      Ðôn Hoàng     
--Nguy­n Tinh Trúc      Kính K° 
--°¢±Ì        Tô Châu     
--Íõ·òÈË      Tô Châu   
--°¢×Ï        LÕc Dß½ng     
--ºÕÁ¬ÌúÊ÷    LÕc Dß½ng  
--Mµ Dung Phøc      Tô Châu     
--¶ÎÕý´¾      ÐÕi Lý  
--Ò®ÂÉ´óÊ¯    LÕc Dß½ng     
--Ò¶¶þÄï      ÐÕi Lý     

--(Íò½Ù)20c¤p¿ªÊ¼toÕ ðµ NPC 8 : Ä¾ÍñÇå¡¢ÖÓLinh¡¢¶ÎÑÓÇì¡¢Ðoàn Dñ(¶ÎÕý´¾)
--(Ñà×Ó)30c¤p¿ªÊ¼toÕ ðµ NPC 15: A Châu(Nguy­n Tinh Trúc)¡¢°¢±Ì¡¢ÍõÓïæÌ(Íõ·òÈË)
--(¾ÛÏÍ)40c¤p¿ªÊ¼toÕ ðµ NPC 23: Tiêu Phong(Ò®ÂÉ´óÊ¯)
--(²ÔÃ£)50c¤p¿ªÊ¼toÕ ðµ NPC 32: °¢×Ï
--(ÀÞ¹Ä)60c¤p¿ªÊ¼toÕ ðµ NPC 37: Mµ Dung Phøc¡¢Hß Trúc(Ò¶¶þÄï)¡¢Cßu Ma Trí
--(mµt Æ·)70c¤p¿ªÊ¼toÕ ðµ NPC 45: Òø´¨¹«Ö÷(ºÕÁ¬ÌúÊ÷)

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200100_OnEnumerate( sceneId, selfId, targetId )

	AddNumText(sceneId, x200100_g_ScriptId,"Ta là ai ?",8,1);
	
	-- Íæ¼ÒÍê³ÉÏà¹Ø¾çÇéÈÎÎñºó,²ÅÄÜ¿´¼ûCái này Ñ¡Ïî
	local szNpcName = GetName(sceneId, targetId)
	local nIndex = 0
	for i=1,13   do
		if szNpcName == x200100_g_Info[i].name   then
			nIndex = i
		end
	end
	
	if (IsMissionHaveDone(sceneId,selfId,x200100_g_Info[nIndex].mis) > 0 ) then
		AddNumText(sceneId, x200100_g_ScriptId,"Giá tr¸ quan h® là gì ?",11,2);
		AddNumText(sceneId, x200100_g_ScriptId,"Nhi®m vø k¸ch tình tu¥n hoàn là gì ?",11,3);
	  AddNumText(sceneId, x200100_g_ScriptId,"#{help_JQXH_030}",11,4);
	end
	
	if (GetLevel(sceneId, selfId) >= 20) then
		AddNumText(sceneId, x200100_g_ScriptId,"#{AQFC_090115_12}",11,5);	  
	end
	
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200100_OnDefaultEvent( sceneId, selfId, targetId )
	local szNpcName = GetName(sceneId, targetId)
	local nIndex = 0
	for i=1,13   do
		if szNpcName == x200100_g_Info[i].name   then
			nIndex = i
		end
	end
	
	if GetNumText() == 1  then
		if nIndex > 0  then
			BeginEvent( sceneId )
				AddText( sceneId, "#Y Ta là ai ?" )
				AddText( sceneId, x200100_g_Info[nIndex].s1 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
				
	elseif GetNumText() == 2  then
		if nIndex > 0  then
			BeginEvent( sceneId )
				AddText( sceneId, "#Y Giá tr¸ quan h® là gì ?" )
				AddText( sceneId, x200100_g_Info[nIndex].s3 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	
	elseif GetNumText() == 3  then
		if nIndex > 0  then
			BeginEvent( sceneId )
				AddText( sceneId, "#Y Nhi®m vø k¸ch tình tu¥n hoàn là gì ? " )
				AddText( sceneId, x200100_g_Info[nIndex].s2 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
			
	elseif GetNumText() == 4  then
      if nIndex > 0  then
			BeginEvent( sceneId )
				AddText( sceneId, "#Y#{help_JQXH_030}" )
				AddText( sceneId, x200100_g_Info[nIndex].s4 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
  elseif GetNumText() == 5  then--[tx43452]
		BeginEvent( sceneId )
			AddText( sceneId, "#{AQFC_090115_12}" )
			AddText( sceneId, "#{AQFC_090115_15}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )--[/tx43452]				
	end
	
end

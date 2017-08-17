-- Ê¦Í½ÇéÉîÈÎÎñ
-- ´´½¨ÈË   [ QUFEI 2007-09-04 13:13 UPDATE ]	    
-- ½Å±¾ºÅ
x806019_g_ScriptId = 806019

--ÊÂ¼þ
x806019_g_Update = {

    ["id01"] = 15,    

}

--ÌáÊ¾ÐÅÏ¢
x806019_g_msg = {

    ["st"]	= "Sß ð° tình thâm",
    
}

x806019_g_Impact = {

		8010,
		8011,
		8012,
		8013,
		8014,
		8015,
		8016,
		8017,
		8018,
		8019,
		30151,
		30152,
		30153,
		30154,
		30155,
		30156,
		30157,
		30158,
		30159,
		30160,
		}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x806019_OnDefaultEvent( sceneId, selfId, targetId )
    -- [ QUFEI 2007-08-31 13:13 UPDATE BugID #24277 ]	    
    -- ½ÌÊ¦½ÚÁìÈ¡Ê¦Í½ÇéÉîBuff            
    local	key	= GetNumText()
    
    if key == x806019_g_Update["id01"] then
        -- [ QUFEI 2007-08-31 13:13 UPDATE BugID #24277 ]	
        -- ½ÌÊ¦½ÚÁìÈ¡Ê¦Í½ÇéÉîBuff            
        local nMonth = LuaFnGetThisMonth()
        local nDay   = LuaFnGetDayOfThisMonth()
        local nData  = (nMonth+1)*100+nDay
        -- PrintNum(nData)
        if (nData ~= 0 and nData == 910)  then          
            x806019_OnShiTuQingShen( sceneId, selfId, targetId )
            return 0
        else          
            x806019_MessageBox(sceneId, selfId, "Xin l²i chï có ngày 20-11 m¾i có th¬ nh§n BUFF.")
            return 0		
        end               
    end
    
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x806019_OnEnumerate( sceneId, selfId, targetId )	

    -- [ QUFEI 2007-08-31 13:13 UPDATE BugID #24277 ]	
    -- ½ÌÊ¦½ÚÁìÈ¡Ê¦Í½ÇéÉîBuff
    local nMonth = LuaFnGetThisMonth()
    local nDay   = LuaFnGetDayOfThisMonth()
    local nData  = (nMonth+1)*100+nDay
        
    if (nData ~= 0 and nData == 910)  then
        AddNumText( sceneId, x806019_g_ScriptId, x806019_g_msg["st"], 6, x806019_g_Update["id01"] )
    end

end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x806019_CheckAccept( sceneId, selfId, targetId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x806019_OnAccept( sceneId, selfId, targetId )	
end

--**********************************
--Ìá½»
--**********************************
function x806019_OnSubmit( sceneId, selfId, targetId, tId )
end

--**********************************
--¾Ü¾ø
--**********************************
function x806019_OnCancel( sceneId, selfId, targetId )
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x806019_MessageBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
        AddText( sceneId, msg )
    EndEvent( sceneId )
    DispatchMissionTips( sceneId, selfId )		
end

function x806019_OnShiTuQingShen( sceneId, selfId, targetId )
    -- [ QUFEI 2007-08-31 13:13 UPDATE BugID #24277 ]	    
    -- ½ÌÊ¦½ÚÁìÈ¡Ê¦Í½ÇéÉîBuff            
    -- ¼ì²âÁìÈ¡Ìõ¼þ
    -- ÁìÈ¡ÕßÊÇ·ñ´¦ÓÚ×é¶Ó×´Ì¬
    if LuaFnHasTeam( sceneId, selfId ) == 0 then        
        x806019_MessageBox( sceneId, selfId, "Xin l²i, sß ð° 2 ngß¶i phäi t± ðµi v¾i nhau m¾i có th¬ nh§n lînh hào quang Sß ð° tình thâm" )				
        return 0
    end
    
    -- ÁìÈ¡ÕßÊÇ·ñÎª¶Ó³¤
    if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then                
        x806019_MessageBox( sceneId, selfId, "Xin l²i, phäi là ðµi trß·ng m¾i có th¬ nh§n lînh hào quang Sß ð° tình thâm" )				
				return 0
		end
    
    -- ×é¶ÓÖÐÖ»ÓÐÁ½¸öÈË
    if LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
        x806019_MessageBox( sceneId, selfId, "Xin l²i, sß ð° 2 ngß¶i phäi t± ðµi v¾i nhau m¾i có th¬ nh§n lînh hào quang Sß ð° tình thâm" )						
        return 0
		end 
    
    local TeamSizeSameScene = LuaFnGetTeamSceneMemberCount( sceneId, selfId )    
        
    -- ×é¶ÓÖÐµÄÁ½¸öÈË±ØÐëÔÚÍ¬Ò»³¡¾°
    if TeamSizeSameScene ~=1 then
        x806019_MessageBox( sceneId, selfId, "Xin l²i, sß ð° 2 ngß¶i phäi t± ðµi v¾i nhau m¾i có th¬ nh§n lînh hào quang Sß ð° tình thâm" )						
        return 0
		end 
    
    -- ×é¶ÓÖÐµÄÁ½¸öÈË±ØÐë¶¼ÔÚ¸½½ü
    local	numMem	= GetNearTeamCount( sceneId, selfId )
    if numMem ~= LuaFnGetTeamSize( sceneId, selfId ) then                
        x806019_MessageBox( sceneId, selfId, "Xin l²i, sß ð° các ngß½i ð«u phäi · khu vñc phø c§n m¾i có th¬ nh§n lînh hào quang Sß ð° tình thâm" )				
        return 0
    end
    
    local theID = LuaFnGetTeamSceneMember( sceneId, selfId, 0 )       
        
    -- ÁìÈ¡ÕßÊÇ·ñÎªÊ¦Í½
    if LuaFnIsMaster(sceneId, selfId, theID) == 1 or LuaFnIsMaster(sceneId, theID, selfId) == 1 then
        -- ½±Àø            
        -- PrintNum(selfId)
        -- PrintNum(theID)
        x806019_OnAddImpact( sceneId, selfId, 0 )        
        x806019_OnAddImpact( sceneId, selfId, theID )        
    else            
        x806019_MessageBox( sceneId, selfId, "Xin l²i, sß ð° 2 ngß¶i phäi t± ðµi v¾i nhau m¾i có th¬ nh§n lînh hào quang Sß ð° tình thâm" )				
        return 0
    end
       
end

-- ÁìÈ¡Ê¦Í½ÇéÉîBuff
function x806019_OnAddImpact( sceneId, selfId, theID )
    
    local level = 0
    if theID == 0 then
        level = GetLevel(sceneId, selfId)    
    elseif theID ~= 0 and selfId ~= 0 then
        level = GetLevel(sceneId, theID)    
    end    
	local impactID = x806019_g_Impact[1]

    -- PrintNum(selfId)
    -- PrintNum(theID)
    -- PrintNum(otherLevel)

	if level > 190 then
		impactID = x806019_g_Impact[20]
	elseif level > 180 then
		impactID = x806019_g_Impact[19]
	elseif level > 170 then
		impactID = x806019_g_Impact[18]
	elseif level > 160 then
		impactID = x806019_g_Impact[17]
	elseif level > 150 then
		impactID = x806019_g_Impact[16]
	elseif level > 140 then
		impactID = x806019_g_Impact[15]
	elseif level > 130 then
		impactID = x806019_g_Impact[14]
	elseif level > 120 then
		impactID = x806019_g_Impact[13]
	elseif level > 110 then
		impactID = x806019_g_Impact[12]
	elseif level > 100 then
		impactID = x806019_g_Impact[11]
	elseif level > 90 then
		impactID = x806019_g_Impact[10]
	elseif level > 80 then
		impactID = x806019_g_Impact[9]
	elseif level > 70 then
		impactID = x806019_g_Impact[8]
	elseif level > 60 then
		impactID = x806019_g_Impact[7]
	elseif level > 50 then
		impactID = x806019_g_Impact[6]
	elseif level > 40 then
		impactID = x806019_g_Impact[5]
	elseif level > 30 then
		impactID = x806019_g_Impact[4]
	elseif level > 20 then
		impactID = x806019_g_Impact[3]
	elseif level > 10 then
		impactID = x806019_g_Impact[2]
	else
		impactID = x806019_g_Impact[1]
	end

    -- PrintNum(impactID)
    if theID == 0 then
        LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, impactID, 0);
    elseif theID ~= 0 and selfId ~= 0 then
        LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, theID, impactID, 0);
    end    
	
end

--����NPC
--������
--��ͨ

--�ű���
x015010_g_ScriptId = 015010

x015010_g_xuanWuDaoId= 400918 --[tx42913]

--������Ϣ(�������ƣ�SceneID��PosX��PosY������ID)
x015010_g_mpInfo		= {}
x015010_g_mpInfo[0]	= { "Tinh T�c", 16,  96, 152, MP_XINGSU }
x015010_g_mpInfo[1]	= { "Ti�u Dao", 14,  67, 145, MP_XIAOYAO }
x015010_g_mpInfo[2]	= { "Thi�u L�m",  9,  95, 137, MP_SHAOLIN }
x015010_g_mpInfo[3]	= { "Thi�n S�n", 17,  95, 120, MP_TIANSHAN }
x015010_g_mpInfo[4]	= { "Thi�n Long", 13,  96, 120, MP_DALI }
x015010_g_mpInfo[5]	= { "Nga My", 15,  89, 144, MP_EMEI }
x015010_g_mpInfo[6]	= { "V� �ang", 12, 103, 140, MP_WUDANG }
x015010_g_mpInfo[7]	= { "Minh Gi�o", 11,  98, 167, MP_MINGJIAO }
x015010_g_mpInfo[8]	= { "C�i Bang", 10,  91, 116, MP_GAIBANG }


--**********************************
--�¼��������
--**********************************
function x015010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{MPXL_090113_03}")
		if	GetLevel( sceneId, selfId)>=10  then	
			AddNumText(sceneId,x015010_g_ScriptId,"L�c D߽ng",9,0)
			AddNumText(sceneId,x015010_g_ScriptId,"T� Ch�u",9,1)
			AddNumText( sceneId, x015010_g_ScriptId, "L�c D߽ng - C�u Ch�u Th߽ng H�i", 9, 3 )
			AddNumText( sceneId, x015010_g_ScriptId, "T� Ch�u - Thi�t T߶ng Ph�", 9, 4 )
		end
		
		--add by WTT
		if	GetLevel( sceneId, selfId)>=20  then	
			AddNumText( sceneId, x015010_g_ScriptId, "Th�c H� C� Tr�n", 9, 6 )
		end

		if	GetLevel( sceneId, selfId)>=75  then	
			AddNumText( sceneId, x015010_g_ScriptId, "#{MPCSLL_80925_01}", 9, 5 )
		end

		AddNumText(sceneId,x015010_g_ScriptId,"��i L�",9,2)
		
		--[tx42913]
		   CallScriptFunction( x015010_g_xuanWuDaoId, "OnEnumerate",sceneId, selfId, targetId )
		--[/tx42913]		
		
		AddNumText(sceneId,x015010_g_ScriptId,"#G#b��a ta �i c�c m�n ph�i kh�c",9,11)

		-- ����������ȥ�ػͺ���ɽ
		AddNumText( sceneId, x015010_g_ScriptId, "L�m th� n�o � �n ��n Ho�ng v� Tung S�n ?", 11, 2000 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x015010_OnEventRequest( sceneId, selfId, targetId, eventId )

--[tx42913]
	if eventId == x015010_g_xuanWuDaoId then --ȥ���䵺
		CallScriptFunction( x015010_g_xuanWuDaoId, "OnDefaultEvent",sceneId, selfId, targetId )
		return
	end
--[/tx42913]
------------------------------------------------------------------------------------------
	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" ) 
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return
	end
  
    if  GetNumText() == 11 then
        
		BeginEvent(sceneId)
		    
		    for i=0, 8 do
				AddNumText( sceneId, x015010_g_ScriptId, "M�n ph�i - "..x015010_g_mpInfo[i][1], 9, i+12 )
			end		
			--AddNumText(sceneId,x009009_g_ScriptId,"M�n ph�i - M� Dung",9,1000)--Add by S�i
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)	
		return 
    end
    
    num = GetNumText()

 	if num > 11 then
 		-- �����������ǲ�����113��BUFF
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 113) == 1   then
			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� �ang trong tr�ng th�i T�o V�n ho�c th߽ng nh�n, kh�ng th� truy�n t�ng." ) 
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			
			return
 		end
 	
		--Add by S�i
		if GetNumText() == 1000 then
			CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId,435,91,116)
			return
		end
	
 	    i = num - 12
		CallScriptFunction( (400900), "TransferFuncFromNpc", sceneId, selfId, x015010_g_mpInfo[i][2], x015010_g_mpInfo[i][3], x015010_g_mpInfo[i][4] )
		return
	end
------------------------------------------------------------------------------------------ 

	if	GetNumText()==0	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 0,233,321, 10)
	elseif	GetNumText()==1	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 1,202,257, 10)
	elseif	GetNumText()==3	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 0,325,270, 10)
	elseif	GetNumText()==4	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 1,331,226, 10)
	elseif	GetNumText()==2	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 2,252, 124)
	elseif  GetNumText()==5	then
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 186,288,136,75)
	end
	
	--add by WTT
	if GetNumText()== 6 then					--���ӹ���		
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x015010_g_ScriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Th�c H� C� Tr�n l� n�i kh�ng t�ng s�t kh�, c�c h� h�y ch� � an to�n. X�c nh�n ti�n v�o ?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end

end

--add by WTT
function x015010_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--��翷帱��....
--���ϴ�Ի��ű�....

--�ű���
x402285_g_ScriptId = 402285

--�����߼��ű���....
x402285_g_FuBenScriptId = 402276

--ս�����ϴ�Ի��ű���....
x402285_g_LossScriptId = 402288

--**********************************
--������ں���....
--**********************************
function x402285_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)

		AddText( sceneId, "#{PMF_20080521_10}" )
		AddNumText( sceneId, x402285_g_ScriptId, "Khi�u chi�n", 10, 1 )

		--�жϵ�ǰ�Ƿ������ս����ˮ....	
		if 1 == CallScriptFunction( x402285_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" ) then
			AddNumText( sceneId, x402285_g_ScriptId, "T� chi�n L� Thu Th�y", 10, 2 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x402285_OnEventRequest( sceneId, selfId, targetId, eventId )

	--������ڼ���BOSS�򷵻�....
	if 1 == CallScriptFunction( x402285_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
		return
	end

	--�ǲ��Ƕӳ�....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_07}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--������ںͱ��BOSSChi�n �u �򷵻�....
	local ret, msg = CallScriptFunction( x402285_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	if GetNumText() == 1 then

		--�жϵ�ǰ�Ƿ������ս���ϴ�....	
		if 1 ~= CallScriptFunction( x402285_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "WuLaoDa" ) then
			BeginEvent(sceneId)
				AddText( sceneId, "#{PMF_20080521_11}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		--������翷��ʱ���������Լ�....
		CallScriptFunction( x402285_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x402285_g_ScriptId, -1 ,-1 )

	elseif GetNumText() == 2 then

		--�жϵ�ǰ�Ƿ������ս����ˮ....	
		if 1 ~= CallScriptFunction( x402285_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "LiQiuShui" ) then
			return
		end
		--������翷��ʱ������������ˮ....
		CallScriptFunction( x402285_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x402285_g_LossScriptId, -1 ,-1 )

	end

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--��翷��ʱ����OnTimer....
--**********************************
function x402285_OnPMFTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x402285_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 5 gi�y sau b�t �u." )
		return
	end

	if 6 == step then
		CallScriptFunction( x402285_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 4 gi�y sau b�t �u." )
		return
	end

	if 5 == step then
		CallScriptFunction( x402285_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 3 gi�y sau b�t �u." )
		return
	end

	if 4 == step then
		CallScriptFunction( x402285_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 2 gi�y sau b�t �u." )
		return
	end

	if 3 == step then
		CallScriptFunction( x402285_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u 1 gi�y sau b�t �u." )
		return
	end

	if 2 == step then
		--��ʾChi�n �u b�t �u.....
		CallScriptFunction( x402285_g_FuBenScriptId, "TipAllHuman", sceneId, "Chi�n �u b�t �u." )
		--ɾ��NPC....
		CallScriptFunction( x402285_g_FuBenScriptId, "DeleteBOSS", sceneId, "WuLaoDa_NPC" )
		return
	end

	if 1 == step then
		--����BOSS....
		CallScriptFunction( x402285_g_FuBenScriptId, "CreateBOSS", sceneId, "WuLaoDa_BOSS", -1, -1 )
		return
	end

end
--ÊÂ¼ş
--´«ËÍµ½ÂåÑô

--½Å±¾ºÅ
x400919_g_ScriptId = 400919

--ÈÎÎñÎÄ±¾ÃèÊö
x400919_g_MissionName="Tr· v« LÕc Dß½ng"
x400919_g_MissionInfo="Ta là ngß¶i v§n chuy¬n lß½ng thñc v« kinh thành ĞÕi Liêu. Trên ğß¶ng ği có r¤t nhi«u Thäo Nguyên Lang, hãy ği tiêu di®t chúng, ta m¾i có th¬ tiªp tøc v§n chuy¬n ğßşc..."  --ÈÎÎñÃèÊö
x400919_g_MissionTarget="Giªt chªt 5 con Thäo Nguyên Lang"		--ÈÎÎñÄ¿±ê
x400919_g_ContinueInfo="Hãy giªt chªt 5 con Thäo Nguyên Lang. Thäo Nguyên phía nam có r¤t nhi«u Thäo Nguyên Lang, c¦n th§n nha."		--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x400919_g_MissionComplete="Cäm tÕ các hÕ, cu¯i cùng thì ta cûng tiªp tøc v§n chuy¬n lß½ng thñc ğßşc r°i."					--Íê³ÉÈÎÎñnpcËµ»°µÄ»°

--**********************************
--Èë¿Úº¯Êı
--**********************************
function x400919_OnDefaultEvent( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 0, 159, 240)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x400919_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x400919_g_ScriptId,x400919_g_MissionName)
end

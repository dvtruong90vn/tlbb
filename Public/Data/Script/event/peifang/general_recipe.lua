-- ÆÕÍ¨Åä·½½Å±¾

-- ¸Ã½Å±¾ÓÐÒÔÏÂ¶þ¸ö±Ø±¸¹¦ÄÜº¯Êý£º
-- x700900_AbilityCheck ¡ª¡ª¼¼ÄÜÊ¹ÓÃ¼ì²éº¯Êý
-- x700900_AbilityProduce ¡ª¡ªºÏ³É³É¹¦£¬¸ºÔðÏûºÄÒÔ¼°²ú³ö²úÆ·

-- ½Å±¾ºÅ
x700900_g_ScriptId = 700900


-- ËùÓÐ²ÄÁÏ±í
x700900_g_CaiLiaoBiao = {}

x700900_g_CaiLiaoBiao[ZHIYAO_CAILIAO1 ] = { 20101001, 20101002, }
x700900_g_CaiLiaoBiao[ZHIYAO_CAILIAO2 ] = { 20101003, 20101004, }
x700900_g_CaiLiaoBiao[ZHIYAO_CAILIAO3 ] = { 20101005, 20101006, 20101007, }
x700900_g_CaiLiaoBiao[ZHIYAO_CAILIAO4 ] = { 20101008, 20101009, 20101010, }
x700900_g_CaiLiaoBiao[ZHIYAO_CAILIAO5 ] = { 20101011, 20101012, 20101013, }
x700900_g_CaiLiaoBiao[ZHIYAO_CAILIAO6 ] = { 20101014, 20101015, 20101016, }
x700900_g_CaiLiaoBiao[ZHIYAO_CAILIAO7 ] = { 20101017, 20101018, 20101019, }
x700900_g_CaiLiaoBiao[ZHIYAO_CAILIAO8 ] = { 20101020, 20101021, 20101022, }
x700900_g_CaiLiaoBiao[ZHIYAO_CAILIAO9 ] = { 20101023, 20101024, }
x700900_g_CaiLiaoBiao[ZHIYAO_CAILIAO10 ] = { 20101025, 20101026, }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_GUWU1 ] = { 20104001, }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_GUWU2 ] = { 20104002, }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_GUWU3 ] = { 20104003, }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_GUWU4 ] = { 20104004, }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_GUWU5 ] = { 20104005, }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_GUWU6 ] = { 20104006, }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_GUWU7 ] = { 20104007, }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_GUWU8 ] = { 20104008, }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_GUWU9 ] = { 20104009, }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_GUWU10 ] = { 20104010, }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_ZAWU1 ] = { }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_ZAWU2 ] = { }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_ZAWU3 ] = { 20102037 }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_ZAWU4 ] = { }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_ZAWU5 ] = { }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_ZAWU6 ] = { 20102038 }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_ZAWU7 ] = { }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_ZAWU8 ] = { }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_ZAWU9 ] = { }
x700900_g_CaiLiaoBiao[PENGREN_CAILIAO_ZAWU10 ] = { 20102039 }

-- ËùÓÐ²úÆ·±í
x700900_g_ChanPinBiao = {}

x700900_g_ChanPinBiao[ZHIYAO_CHANPIN1 ] = { { ID = 30001001, Odds = 5000 }, { ID = 30003011, Odds = 10000 }, }
x700900_g_ChanPinBiao[ZHIYAO_CHANPIN2 ] = { { ID = 30001002, Odds = 5000 }, { ID = 30003012, Odds = 10000 }, }
x700900_g_ChanPinBiao[ZHIYAO_CHANPIN3 ] = { { ID = 30001003, Odds = 5000 }, { ID = 30003013, Odds = 10000 }, }
x700900_g_ChanPinBiao[ZHIYAO_CHANPIN4 ] = { { ID = 30001004, Odds = 5000 }, { ID = 30003014, Odds = 10000 }, }
x700900_g_ChanPinBiao[ZHIYAO_CHANPIN5 ] = { { ID = 30001005, Odds = 10 }, { ID = 30003015, Odds = 10000 }, }
x700900_g_ChanPinBiao[ZHIYAO_CHANPIN6 ] = { { ID = 30001006, Odds = 10 }, { ID = 30003016, Odds = 10000 }, }
x700900_g_ChanPinBiao[ZHIYAO_CHANPIN7 ] = { { ID = 30001007, Odds = 0 }, { ID = 30003017, Odds = 10000 }, }
x700900_g_ChanPinBiao[ZHIYAO_CHANPIN8 ] = { { ID = 30001008, Odds = 0 }, { ID = 30003018, Odds = 10000 }, }
x700900_g_ChanPinBiao[ZHIYAO_CHANPIN9 ] = { { ID = 30001009, Odds = 0 }, { ID = 30003019, Odds = 10000 }, }
x700900_g_ChanPinBiao[ZHIYAO_CHANPIN10 ] = { { ID = 30001010, Odds = 0 }, { ID = 30003020, Odds = 10000 }, }
x700900_g_ChanPinBiao[ZHIYAO_CHANPINCHUJI] = { { ID = 30005021, Odds = 2500 }, { ID = 30005022, Odds = 5000 },
									   { ID = 30005023, Odds = 7500 }, { ID = 30005024, Odds = 10000 }, }
x700900_g_ChanPinBiao[ZHIYAO_CHANPINZHONGJI] = { { ID = 30005029, Odds = 2500 }, { ID = 30005030, Odds = 5000 },
										 { ID = 30005031, Odds = 7500 }, { ID = 30005032, Odds = 10000 }, }
x700900_g_ChanPinBiao[ZHIYAO_CHANPINGAOJI] = { { ID = 30005037, Odds = 2500 }, { ID = 30005038, Odds = 5000 },
									   { ID = 30005039, Odds = 7500 }, { ID = 30005040, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWU1 ] = { { ID = 30101061, Odds = 5000 }, { ID = 30101051, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWU2 ] = { { ID = 30101062, Odds = 5000 }, { ID = 30101052, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWU3 ] = { { ID = 30101063, Odds = 5000 }, { ID = 30101053, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWU4 ] = { { ID = 30101064, Odds = 5000 }, { ID = 30101054, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWU5 ] = { { ID = 30101065, Odds = 5000 }, { ID = 30101055, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWU6 ] = { { ID = 30101066, Odds = 5000 }, { ID = 30101056, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWU7 ] = { { ID = 30101067, Odds = 5000 }, { ID = 30101057, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWU8 ] = { { ID = 30101068, Odds = 5000 }, { ID = 30101058, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWU9 ] = { { ID = 30101069, Odds = 5000 }, { ID = 30101059, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWU10 ] = { { ID = 30101070, Odds = 5000 }, { ID = 30101060, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWUCHUJI] = { { ID = 30102001, Odds = 2000 }, { ID = 30102002, Odds = 4000 },
											 { ID = 30102003, Odds = 6000 }, { ID = 30102004, Odds = 8000 },
											 { ID = 30102005, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWUZHONGJI] = { { ID = 30102011, Odds = 2000 }, { ID = 30102012, Odds = 4000 },
											   { ID = 30102013, Odds = 6000 }, { ID = 30102014, Odds = 8000 },
											   { ID = 30102015, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_GUWUGAOJI] = { { ID = 30102021, Odds = 2000 }, { ID = 30102022, Odds = 4000 },
											 { ID = 30102023, Odds = 6000 }, { ID = 30102024, Odds = 8000 },
											 { ID = 30102025, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWU1 ] = { { ID = 30101081, Odds = 5000 }, { ID = 30101071, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWU2 ] = { { ID = 30101082, Odds = 5000 }, { ID = 30101072, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWU3 ] = { { ID = 30101083, Odds = 5000 }, { ID = 30101073, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWU4 ] = { { ID = 30101084, Odds = 5000 }, { ID = 30101074, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWU5 ] = { { ID = 30101085, Odds = 5000 }, { ID = 30101075, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWU6 ] = { { ID = 30101086, Odds = 5000 }, { ID = 30101076, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWU7 ] = { { ID = 30101087, Odds = 5000 }, { ID = 30101077, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWU8 ] = { { ID = 30101088, Odds = 5000 }, { ID = 30101078, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWU9 ] = { { ID = 30101089, Odds = 5000 }, { ID = 30101079, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWU10 ] = { { ID = 30101090, Odds = 5000 }, { ID = 30101080, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWUCHUJI] = { { ID = 30103002, Odds = 2500 }, { ID = 30103003, Odds = 5000 },
											 { ID = 30103004, Odds = 7500 }, { ID = 30103005, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWUZHONGJI] = { { ID = 30103010, Odds = 2500 }, { ID = 30103011, Odds = 5000 },
											   { ID = 30103012, Odds = 7500 }, { ID = 30103013, Odds = 10000 }, }
x700900_g_ChanPinBiao[PENGREN_CHANPIN_ZAWUGAOJI] = { { ID = 30103018, Odds = 2500 }, { ID = 30103019, Odds = 5000 },
											 { ID = 30103020, Odds = 7500 }, { ID = 30103021, Odds = 10000 }, }


x700900_g_CompoundInfo = {}

-- Ë÷ÒýÎªÅä·½ ID

-- abilityId: Éú»î¼¼ÄÜºÅ
-- aMaxLevel: ¸ÃÏîÉú»î¼¼ÄÜµÄ×î´ó¼¶±ð
-- aLevelLimit: ¶Ô¸ÃÅä·½²úÉúÓ°ÏìµÄÉú»î¼¼ÄÜµÈ¼¶ÉÏÏÞ
-- recipeLevel: Åä·½µÈ¼¶
-- vigorCost: ¸ÃÏîÅä·½µÄ»îÁ¦ÏûºÄ£¨ÓÉÓÚÐÂÉè¼Æ£¬ÕâÒ»ÌõÔÝÊ±×÷·Ï£©
-- energyCost: ¸ÃÏîÅä·½µÄ¾«Á¦ÏûºÄ
-- matClassBase: ¸ÃÅä·½Ê¹ÓÃµÄ²ÄÁÏ×é»ùÊý[²ÄÁÏ×é±ØÐë°´µÈ¼¶Á¬Ðø]
-- matClassCount: ¸ÃÅä·½Ê¹ÓÃµÄ²ÄÁÏ×éÊý
-- matCostBase: ¸ÃÏîÅä·½µÄ²ÄÁÏÏûºÄ»ùÊý
-- matFactor: ²ÄÁÏÏûºÄ±¶³ËÒò×Ó
-- succProductClass: ºÏ³É³É¹¦µÄ²úÆ·×é
-- failProductClass: ºÏ³ÉÊ§°ÜµÄ²úÆ·×é£¬¸ù¾ÝÍæ¼ÒµÄÉú»î¼¶±ð¸ø³öÏàÓ¦µÄÊ§°Ü²úÆ·×éÒÔ¼°³öÏÖ¼¸ÂÊ
--		defaultClass: Í¨³£²»»áÓÃµ½£¬Ö»ÓÐµ±Ë÷Òý³ö´íÊ±»áÓÃµ½
--		[n]: ±íÊ¾µ±Íæ¼ÒµÄÉú»î¼¼ÄÜ¶ÔÓ¦Îª n ¼¶Ê±²ÉÓÃ
--			prodClass, odds: µ±¼¸ÂÊ·ûºÏ¸ÃÌõ¼þ random(x700900_g_RandNum) < odds Ê± prodClass ¶ÔÓ¦µÄ²úÆ·×é±»Ê¹ÓÃ

-- ³õ¼¶Ò©
x700900_g_CompoundInfo[163] = { abilityId = ABILITY_ZHIYAO, aMaxLevel = 12, aLevelLimit = 3,
	recipeLevel = 1, vigorCost = 10, energyCost = 0, matClassBase = ZHIYAO_CAILIAO1,
	matClassCount = 3, matCostBase = 5, matFactor = 1, succProductClass = ZHIYAO_CHANPINCHUJI,
	failProductClass = {
		defaultClass = ZHIYAO_CHANPIN1,
		[1] = { { prodClass = ZHIYAO_CHANPIN1, odds = 10000 }, },
		[2] = { { prodClass = ZHIYAO_CHANPIN2, odds = 7000 }, { prodClass = ZHIYAO_CHANPIN1, odds = 10000 }, },
		[3] = { { prodClass = ZHIYAO_CHANPIN3, odds = 6000 }, { prodClass = ZHIYAO_CHANPIN2, odds = 8500 }, { prodClass = ZHIYAO_CHANPIN1, odds = 10000 }, },
	},
}

-- ÖÐ¼¶Ò©
x700900_g_CompoundInfo[164] = { abilityId = ABILITY_ZHIYAO, aMaxLevel = 12, aLevelLimit = 6,
	recipeLevel = 4, vigorCost = 15, energyCost = 0, matClassBase = ZHIYAO_CAILIAO4,
	matClassCount = 3, matCostBase = 5, matFactor = 1, succProductClass = ZHIYAO_CHANPINZHONGJI,
	failProductClass = {
		defaultClass = ZHIYAO_CHANPIN4,
		[4] = { { prodClass = ZHIYAO_CHANPIN4, odds = 10000 }, },
		[5] = { { prodClass = ZHIYAO_CHANPIN5, odds = 7000 }, { prodClass = ZHIYAO_CHANPIN4, odds = 10000 }, },
		[6] = { { prodClass = ZHIYAO_CHANPIN6, odds = 6000 }, { prodClass = ZHIYAO_CHANPIN5, odds = 8500 }, { prodClass = ZHIYAO_CHANPIN4, odds = 10000 }, },
	},
}

-- ¸ß¼¶Ò©
x700900_g_CompoundInfo[165] = { abilityId = ABILITY_ZHIYAO, aMaxLevel = 12, aLevelLimit = 10,
	recipeLevel = 7, vigorCost = 23, energyCost = 0, matClassBase = ZHIYAO_CAILIAO7,
	matClassCount = 4, matCostBase = 6, matFactor = 1, succProductClass = ZHIYAO_CHANPINGAOJI,
	failProductClass = {
		defaultClass = ZHIYAO_CHANPIN7,
		[7] = { { prodClass = ZHIYAO_CHANPIN7, odds = 10000 }, },
		[8] = { { prodClass = ZHIYAO_CHANPIN8, odds = 7000 }, { prodClass = ZHIYAO_CHANPIN7, odds = 10000 }, },
		[9] = { { prodClass = ZHIYAO_CHANPIN9, odds = 6000 }, { prodClass = ZHIYAO_CHANPIN8, odds = 8500 }, { prodClass = ZHIYAO_CHANPIN7, odds = 10000 }, },
		[10] = { { prodClass = ZHIYAO_CHANPIN10, odds = 5000 }, { prodClass = ZHIYAO_CHANPIN9, odds = 7500 }, { prodClass = ZHIYAO_CHANPIN8, odds = 9000 }, { prodClass = ZHIYAO_CHANPIN7, odds = 10000 }, },
	},
}

-- ³õ¼¶¹ÈÎï
x700900_g_CompoundInfo[477] = { abilityId = ABILITY_PENGREN, aMaxLevel = 12, aLevelLimit = 3,
	recipeLevel = 1, vigorCost = 10, energyCost = 0, matClassBase = PENGREN_CAILIAO_GUWU1,
	matClassCount = 3, matCostBase = 2, matFactor = 1, succProductClass = PENGREN_CHANPIN_GUWUCHUJI,
	failProductClass = {
		defaultClass = PENGREN_CHANPIN_GUWU1,
		[1] = { { prodClass = PENGREN_CHANPIN_GUWU1, odds = 10000 }, },
		[2] = { { prodClass = PENGREN_CHANPIN_GUWU2, odds = 7000 }, { prodClass = PENGREN_CHANPIN_GUWU1, odds = 10000 }, },
		[3] = { { prodClass = PENGREN_CHANPIN_GUWU3, odds = 6000 }, { prodClass = PENGREN_CHANPIN_GUWU2, odds = 8500 }, { prodClass = PENGREN_CHANPIN_GUWU1, odds = 10000 }, },
	},
}

-- ³õ¼¶ÔÓÎï
x700900_g_CompoundInfo[478] = { abilityId = ABILITY_PENGREN, aMaxLevel = 12, aLevelLimit = 3,
	recipeLevel = 1, vigorCost = 10, energyCost = 0, matClassBase = PENGREN_CAILIAO_ZAWU1,
	matClassCount = 3, matCostBase = 2, matFactor = 0, succProductClass = PENGREN_CHANPIN_ZAWUCHUJI,
	failProductClass = {
		defaultClass = PENGREN_CHANPIN_ZAWU1,
		[1] = { { prodClass = PENGREN_CHANPIN_ZAWU1, odds = 10000 }, },
		[2] = { { prodClass = PENGREN_CHANPIN_ZAWU2, odds = 7000 }, { prodClass = PENGREN_CHANPIN_ZAWU1, odds = 10000 }, },
		[3] = { { prodClass = PENGREN_CHANPIN_ZAWU3, odds = 6000 }, { prodClass = PENGREN_CHANPIN_ZAWU2, odds = 8500 }, { prodClass = PENGREN_CHANPIN_ZAWU1, odds = 10000 }, },
	},
}

-- ÖÐ¼¶¹ÈÎï
x700900_g_CompoundInfo[479] = { abilityId = ABILITY_PENGREN, aMaxLevel = 12, aLevelLimit = 6,
	recipeLevel = 4, vigorCost = 15, energyCost = 0, matClassBase = PENGREN_CAILIAO_GUWU4,
	matClassCount = 3, matCostBase = 3, matFactor = 1, succProductClass = PENGREN_CHANPIN_GUWUZHONGJI,
	failProductClass = {
		defaultClass = PENGREN_CHANPIN_GUWU4,
		[4] = { { prodClass = PENGREN_CHANPIN_GUWU4, odds = 10000 }, },
		[5] = { { prodClass = PENGREN_CHANPIN_GUWU5, odds = 7000 }, { prodClass = PENGREN_CHANPIN_GUWU4, odds = 10000 }, },
		[6] = { { prodClass = PENGREN_CHANPIN_GUWU6, odds = 6000 }, { prodClass = PENGREN_CHANPIN_GUWU5, odds = 8500 }, { prodClass = PENGREN_CHANPIN_GUWU4, odds = 10000 }, },
	},
}

-- ÖÐ¼¶ÔÓÎï
x700900_g_CompoundInfo[480] = { abilityId = ABILITY_PENGREN, aMaxLevel = 12, aLevelLimit = 6,
	recipeLevel = 4, vigorCost = 15, energyCost = 0, matClassBase = PENGREN_CAILIAO_ZAWU4,
	matClassCount = 3, matCostBase = 3, matFactor = 0, succProductClass = PENGREN_CHANPIN_ZAWUZHONGJI,
	failProductClass = {
		defaultClass = PENGREN_CHANPIN_ZAWU4,
		[4] = { { prodClass = PENGREN_CHANPIN_ZAWU4, odds = 10000 }, },
		[5] = { { prodClass = PENGREN_CHANPIN_ZAWU5, odds = 7000 }, { prodClass = PENGREN_CHANPIN_ZAWU4, odds = 10000 }, },
		[6] = { { prodClass = PENGREN_CHANPIN_ZAWU6, odds = 6000 }, { prodClass = PENGREN_CHANPIN_ZAWU5, odds = 8500 }, { prodClass = PENGREN_CHANPIN_ZAWU4, odds = 10000 }, },
	},
}

-- ¸ß¼¶¹ÈÎï
x700900_g_CompoundInfo[481] = { abilityId = ABILITY_PENGREN, aMaxLevel = 12, aLevelLimit = 10,
	recipeLevel = 7, vigorCost = 23, energyCost = 0, matClassBase = PENGREN_CAILIAO_GUWU7,
	matClassCount = 4, matCostBase = 6, matFactor = 1, succProductClass = PENGREN_CHANPIN_GUWUGAOJI,
	failProductClass = {
		defaultClass = PENGREN_CHANPIN_GUWU7,
		[7] = { { prodClass = PENGREN_CHANPIN_GUWU7, odds = 10000 }, },
		[8] = { { prodClass = PENGREN_CHANPIN_GUWU8, odds = 7000 }, { prodClass = PENGREN_CHANPIN_GUWU7, odds = 10000 }, },
		[9] = { { prodClass = PENGREN_CHANPIN_GUWU9, odds = 6000 }, { prodClass = PENGREN_CHANPIN_GUWU8, odds = 8500 }, { prodClass = PENGREN_CHANPIN_GUWU7, odds = 10000 }, },
		[10] = { { prodClass = PENGREN_CHANPIN_GUWU10, odds = 5000 }, { prodClass = PENGREN_CHANPIN_GUWU9, odds = 7500 }, { prodClass = PENGREN_CHANPIN_GUWU8, odds = 9000 }, { prodClass = PENGREN_CHANPIN_GUWU7, odds = 10000 }, },
	},
}

-- ¸ß¼¶ÔÓÎï
x700900_g_CompoundInfo[482] = { abilityId = ABILITY_PENGREN, aMaxLevel = 12, aLevelLimit = 10,
	recipeLevel = 7, vigorCost = 23, energyCost = 0, matClassBase = PENGREN_CAILIAO_ZAWU7,
	matClassCount = 4, matCostBase = 6, matFactor = 0, succProductClass = PENGREN_CHANPIN_ZAWUGAOJI,
	failProductClass = {
		defaultClass = PENGREN_CHANPIN_ZAWU7,
		[7] = { { prodClass = PENGREN_CHANPIN_ZAWU7, odds = 10000 }, },
		[8] = { { prodClass = PENGREN_CHANPIN_ZAWU8, odds = 7000 }, { prodClass = PENGREN_CHANPIN_ZAWU7, odds = 10000 }, },
		[9] = { { prodClass = PENGREN_CHANPIN_ZAWU9, odds = 6000 }, { prodClass = PENGREN_CHANPIN_ZAWU8, odds = 8500 }, { prodClass = PENGREN_CHANPIN_ZAWU7, odds = 10000 }, },
		[10] = { { prodClass = PENGREN_CHANPIN_ZAWU10, odds = 5000 }, { prodClass = PENGREN_CHANPIN_ZAWU9, odds = 7500 }, { prodClass = PENGREN_CHANPIN_ZAWU8, odds = 9000 }, { prodClass = PENGREN_CHANPIN_ZAWU7, odds = 10000 }, },
	},
}

-- Ëæ»úÒò×Ó
x700900_g_RandNum = 10000

-- ÐÞ¸Ä£º»îÁ¦ÏûºÄ°´ÕÕÒÔÏÂÐÂÉè¶¨À´Ö´ÐÐ
x700900_g_VigorCostList = { 5, 7, 10, 12, 15, 17, 20, 20, 20, 20 }

----------------------------------------------------------------------------------------
-- »îÁ¦ÖµÏûºÄ¼ÆËã
----------------------------------------------------------------------------------------
function x700900_CalcVigorCost( sceneId, selfId, AbilityID, originalCost )
	-- ¸¨ÖúÉú»î¼¼ÄÜ¼¶±ð
	local AssisAbilityLevel = 0

	if AbilityID == ABILITY_PENGREN then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_YANGSHENGFA )
	elseif AbilityID == ABILITY_ZHIYAO then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_YAOLI )
	elseif AbilityID == ABILITY_KAIGUANG then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_FOFA )
	elseif AbilityID == ABILITY_SHENGHUOSHU then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_CAIHUOSHU )
	elseif AbilityID == ABILITY_NIANGJIU then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_LIANHUALUO )
	elseif AbilityID == ABILITY_XUANBINGSHU then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_CAIBINGSHU )
	elseif AbilityID == ABILITY_ZHIGU then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_JINGMAIBAIJUE )
	elseif AbilityID == ABILITY_ZHIDU then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_YINCHONGSHU )
	elseif AbilityID == ABILITY_ZHIFU then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_LINGXINSHU )
	elseif AbilityID == ABILITY_LIANDAN then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_DAOFA )
	elseif AbilityID == ABILITY_QIMENDUNJIA then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_LIUYIFENGGU )
	else
		return originalCost
	end

	-- »îÁ¦ = »îÁ¦*(C0+C1/(C2*¼¶±ð+C3))
	local C0 = 1.59090909090909
	local C1 = 19.3818181818182
	local C2 = 0.2
	local C3 = -33

	local finalCost = originalCost * ( C0 + C1 / ( C2 * AssisAbilityLevel + C3 ) )
	if finalCost < 1 then
		finalCost = 1
	else
		finalCost = floor( finalCost )
	end

	return finalCost
end

----------------------------------------------------------------------------------------
-- ²ÄÁÏ¼ì²éº¯Êý£¬ÅÐ¶ÏÍæ¼ÒÉíÉÏÊÇ·ñÓÐ×ã¹» quantity µÄ class Àà²ÄÁÏ
-- class: ²ÄÁÏµÄÖÖÀà
-- quantity: ²ÄÁÏËùÐèµÄÊýÁ¿
-- Èç¹û·ûºÏÌõ¼þ£¬Ôò·µ»Ø 1£¬·ñÔò·µ»Ø 0
----------------------------------------------------------------------------------------
function x700900_MaterialCheck( sceneId, selfId, class, quantity )
	local MaterialList = x700900_g_CaiLiaoBiao[class]
	local Count = 0

	if not MaterialList then
		print( "Exception: An unexpected value of the variable [class] in function [x700900_MaterialCheck], the value is ", class )
		return 0
	end

	for idx, MatSN in MaterialList do
		Count = Count + LuaFnGetAvailableItemCount( sceneId, selfId, MatSN )

		-- ÔÚÕâÀï½øÐÐÅÐ¶Ï£¬ÒÔ¼õÉÙÑ­»·´ÎÊý£¨ÌØ±ðÊÇµ±²ÄÁÏ³äÔ£Ê±£©
		if Count >= quantity then
			return 1
		end
	end

	return 0
end

----------------------------------------------------------------------------------------
--	¼¼ÄÜÊ¹ÓÃ¼ì²éº¯Êý
----------------------------------------------------------------------------------------
function x700900_AbilityCheck( sceneId, selfId, recipeId )
	local CompoundInfo = x700900_g_CompoundInfo[recipeId]
	if not CompoundInfo then
		return OR_ERROR
	end

	-- ¼ì²â±³°üÊÇ²»ÊÇÓÐ¿Õ¸ñ£¬Ã»ÓÐ¿Õ¸ñ¾Í²»ÄÜ½øÐÐ
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
		return OR_BAG_OUT_OF_SPACE
	end

	local abilityLevel = QueryHumanAbilityLevel( sceneId, selfId, CompoundInfo.abilityId )
	if abilityLevel > CompoundInfo.aLevelLimit then
		abilityLevel = CompoundInfo.aLevelLimit
	end

	-- ¼ì²éÆäËûÏûºÄ
	if GetHumanVigor( sceneId, selfId ) < x700900_CalcVigorCost( sceneId, selfId, CompoundInfo.abilityId, x700900_g_VigorCostList[abilityLevel] ) then
		return OR_NOT_ENOUGH_VIGOR
	end

	if GetHumanEnergy( sceneId, selfId ) < CompoundInfo.energyCost then
		return OR_NOT_ENOUGH_ENERGY
	end

	-- ÅÐ¶ÏÉíÉÏµÄ²ÄÁÏÊÇ·ñ×ã¹»
	local matCost = 0

	-- ²ÄÁÏµÈ¼¶
	local matLevel = CompoundInfo.recipeLevel
	local i = 1
	local matClass = CompoundInfo.matClassBase
	local ret = 0

	for i = 1, CompoundInfo.matClassCount do
		matCost = CompoundInfo.matCostBase + ( abilityLevel - matLevel ) * CompoundInfo.matFactor
		if matCost < 1 then
			matCost = 1
		end

		ret = x700900_MaterialCheck( sceneId, selfId, matClass, matCost )
		if ret == 1 then
			return OR_OK
		end

		matLevel = matLevel + 1
		matClass = matClass + 1
	end

	return OR_STUFF_LACK
end

----------------------------------------------------------------------------------------
-- ÏûºÄ²ÄÁÏ£¬ÏûºÄÍæ¼Ò quantity ÊýÁ¿µÄ class Àà²ÄÁÏ
-- ±¾º¯Êý²»±£Ö¤²ÄÁÏ×ã¹»£¬ÓÉµ÷ÓÃº¯ÊýÀ´±£Ö¤
-- class: ²ÄÁÏµÄÖÖÀà
-- quantity: ²ÄÁÏËùÐèµÄÊýÁ¿
-- ³É¹¦·µ»Ø 1£¬Ê§°Ü·µ»Ø 0
----------------------------------------------------------------------------------------
function x700900_MaterialConsume( sceneId, selfId, class, quantity )
	local MaterialList = x700900_g_CaiLiaoBiao[class]
	local Count = quantity

	if not MaterialList then
		print( "Exception: An unexpected value of the variable [class] in function [x700900_MaterialConsume], the value is ", class )
		return 0
	end

	local DelCount = 0
	for idx, ItemSerial in MaterialList do
		DelCount = LuaFnGetAvailableItemCount( sceneId, selfId, ItemSerial )

		if DelCount > 0 then
			if DelCount > Count then
				DelCount = Count
			end

			LuaFnDelAvailableItem( sceneId, selfId, ItemSerial, DelCount )
			Count = Count - DelCount

			-- ÔÚÕâÀï½øÐÐÅÐ¶Ï£¬ÒÔ¼õÉÙÑ­»·´ÎÊý£¨ÌØ±ðÊÇµ±²ÄÁÏ³äÔ£Ê±£©
			if Count < 1 then
				return 1
			end
		end
	end

	return 0
end

----------------------------------------------------------------------------------------
--	ºÏ³É½áÊø£¬½øÐÐÏà¹ØÏûºÄ
----------------------------------------------------------------------------------------
function x700900_AbilityConsume( sceneId, selfId, recipeId )
	local CompoundInfo = x700900_g_CompoundInfo[recipeId]
	if not CompoundInfo then
		return OR_ERROR
	end

	local abilityLevel = QueryHumanAbilityLevel( sceneId, selfId, CompoundInfo.abilityId )
	if abilityLevel > CompoundInfo.aLevelLimit then
		abilityLevel = CompoundInfo.aLevelLimit
	end

	-- Ê×ÏÈ½øÐÐÆäËûÏûºÄ
	if x700900_g_VigorCostList[abilityLevel] > 0 then
		local VigorValue = GetHumanVigor( sceneId, selfId ) - x700900_CalcVigorCost( sceneId, selfId, CompoundInfo.abilityId, x700900_g_VigorCostList[abilityLevel] )
		SetHumanVigor( sceneId, selfId, VigorValue )
	end

	if CompoundInfo.energyCost > 0 then
		local energyValue = GetHumanEnergy( sceneId, selfId ) - CompoundInfo.energyCost
		SetHumanEnergy( sceneId, selfId, energyValue )
	end

	-- È»ºó½øÐÐ²ÄÁÏÏûºÄ
	local matCost = 0

	-- ²ÄÁÏµÈ¼¶
	local matLevel = CompoundInfo.recipeLevel
	local i = 1
	local matClass = CompoundInfo.matClassBase
	local ret = 0

	for i = 1, CompoundInfo.matClassCount do
		matCost = CompoundInfo.matCostBase + ( abilityLevel - matLevel ) * CompoundInfo.matFactor
		if matCost < 1 then
			matCost = 1
		end

		ret = x700900_MaterialCheck( sceneId, selfId, matClass, matCost )
		if ret == 1 then
			x700900_MaterialConsume( sceneId, selfId, matClass, matCost )
			return matLevel
		end

		matLevel = matLevel + 1
		matClass = matClass + 1
	end

	return 0
end

----------------------------------------------------------------------------------------
-- ºÏ³É½áÊøÊ±µÄ³É¹¦ÂÊ¼ÆËã
----------------------------------------------------------------------------------------
function x700900_CheckForResult( sceneId, selfId, AbilityID, RecipeLevel, MatLevel )
	-- ¸¨ÖúÉú»î¼¼ÄÜ¼¶±ð
	local AssisAbilityLevel

	if AbilityID == ABILITY_PENGREN then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_YANGSHENGFA )
	elseif AbilityID == ABILITY_ZHIYAO then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_YAOLI )
	elseif AbilityID == ABILITY_KAIGUANG then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_FOFA )
	elseif AbilityID == ABILITY_SHENGHUOSHU then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_CAIHUOSHU )
	elseif AbilityID == ABILITY_NIANGJIU then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_LIANHUALUO )
	elseif AbilityID == ABILITY_XUANBINGSHU then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_CAIBINGSHU )
	elseif AbilityID == ABILITY_ZHIGU then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_JINGMAIBAIJUE )
	elseif AbilityID == ABILITY_ZHIDU then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_YINCHONGSHU )
	elseif AbilityID == ABILITY_ZHIFU then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_LINGXINSHU )
	elseif AbilityID == ABILITY_LIANDAN then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_DAOFA )
	elseif AbilityID == ABILITY_QIMENDUNJIA then
		AssisAbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_LIUYIFENGGU )
	else
		return OR_OK
	end

	-- ¸ÅÂÊ
	-- ³É¹¦ÂÊ£½10£¥£«ÏûºÄ²ÄÁÏµÈ¼¶¡Á0.5£¥£«¸¨Öú¼¼ÄÜµÈ¼¶¡Á0.2£¥
	-- local odds = 10 + MatLevel / 2 + AssisAbilityLevel / 5
	--	ÐÂµÄ³É¹¦ÂÊ£½5£¥£«ÏûºÄ²ÄÁÏµÈ¼¶¡Á0.25£¥£«¸¨Öú¼¼ÄÜµÈ¼¶¡Á0.1£¥
	local odds = 5 + MatLevel / 4 + AssisAbilityLevel / 2
	local rand = random( 100 )
	if odds >= rand then
		-- ³É¹¦
		return OR_OK
	end

	return OR_FAILURE
end

----------------------------------------------------------------------------------------
-- Éú³ÉºÏ³ÉÎï
-- class: ºÏ³ÉÎïµÄÖÖÀà
-- ³É¹¦·µ»Ø ÎïÆ· ID£¬Ê§°Ü·µ»Ø -1
----------------------------------------------------------------------------------------
function x700900_ProduceComplex( sceneId, selfId, class, RecipeLevel, AbilityLevel, AbilityMaxLevel )
	local ComplexList = x700900_g_ChanPinBiao[class]

	if not ComplexList then
		print( "Exception: An unexpected value of the variable [class] in function [x700900_ProduceComplex], the value is ", class )
		return -1
	end

	-- Ëæ»ú³öÒ»¸öÊý [1, x700900_g_RandNum]
	local rand = random( x700900_g_RandNum )
	local i = 0
	local item
	local Quality = 0
	for i, item in ComplexList do
		if item.Odds >= rand then
			Quality = CallScriptFunction( ABILITYLOGIC_ID, "CalcQuality", sceneId, RecipeLevel, AbilityLevel, AbilityMaxLevel, item.ID )

			if LuaFnTryRecieveItem( sceneId, selfId, item.ID, QUALITY_MUST_BE_CHANGE ) < 0 then
				return -1
			end

			return item.ID
		end
	end

	return -1
end

----------------------------------------------------------------------------------------
--	²ú³ö²úÆ·
----------------------------------------------------------------------------------------
function x700900_AbilityProduce( sceneId, selfId, recipeId )
	local CompoundInfo = x700900_g_CompoundInfo[recipeId]
	if not CompoundInfo then
		return OR_ERROR
	end

	local abilityLevel = QueryHumanAbilityLevel( sceneId, selfId, CompoundInfo.abilityId )
	local bCanGainExp = 1

	if abilityLevel > CompoundInfo.aLevelLimit then
		abilityLevel = CompoundInfo.aLevelLimit
		bCanGainExp = 0
	end

	-- ÏûºÄ²ÄÁÏ
	local matLevel = x700900_AbilityConsume( sceneId, selfId, recipeId )
	if matLevel == 0 then
		return OR_ERROR
	end

	if bCanGainExp == 1 then						-- »ñµÃÊìÁ·¶È
		CallScriptFunction( ABILITYLOGIC_ID, "GainExperience", sceneId, selfId, CompoundInfo.abilityId, matLevel )
	end

	-- ÅÐ¶ÏÊÇ·ñºÏ³É³É¹¦
	local productClass = 0
	local productRet1 = -1
	local productRet2 = -1
	local ret = x700900_CheckForResult( sceneId, selfId, CompoundInfo.abilityId, CompoundInfo.recipeLevel, matLevel )
	if ret == OR_OK then							-- ºÏ³É³É¹¦
		productClass = CompoundInfo.succProductClass
		productRet1 = x700900_ProduceComplex( sceneId, selfId, productClass, CompoundInfo.recipeLevel, abilityLevel, CompoundInfo.aMaxLevel )
	end

	local odds = random( x700900_g_RandNum )
	-- ¸ø¸öÄ¬ÈÏÖµ
	productClass = CompoundInfo.failProductClass.defaultClass

	local failProduct = CompoundInfo.failProductClass[abilityLevel]
	if not failProduct then
		print( "Exception: An unexpected value of the variable [abilityLevel], the value is ", abilityLevel )
	else
		local i
		for i = 1, getn( failProduct ) do
			if odds <= failProduct[i].odds then
				productClass = failProduct[i].prodClass
				break
			end
		end
	end

	productRet2 = x700900_ProduceComplex( sceneId, selfId, productClass, CompoundInfo.recipeLevel, abilityLevel, CompoundInfo.aMaxLevel )
	if productRet2 > -1 then
		LuaFnSendAbilitySuccessMsg( sceneId, selfId, CompoundInfo.abilityId, recipeId, productRet2 )
		LuaFnAuditAbility(sceneId, selfId, CompoundInfo.abilityId, recipeId, 1);

		if productRet1 > -1 then
			local strText = "Th§t b¤t ng¶, các hÕ ðã ðÕt ðßþc #{_ITEM" .. productRet1 .. "}!"
			Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
		end

		return OR_OK
	end
	LuaFnAuditAbility(sceneId, selfId, CompoundInfo.abilityId, recipeId, 0);
	return OR_ERROR
end

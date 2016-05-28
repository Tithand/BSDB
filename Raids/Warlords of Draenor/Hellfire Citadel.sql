-- Fel Lord Zakuun SAI
SET @ENTRY := 89890;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,25500,25500,40000,40000,11,179406,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fel Lord Zakuun - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,0,0,100,0,36500,36500,40000,40000,11,189009,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fel Lord Zakuun - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,2,0,0,0,100,0,7000,7000,40000,40000,11,179583,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fel Lord Zakuun - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,3,0,0,0,100,0,16000,16000,40000,40000,11,179711,0,0,0,0,0,2,0,0,0,0,0,0,0,"Fel Lord Zakuun - In Combat - Cast '<Spell not found!>'"),
(@ENTRY,0,4,0,0,0,100,1,87000,87000,0,0,11,179667,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fel Lord Zakuun - In Combat - Cast '<Spell not found!>' (No Repeat)"),
(@ENTRY,0,5,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"Npc - Event - Action (phase) (dungeon difficulty)");

-----------------------------------
-- Area: Ru'Lud Gardens
--  NPC: Neraf-Najiruf
-- Involved in Quests: Save my Sister
-- @zone 243
-- !pos -36 2 60
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/zones/RuLude_Gardens/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    saveMySister = player:getQuestStatus(JEUNO,SAVE_MY_SISTER);

    if (saveMySister == QUEST_AVAILABLE and player:getVar("saveMySisterVar") == 3) then
        player:startEvent(98); -- Real start of this quest (with addquest)
    elseif (saveMySister == QUEST_ACCEPTED) then
        player:startEvent(99); -- During quest
    elseif (saveMySister == QUEST_COMPLETED and player:hasKeyItem(dsp.ki.DUCAL_GUARDS_LANTERN) == true) then
        player:startEvent(97); -- last CS (after talk with baudin)
    else
        player:startEvent(156); -- Standard dialog
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 98) then
        player:addQuest(JEUNO,SAVE_MY_SISTER);
        player:setVar("saveMySisterVar", 0);
        player:addKeyItem(dsp.ki.DUCAL_GUARDS_LANTERN);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.DUCAL_GUARDS_LANTERN);
    elseif (csid == 97) then
        player:delKeyItem(dsp.ki.DUCAL_GUARDS_LANTERN);
        player:setVar("saveMySisterFireLantern", 0);
    end
end;


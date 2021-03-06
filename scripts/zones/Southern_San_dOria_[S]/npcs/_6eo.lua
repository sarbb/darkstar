-----------------------------------
-- Area: Southern SandOria [S]
--  NPC: Door:House
-- @zone 80
-- !pos 148 0 27
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/quests");
require("scripts/globals/settings");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    if (player:getQuestStatus(CRYSTAL_WAR, KNOT_QUITE_THERE) == QUEST_ACCEPTED and player:getVar("KnotQuiteThere") == 3) then
        player:startEvent(63);
    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 63) then
        if (player:getFreeSlotsCount() == 0) then
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,751);
        else
            player:completeQuest(CRYSTAL_WAR, KNOT_QUITE_THERE);
            player:addItem(751);
            player:messageSpecial(ITEM_OBTAINED,751); --Platinum Beastcoin
            player:setVar("KnotQuiteThere",0);
        end
    end
end;

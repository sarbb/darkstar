-----------------------------------
-- Area: Lower Delkfutt's Tower
--  NPC: Cermet Door
-- Cermet Door for Sandy Ambassador
-- San d'Orian Mission 3.3 "Appointment to Jeuno"
-- !pos 636 16 20 184
-----------------------------------
package.loaded["scripts/zones/Lower_Delkfutts_Tower/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/missions");
require("scripts/zones/Lower_Delkfutts_Tower/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)

    if (player:getCurrentMission(SANDORIA) == APPOINTMENT_TO_JEUNO and player:getVar("MissionStatus") == 4) then
        if (trade:hasItemQty(549,1) and trade:getItemCount() == 1) then -- Trade Delkfutt Key
            player:startEvent(0);
        end
    end

end;

function onTrigger(player,npc)

    local currentMission = player:getCurrentMission(SANDORIA);

    if (currentMission == APPOINTMENT_TO_JEUNO and player:getVar("MissionStatus") == 4 and player:hasKeyItem(dsp.ki.DELKFUTT_KEY) == false) then
        player:messageSpecial(THE_DOOR_IS_FIRMLY_SHUT_OPEN_KEY);
    elseif (currentMission == APPOINTMENT_TO_JEUNO and player:getVar("MissionStatus") == 4 and player:hasKeyItem(dsp.ki.DELKFUTT_KEY)) then
        player:startEvent(0);
    else
        player:messageSpecial(DOOR_FIRMLY_SHUT);
    end

    return 1;

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)

    if (csid == 0) then
        if (player:hasKeyItem(dsp.ki.DELKFUTT_KEY) == false) then
            player:tradeComplete();
            player:addKeyItem(dsp.ki.DELKFUTT_KEY);
            player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.DELKFUTT_KEY);
        end
        player:setVar("MissionStatus",5);
    end

end;
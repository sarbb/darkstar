-----------------------------------
-- Area: Davoi
--  NPC: !
-- Involved in Mission: The Davoi Report
-- !pos 164 0.1 -21 149
-----------------------------------
package.loaded["scripts/zones/Davoi/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/missions");
require("scripts/globals/keyitems");
require("scripts/zones/Davoi/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    local CurrentMission = player:getCurrentMission(SANDORIA)

    if (CurrentMission == THE_DAVOI_REPORT and player:getVar("MissionStatus") == 1) then
        player:setVar("MissionStatus",2);
        player:addKeyItem(dsp.ki.LOST_DOCUMENT);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.LOST_DOCUMENT);
    elseif (CurrentMission == INFILTRATE_DAVOI and player:getVar("MissionStatus") >= 6 and player:getVar("MissionStatus") <= 9) then
        local X = npc:getXPos();
        local Z = npc:getZPos();

        if (X >= 292 and X <= 296 and Z >= -30 and Z <= -26 and player:hasKeyItem(dsp.ki.EAST_BLOCK_CODE) == false) then
            player:setVar("MissionStatus",player:getVar("MissionStatus") + 1);
            player:addKeyItem(dsp.ki.EAST_BLOCK_CODE);
            player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.EAST_BLOCK_CODE);
        elseif (X >= 333 and X <= 337 and Z >= -138 and Z <= -134 and player:hasKeyItem(dsp.ki.SOUTH_BLOCK_CODE) == false) then
            player:setVar("MissionStatus",player:getVar("MissionStatus") + 1);
            player:addKeyItem(dsp.ki.SOUTH_BLOCK_CODE);
            player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.SOUTH_BLOCK_CODE);
        elseif (X >= 161 and X <= 165 and Z >= -20 and Z <= -16 and player:hasKeyItem(dsp.ki.NORTH_BLOCK_CODE) == false) then
            player:setVar("MissionStatus",player:getVar("MissionStatus") + 1);
            player:addKeyItem(dsp.ki.NORTH_BLOCK_CODE);
            player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.NORTH_BLOCK_CODE);
        else
            player:messageSpecial(YOU_SEE_NOTHING);
        end
    else
        player:messageSpecial(YOU_SEE_NOTHING);
    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
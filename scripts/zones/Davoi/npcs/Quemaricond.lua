-----------------------------------
-- Area: Davoi
--  NPC: Quemaricond
-- Involved in Mission: Infiltrate Davoi
-- !pos 23 0.1 -23 149
-----------------------------------
package.loaded["scripts/zones/Davoi/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/missions");
require("scripts/globals/keyitems");
require("scripts/zones/Davoi/TextIDs");
require("scripts/globals/pathfind");
-----------------------------------

local path =
{
    20.6, 0, -23,
    46, 0, -19,
    53.5, -1.8, -19,
    61, -1.1, -18.6,
    67.3, -1.5, -18.6,
    90, -0.5, -19
};

function onSpawn(npc)
    npc:initNpcAi();
    npc:setPos(pathfind.first(path));
    onPath(npc);
end;

function onPath(npc)

    pathfind.patrol(npc, path);
end;

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    if (player:getCurrentMission(SANDORIA) == INFILTRATE_DAVOI and player:getVar("MissionStatus") == 3) then
        player:startEvent(117);
        npc:wait();
    else
        player:showText(npc, QUEMARICOND_DIALOG);
        npc:wait(2000);
    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option,npc)

    if (csid == 117) then
        player:setVar("MissionStatus",4);
        player:addKeyItem(dsp.ki.ROYAL_KNIGHTS_DAVOI_REPORT);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.ROYAL_KNIGHTS_DAVOI_REPORT);
    end

    npc:wait(0);
end;
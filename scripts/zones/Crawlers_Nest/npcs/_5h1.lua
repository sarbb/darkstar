-----------------------------------
-- Area: Crawlers' Nest
--  NPC: Strange Apparatus
-- !pos 214 0 -339 197
-----------------------------------
package.loaded["scripts/zones/Crawlers_Nest/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Crawlers_Nest/TextIDs")
require("scripts/globals/strangeapparatus")
-----------------------------------

function onTrade(player,npc,trade)
    dsp.strangeApparatus.onTrade(player, trade, 2)
end

function onTrigger(player,npc)
    dsp.strangeApparatus.onTrigger(player, 0)
end

function onEventUpdate(player,csid,option)
    if csid == 0 then
        dsp.strangeApparatus.onEventUpdate(player, option)
    end
end

function onEventFinish(player,csid,option)
    if csid == 2 then
        dsp.strangeApparatus.onEventFinish(player)
    end
end

-----------------------------------
-- Area: Windurst Waters
--   NPC: Pursuivant
-- Type: Pursuivant
-- @zone 238
-- !pos 113.971 -3.077 51.524
--
-- Auto-Script: Requires Verification (Verfied By Brawndo)
-----------------------------------
package.loaded["scripts/zones/Windurst_Waters/TextIDs"] = nil;
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:startEvent(870);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;


-----------------------------------
-- Area: Windurst Waters (S)
--   NPC: Lutete
-- Type: Standard NPC
-- @zone 94
-- !pos 169.205 -0.879 -9.107
--
-- Auto-Script: Requires Verification (Verified by Brawndo)
-----------------------------------
package.loaded["scripts/zones/Windurst_Waters_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Windurst_Waters_[S]/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    player:showText(npc, LUTETE_DIALOG);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;


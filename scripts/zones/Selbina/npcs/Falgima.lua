-----------------------------------
-- Area: Selbina
--  NPC: Falgima
-- Standard Merchant NPC
-----------------------------------
package.loaded["scripts/zones/Selbina/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Selbina/TextIDs");
require("scripts/globals/shop");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    player:showText(npc,FALGIMA_SHOP_DIALOG);

    local stock =
    {
        0x1288,5351,        -- Scroll of Invisible
     0x1289,2325,        -- Scroll of Sneak
     0x128A,1204,        -- Scroll of Deodorize
     0x13F0,30360}        -- Scroll of Flurry

    showShop(player, STATIC, stock);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
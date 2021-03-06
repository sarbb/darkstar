-----------------------------------
-- Attachment: Turbo Charger II
-----------------------------------
require("scripts/globals/status");

function onEquip(pet)
    pet:addMod(dsp.mod.HASTE_MAGIC, 70)
end

function onUnequip(pet)
    pet:delMod(dsp.mod.HASTE_MAGIC, 70)
end

function onManeuverGain(pet,maneuvers)
    if (maneuvers == 1) then
        pet:addMod(dsp.mod.HASTE_MAGIC, 100);
    elseif (maneuvers == 2) then
        pet:addMod(dsp.mod.HASTE_MAGIC, 120);
    elseif (maneuvers == 3) then
        pet:addMod(dsp.mod.HASTE_MAGIC, 148);
    end
end

function onManeuverLose(pet,maneuvers)
    if (maneuvers == 1) then
        pet:delMod(dsp.mod.HASTE_MAGIC, 100);
    elseif (maneuvers == 2) then
        pet:delMod(dsp.mod.HASTE_MAGIC, 120);
    elseif (maneuvers == 3) then
        pet:delMod(dsp.mod.HASTE_MAGIC, 148);
    end
end

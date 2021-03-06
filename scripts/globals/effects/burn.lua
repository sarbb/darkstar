-----------------------------------
--
--     dsp.effect.BURN
--
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
    target:addMod(dsp.mod.REGEN_DOWN, effect:getPower());
    target:addMod(dsp.mod.INT, -getElementalDebuffStatDownFromDOT(effect:getPower()));
end;

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target,effect)
end;

-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target,effect)
    target:delMod(dsp.mod.REGEN_DOWN, effect:getPower());
    target:delMod(dsp.mod.INT, -getElementalDebuffStatDownFromDOT(effect:getPower()));
end;
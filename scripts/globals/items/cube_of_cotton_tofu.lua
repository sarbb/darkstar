-----------------------------------------
-- ID: 5233
-- Item: cube_of_cotton_tofu
-- Food Effect: 5Min, All Races
-----------------------------------------
-- Health % 10
-- Health Cap 30
-- Magic % 10
-- Magic Cap 30
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,300,5233);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(dsp.mod.FOOD_HPP, 10);
    target:addMod(dsp.mod.FOOD_HP_CAP, 30);
    target:addMod(dsp.mod.FOOD_MPP, 10);
    target:addMod(dsp.mod.FOOD_MP_CAP, 30);
end;

function onEffectLose(target, effect)
    target:delMod(dsp.mod.FOOD_HPP, 10);
    target:delMod(dsp.mod.FOOD_HP_CAP, 30);
    target:delMod(dsp.mod.FOOD_MPP, 10);
    target:delMod(dsp.mod.FOOD_MP_CAP, 30);
end;

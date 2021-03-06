-----------------------------------
require("scripts/globals/status");
-----------------------------------

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
    target:addMod(dsp.mod.HP, 9000);
    target:addMod(dsp.mod.MP, 9000);
    target:addMod(dsp.mod.REGEN, 300);
    target:addMod(dsp.mod.REFRESH, 300);
    target:addMod(dsp.mod.REGAIN, 500);
    target:addMod(dsp.mod.STR, 900);
    target:addMod(dsp.mod.DEX, 900);
    target:addMod(dsp.mod.VIT, 900);
    target:addMod(dsp.mod.AGI, 900);
    target:addMod(dsp.mod.INT, 900);
    target:addMod(dsp.mod.MND, 900);
    target:addMod(dsp.mod.CHR, 900);
    target:addMod(dsp.mod.ATT, 9000);
    target:addMod(dsp.mod.DEF, 9000);
    target:addMod(dsp.mod.ACC, 1000);
    target:addMod(dsp.mod.EVA, 1000);
    target:addMod(dsp.mod.MATT, 900);
    target:addMod(dsp.mod.RACC, 1000);
    target:addMod(dsp.mod.RATT, 9000);
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
    target:delMod(dsp.mod.HP, 9000);
    target:delMod(dsp.mod.MP, 9000);
    target:delMod(dsp.mod.REGEN, 300);
    target:delMod(dsp.mod.REFRESH, 300);
    target:delMod(dsp.mod.REGAIN, 500);
    target:delMod(dsp.mod.STR, 900);
    target:delMod(dsp.mod.DEX, 900);
    target:delMod(dsp.mod.VIT, 900);
    target:delMod(dsp.mod.AGI, 900);
    target:delMod(dsp.mod.INT, 900);
    target:delMod(dsp.mod.MND, 900);
    target:delMod(dsp.mod.CHR, 900);
    target:delMod(dsp.mod.ATT, 9000);
    target:delMod(dsp.mod.DEF, 9000);
    target:delMod(dsp.mod.ACC, 1000);
    target:delMod(dsp.mod.EVA, 1000);
    target:delMod(dsp.mod.MATT, 900);
    target:delMod(dsp.mod.RACC, 1000);
    target:delMod(dsp.mod.RATT, 9000);
end;

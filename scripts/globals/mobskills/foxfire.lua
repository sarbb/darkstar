---------------------------------------------
--  Foxfire
--
--  Description: Damage varies with TP. Additional effect: "Stun."
--  Type: Physical (Blunt)
-- RDM, THF, PLD, BST, BRD, RNG, NIN, and COR fomors).
--
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    local job = mob:getMainJob();
    if (job == dsp.job.RDM or job == dsp.job.THF or job == dsp.job.PLD or job == dsp.job.BST or job == dsp.job.RNG or job == dsp.job.BRD or job == dsp.job.NIN or job == dsp.job.COR) then
        return 0;
    end
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)

    local numhits = 1;
    local accmod = 1;
    local dmgmod = 2.6;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,1,2,3);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);

    local typeEffect = dsp.effect.STUN;

    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 1, 0, 6);

    target:delHP(dmg);
    return dmg;
end;

/mob/living/basic/z12/walker
	name = "walker"
	desc = "A terrible beast, blood around it's mouth. It never stops to feast regardless of hunger."
	icon = 'icons/mob/simple/simple_human.dmi'
	icon_state = "zomb"
	icon_living = "zomb"
	icon_dead = "zomb_dead"
	icon_gib = "zomb_gib"
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	sentience_type = SENTIENCE_HUMANOID
	maxHealth = 60
	health = 60
	basic_mob_flags = DEL_ON_DEATH
	speed = 1.1
	environment_smash = ENVIRONMENT_SMASH_STRUCTURES
	melee_damage_lower = 10
	melee_damage_upper = 10
	attack_verb_continuous = "bites"
	attack_verb_simple = "bit"
	attack_sound = 'sound/z12/zattack.ogg'
	combat_mode = TRUE
	unsuitable_atmos_damage = 7.5
	faction = list(ROLE_ZOMBIE)
	ai_controller = /datum/ai_controller/basic_controller/syndicate

	var/loot = list(/obj/effect/mob_spawn/corpse/human/syndicatesoldier)

/mob/living/basic/z12/walker/Initialize(mapload)
	. = ..()
	if(LAZYLEN(loot))
		AddElement(/datum/element/death_drops, loot)
	AddElement(/datum/element/footstep, footstep_type = FOOTSTEP_MOB_SHOE)

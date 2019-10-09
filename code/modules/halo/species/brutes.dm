/datum/species/brutes
	name = "Jiralhanae"
	name_plural = "Jiralhanae"
	blurb = "The Jiralhanae (Latin, Servus ferox, translated to \"Wild Slave\"), \
		known by humans as Brutes, are the most recent members of the Covenant. \
		They are a large, bipedal, warlike species resembling apes that resent \
		the Sangheili for their respected position in the Covenant. They are organised\
		into tribes and packs, and in combat utilise crute brute force weaponry.\
		If they are hurt or angry enough, they can enter a beserk rage where they are \
		near immune to pain and damage."
	flesh_color = "#4A4A64"
	blood_color = "#E61A65"
	icobase = 'code/modules/halo/icons/species/jiralhanae_mob.dmi' //The DMI needed modification to fit the usual format (see other species' dmis)
	deform = 'code/modules/halo/icons/species/jiralhanae_mob.dmi'
	icon_template = 'code/modules/halo/icons/species/jiralhanae_template.dmi'
	default_language = "Sangheili"
	language = "Sangheili"
	additional_langs = list("Doisacci")
	flags = NO_MINOR_CUT
	total_health = 300 //Higher base health than spartans and sangheili
	radiation_mod = 0.6
	spawn_flags = SPECIES_CAN_JOIN
	brute_mod = 0.7 //receives 70% of brute damage
	pain_mod = 0.25 //receives a quarter of pain damage
	burn_mod = 0.7  // receives 70% of burn damage
	default_faction = "Covenant"

	equipment_slowdown_multiplier = 0.5
	ignore_equipment_threshold = 3

/datum/species/brutes/equip_survival_gear(var/mob/living/carbon/human/H,var/extendedtank = 1)
	return

/datum/species/brutes/get_random_name(var/gender)
	var/newname = pick(GLOB.first_names_jiralhanae)
	return newname

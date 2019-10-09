
#include "../faction_base_unsc.dm"

#include "Cassius_Station_1.dmm"
#include "Cassius_Station_2.dmm"

/obj/effect/overmap/ship/unsc_cassius
	name = "Cassius Station"
	desc = "Located in geosynchronous above the planet, its MAC gun can put a round clean through a Covenant capital ship."
	icon = 'code/modules/halo/icons/overmap/faction_misc.dmi'
	icon_state = "SMAC"
	faction = "UNSC"
	overmap_spawn_near_me = list(/obj/effect/overmap/ship/odst_corvette)
	base = 1
	block_slipspace = 1
	fore_dir = WEST

	parent_area_type = /area/faction_base/unsc

	map_bounds = list(37,117,114,68) //Format: (TOP_LEFT_X,TOP_LEFT_Y,BOTTOM_RIGHT_X,BOTTOM_RIGHT_Y)

/obj/effect/overmap/ship/unsc_cassius/Initialize()
	. = ..()
	GLOB.overmap_tiles_uncontrolled -= range(7,src)

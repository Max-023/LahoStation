
/obj/structure/closet/covenant
	name = "storage crate"
	desc = "It's a basic storage unit for the Covenant."
	icon = 'crate.dmi'

/obj/structure/ore_box/covenant
	icon = 'crate.dmi'

/obj/structure/covenant_vault
	name = "vault"
	desc = "It's a secure storage depository for high value Covenant items. Once something goes in it isn't coming out."
	icon = 'crate.dmi'
	icon_state = "vault"

/obj/structure/covenant_vault/MouseDrop_T(var/atom/movable/A, var/mob/user)
	if(!CanMouseDrop(A, user))
		return
	attempt_deposit(A, user)

/obj/structure/covenant_vault/attackby(var/obj/item/I, var/mob/living/user)
	attempt_deposit(I, user)

/obj/structure/covenant_vault/proc/attempt_deposit(var/atom/movable/A, var/mob/user)
	user.visible_message("<span class='notice'>\The [user] begins placing \the [A] onto \the [src].</span>", "<span class='notice'>You start placing \the [A] onto \the [src].</span>")
	if(!do_after(user, 30, src))
		return
	A.loc = src
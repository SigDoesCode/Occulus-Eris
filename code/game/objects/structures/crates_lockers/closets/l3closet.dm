/obj/structure/closet/l3closet
	name = "level-3 biohazard suit closet"
	desc = "It's a storage unit for level-3 biohazard gear."
	icon_state = "bio"

/obj/structure/closet/l3closet/general

/obj/structure/closet/l3closet/general/populate_contents()
	new /obj/item/clothing/suit/bio_suit/general(src)
	new /obj/item/clothing/head/bio_hood/general(src)

/obj/structure/closet/l3closet/virology
	icon_door = "bio_viro"

/obj/structure/closet/l3closet/virology/populate_contents()
	new /obj/item/clothing/suit/bio_suit/virology(src)
	new /obj/item/clothing/head/bio_hood/virology(src)
	new /obj/item/clothing/mask/breath(src)
	new /obj/item/tank/oxygen(src)

/obj/structure/closet/l3closet/security
	icon_door = "bio_sec"

/obj/structure/closet/l3closet/security/populate_contents()
	new /obj/item/clothing/suit/bio_suit/security(src)
	new /obj/item/clothing/head/bio_hood/security(src)

/obj/structure/closet/l3closet/janitor
	icon_door = "bio_jan"

/obj/structure/closet/l3closet/janitor/populate_contents()
	new /obj/item/clothing/suit/bio_suit/janitor(src)
	new /obj/item/clothing/head/bio_hood/janitor(src)

/obj/structure/closet/l3closet/scientist

/obj/structure/closet/l3closet/scientist/populate_contents()
	new /obj/item/clothing/suit/bio_suit/scientist(src)
	new /obj/item/clothing/head/bio_hood/scientist(src)

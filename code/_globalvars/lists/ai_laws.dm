GLOBAL_LIST_INIT(lawset_laws, get_lawset_laws())

/proc/get_lawset_laws()
	. = list()

	var/datum/ai_laws/lawset_datum = null

	for(var/lawset in subtypesof(/datum/ai_laws))
		lawset_datum = new lawset

		.["[lawset]"] = list()

		.["[lawset]"]["hacked"] = list()

		.["[lawset]"]["hacked"] = lawset_datum.hacked

		.["[lawset]"]["ion"] = list()

		.["[lawset]"]["ion"] = lawset_datum.ion

		.["[lawset]"]["inherent"] = list()

		.["[lawset]"]["inherent"] = lawset_datum.inherent

		.["[lawset]"]["supplied"] = list()

		.["[lawset]"]["supplied"] = lawset_datum.supplied

GLOBAL_LIST_INIT(lawset_law_lists, get_lawset_law_lists())

/proc/get_lawset_law_lists()
	. = list()

	var/datum/ai_laws/lawset_datum = null

	for(var/lawset in subtypesof(/datum/ai_laws))
		lawset_datum = new lawset

		.[lawset_datum.name] = lawset_datum.get_law_list(TRUE, FALSE, FALSE)

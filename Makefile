EXCLUDE_VERSIONS += 3.14
EXCLUDE_ARCHS += eldk

include $(EPICS_ENV_PATH)/module.Makefile

USR_DEPENDENCIES += modbus,2.9+

MISCS = $(AUTOMISCS)
MISCS += misc/bakeout-freia.req

OPIS = opi

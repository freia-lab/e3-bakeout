# This should be a test or example startup script

require bakeout

iocshLoad("$(bakeout_DIR)/bakeout.iocsh",  "IP_ADDR=192.168.1.104:2020, IOCNAME=ioc13-bake")

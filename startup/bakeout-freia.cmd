epicsEnvSet("DT320_PREFIX" "$(DT320PREFIX=Htr)")

drvAsynIPPortConfigure("IFD9506","$(IP_ADDR)",0,0,1)

#modbusInterposeConfig(portName, 
#                      linkType,
#                      timeoutMsec,
#                      writeDelayMsec)

modbusInterposeConfig("IFD9506",1,2000,4)

#drvModbusAsynConfigure(portName, 
#                       tcpPortName,
#                       slaveAddress, 
#                       modbusFunction, 
#                       modbusStartAddress, 
#                       modbusLength,
#                       dataType,
#                       pollMsec, 
#                       plcType);

drvModbusAsynConfigure(DT320_1-1, "IFD9506", 1, 3, 0x1000, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1-2, "IFD9506", 2, 3, 0x1000, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1-3, "IFD9506", 3, 3, 0x1000, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1-4, "IFD9506", 4, 3, 0x1000, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1-5, "IFD9506", 5, 3, 0x1000, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1-6, "IFD9506", 6, 3, 0x1000, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1-7, "IFD9506", 7, 3, 0x1000, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1-8, "IFD9506", 8, 3, 0x1000, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1-9, "IFD9506", 9, 3, 0x1000, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1-10,"IFD9506", 10,3, 0x1000, 8, 4, 2000, "dt320")

drvModbusAsynConfigure(DT320_7-1, "IFD9506", 1, 3, 0x1030, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_7-2, "IFD9506", 2, 3, 0x1030, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_7-3, "IFD9506", 3, 3, 0x1030, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_7-4, "IFD9506", 4, 3, 0x1030, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_7-5, "IFD9506", 5, 3, 0x1030, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_7-6, "IFD9506", 6, 3, 0x1030, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_7-7, "IFD9506", 7, 3, 0x1030, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_7-8, "IFD9506", 8, 3, 0x1030, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_7-9, "IFD9506", 9, 3, 0x1030, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_7-10,"IFD9506", 10,3, 0x1030, 8, 0, 2000, "dt320")

drvModbusAsynConfigure(DT320_1R-1, "IFD9506", 1, 3, -1, 1, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1R-2, "IFD9506", 2, 3, -1, 1, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1R-3, "IFD9506", 3, 3, -1, 1, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1R-4, "IFD9506", 4, 3, -1, 1, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1R-5, "IFD9506", 5, 3, -1, 1, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1R-6, "IFD9506", 6, 3, -1, 1, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1R-7, "IFD9506", 7, 3, -1, 1, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1R-8, "IFD9506", 8, 3, -1, 1, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1R-9, "IFD9506", 9, 3, -1, 1, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1R-10,"IFD9506", 10,3, -1, 1, 4, 2000, "dt320")

drvModbusAsynConfigure(DT320_8R-1, "IFD9506", 1, 3, -1, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_8R-2, "IFD9506", 2, 3, -1, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_8R-3, "IFD9506", 3, 3, -1, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_8R-4, "IFD9506", 4, 3, -1, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_8R-5, "IFD9506", 5, 3, -1, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_8R-6, "IFD9506", 6, 3, -1, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_8R-7, "IFD9506", 7, 3, -1, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_8R-8, "IFD9506", 8, 3, -1, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_8R-9, "IFD9506", 9, 3, -1, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_8R-10,"IFD9506", 10,3, -1, 8, 4, 2000, "dt320")

drvModbusAsynConfigure(DT320_1W-1, "IFD9506", 1, 6, -1, 1, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_1W-2, "IFD9506", 2, 6, -1, 1, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_1W-3, "IFD9506", 3, 6, -1, 1, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_1W-4, "IFD9506", 4, 6, -1, 1, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_1W-5, "IFD9506", 5, 6, -1, 1, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_1W-6, "IFD9506", 6, 6, -1, 1, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_1W-7, "IFD9506", 7, 6, -1, 1, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_1W-8, "IFD9506", 8, 6, -1, 1, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_1W-9, "IFD9506", 9, 6, -1, 1, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_1W-10,"IFD9506", 10,6, -1, 1, 4, 1, "dt320")

drvModbusAsynConfigure(DT320_8W-1, "IFD9506", 1, 16, -1, 8, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_8W-2, "IFD9506", 2, 16, -1, 8, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_8W-3, "IFD9506", 3, 16, -1, 8, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_8W-4, "IFD9506", 4, 16, -1, 8, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_8W-5, "IFD9506", 5, 16, -1, 8, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_8W-6, "IFD9506", 6, 16, -1, 8, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_8W-7, "IFD9506", 7, 16, -1, 8, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_8W-8, "IFD9506", 8, 16, -1, 8, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_8W-9, "IFD9506", 9, 16, -1, 8, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_8W-10,"IFD9506", 10,16, -1, 8, 4, 1, "dt320")

asynSetTraceIOMask "IFD9506",0,4   # Enable traceIOHex
#asynSetTraceMask "IFD9506",0,9     # Enable traceError and traceIODriver
asynSetTraceMask "IFD9506",0,1     # Enable traceError

dbLoadRecords("asynRecord.db","P='$(DT320_PREFIX)',R=:asynRec,PORT='IFD9506',ADDR='0',IMAX='64',OMAX='64'")

dbLoadRecords("bakeout-freia.db", "DT320_PREFIX=$(DT320_PREFIX)")

iocInit


# Read current settings
#
dbpf $(DT320_PREFIX):Ctrl-TT01:cmdUpdate.PROC 1
dbpf $(DT320_PREFIX):Ctrl-TT02:cmdUpdate.PROC 1
dbpf $(DT320_PREFIX):Ctrl-TT03:cmdUpdate.PROC 1
dbpf $(DT320_PREFIX):Ctrl-TT04:cmdUpdate.PROC 1
dbpf $(DT320_PREFIX):Ctrl-TT05:cmdUpdate.PROC 1
dbpf $(DT320_PREFIX):Ctrl-TT06:cmdUpdate.PROC 1
dbpf $(DT320_PREFIX):Ctrl-TT07:cmdUpdate.PROC 1
dbpf $(DT320_PREFIX):Ctrl-TT08:cmdUpdate.PROC 1
dbpf $(DT320_PREFIX):Ctrl-TT09:cmdUpdate.PROC 1
dbpf $(DT320_PREFIX):Ctrl-TT10:cmdUpdate.PROC 1

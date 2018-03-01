epicsEnvSet("DT320_PREFIX" "$(DT320PREFIX=Htr)")

drvAsynIPPortConfigure("IFD9506","$(IP_ADDR)",0,0,1)

#modbusInterposeConfig(portName, 
#                      linkType,
#                      timeoutMsec,
#                      writeDelayMsec)

modbusInterposeConfig("IFD9506",1,2000,10)

#drvModbusAsynConfigure(portName, 
#                       tcpPortName,
#                       slaveAddress, 
#                       modbusFunction, 
#                       modbusStartAddress, 
#                       modbusLength,
#                       dataType,
#                       pollMsec, 
#                       plcType);

drvModbusAsynConfigure(DT320_1, "IFD9506", 1, 3, 0x1000, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_2, "IFD9506", 1, 3, 0x1008, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_3, "IFD9506", 1, 3, 0x1010, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_4, "IFD9506", 1, 3, 0x1018, 8, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_5, "IFD9506", 1, 3, 0x1020, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_6, "IFD9506", 1, 3, 0x1028, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_7, "IFD9506", 1, 3, 0x1030, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_8, "IFD9506", 1, 3, 0x1038, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_9, "IFD9506", 1, 3, 0x1200, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_73, "IFD9506", 1, 3, 0x1400, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_75, "IFD9506", 1, 3, 0x1410, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_77, "IFD9506", 1, 3, 0x1420, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_79, "IFD9506", 1, 3, 0x1100, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_80, "IFD9506", 1, 3, 0x1108, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_81, "IFD9506", 1, 3, 0x1110, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_82, "IFD9506", 1, 3, 0x1118, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_83, "IFD9506", 1, 3, 0x1120, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_84, "IFD9506", 1, 3, 0x1128, 8, 0, 2000, "dt320")
drvModbusAsynConfigure(DT320_1R, "IFD9506", 1, 3, -1, 1, 4, 2000, "dt320")
drvModbusAsynConfigure(DT320_1W, "IFD9506", 1, 6, -1, 1, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_8W, "IFD9506", 1, 16, -1, 8, 4, 1, "dt320")

asynSetTraceIOMask "IFD9506",0,4   # Enable traceIOHex
#asynSetTraceMask "IFD9506",0,9     # Enable traceError and traceIODriver
asynSetTraceMask "IFD9506",0,1     # Enable traceError

dbLoadRecords("asynRecord.db","P='$(DT320_PREFIX)',R=:asynRec,PORT='IFD9506',ADDR='0',IMAX='64',OMAX='64'")

dbLoadRecords "tc_dt320-1.template",  "P=$(DT320_PREFIX), PORT=DT320_1,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-2.template",  "P=$(DT320_PREFIX), PORT=DT320_2,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-3.template",  "P=$(DT320_PREFIX), PORT=DT320_3,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-4.template",  "P=$(DT320_PREFIX), PORT=DT320_4,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-5.template",  "P=$(DT320_PREFIX), PORT=DT320_5,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-6.template",  "P=$(DT320_PREFIX), PORT=DT320_6,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-7.template",  "P=$(DT320_PREFIX), PORT=DT320_7,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-8.template",  "P=$(DT320_PREFIX), PORT=DT320_8,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-9.template",  "P=$(DT320_PREFIX), PORT=DT320_9,  ADR=01, SCAN=Passive"
dbLoadRecords "tc_dt320-73.template",  "P=$(DT320_PREFIX), PORT=DT320_73,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-75.template",  "P=$(DT320_PREFIX), PORT=DT320_75,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-77.template",  "P=$(DT320_PREFIX), PORT=DT320_77,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-79.template",  "P=$(DT320_PREFIX), PORT=DT320_79,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-80.template",  "P=$(DT320_PREFIX), PORT=DT320_80,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-81.template",  "P=$(DT320_PREFIX), PORT=DT320_81,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-82.template",  "P=$(DT320_PREFIX), PORT=DT320_82,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-83.template",  "P=$(DT320_PREFIX), PORT=DT320_83,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-84.template",  "P=$(DT320_PREFIX), PORT=DT320_84,  ADR=01, SCAN=I/O Intr"
#dbLoadRecords "tc_dt320-1r.template", "P=$(DT320_PREFIX), PORT=DT320_1R, ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-1w.template", "P=$(DT320_PREFIX), PORT=DT320_1W, ADR=01"
dbLoadRecords "tc_dt320-8w.template", "P=$(DT320_PREFIX), PORT=DT320_8W, ADR=01"

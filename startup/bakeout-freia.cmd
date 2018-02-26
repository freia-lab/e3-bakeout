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

drvModbusAsynConfigure(DT320_1, "IFD9506", 1, 3, 4096, 8, 4, 10000, "dt320")
drvModbusAsynConfigure(DT320_2, "IFD9506", 1, 3, 4104, 8, 4, 10000, "dt320")
drvModbusAsynConfigure(DT320_3, "IFD9506", 1, 3, 4112, 8, 4, 10000, "dt320")
drvModbusAsynConfigure(DT320_4, "IFD9506", 1, 3, 4124, 8, 4, 10000, "dt320")
drvModbusAsynConfigure(DT320_5, "IFD9506", 1, 3, 4132, 8, 4, 10000, "dt320")
drvModbusAsynConfigure(DT320_1R, "IFD9506", 1, 3, -1, 1, 4, 10000, "dt320")
drvModbusAsynConfigure(DT320_1W, "IFD9506", 1, 6, -1, 1, 4, 1, "dt320")
drvModbusAsynConfigure(DT320_8W, "IFD9506", 1, 16, -1, 8, 4, 1, "dt320")

asynSetTraceIOMask "IFD9506",0,4   # Enable traceIOHex
asynSetTraceMask "IFD9506",0,9     # Enable traceError and traceIODriver
#asynSetTraceMask "IFD9506",0,1     # Enable traceError


dbLoadRecords "tc_dt320-1.template",  "P=$(DT320_PREFIX), PORT=DT320_1,  ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-5.template",  "P=$(DT320_PREFIX), PORT=DT320_5,  ADR=01, SCAN=I/O Intr"
#dbLoadRecords "tc_dt320-1r.template", "P=$(DT320_PREFIX), PORT=DT320_1R, ADR=01, SCAN=I/O Intr"
dbLoadRecords "tc_dt320-1w.template", "P=$(DT320_PREFIX), PORT=DT320_1W, ADR=01"
dbLoadRecords "tc_dt320-8w.template", "P=$(DT320_PREFIX), PORT=DT320_8W, ADR=01"

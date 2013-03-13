module At45dbPowerP {
    provides {
        interface SplitControl;
    }
    uses {
        interface SplitControl as PowerControl;
        interface At45db;
    }
}

implementation {
    command error_t SplitControl.start() {
        call PowerControl.start();
        return SUCCESS;
    }
    command error_t SplitControl.stop() {
        call PowerControl.stop();
        return SUCCESS;
    }

    event void PowerControl.startDone(error_t error) {
        signal SplitControl.startDone(SUCCESS);
    }

    event void PowerControl.stopDone(error_t error) {
        signal SplitControl.stopDone(SUCCESS);
    }

    /* 
     * Dummy event handlers to compensate for the lack of default event handlers in At45dbP.nc
    */
    event void At45db.copyPageDone(error_t error) {};
    event void At45db.syncDone(error_t error) {};
    event void At45db.flushDone(error_t error) {};
    event void At45db.writeDone(error_t error) {};
    event void At45db.eraseDone(error_t error) {};
    event void At45db.computeCrcDone(error_t error, uint16_t crc) {};
    event void At45db.readDone(error_t error) {};

}
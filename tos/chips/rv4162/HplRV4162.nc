interface HplRV4162 {

    command error_t readSeconds();

    command error_t readMinutes();

    command error_t readFullTime();

    command error_t writeSTBit();

    command error_t writeMinutes(uint8_t minutes);

    command error_t resetTime();



    event void readSecondsDone(error_t err, uint8_t sec);

    event void readMinutesDone(error_t err, uint8_t min);

    event void readFullTimeDone(error_t err, uint8_t* fullTime);

    event void writeSTBitDone(error_t err);

    event void writeMinutesDone(error_t err);

    event void resetTimeDone(error_t err);

}
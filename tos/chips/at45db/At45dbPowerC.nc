configuration At45dbPowerC {
    provides {
        interface SplitControl;
    }

}

implementation {
  components At45dbPowerP, At45dbC;

  SplitControl = At45dbPowerP.SplitControl;
  At45dbPowerP.PowerControl -> At45dbC.SplitControl;
  At45dbPowerP.At45db -> At45dbC.At45db; // Only used because there are no default events for the At45db interface
}
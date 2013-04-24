/**
 * Dallas/Maxim 1wire bus master
 * WARNING: IF YOU ARE ON 
 * 
 */

configuration OneWireMasterC {
  provides {
    interface OneWireReadWrite as OneWire;
  }
  uses {
    interface GeneralIO as Pin;
  }
}
implementation {
  components OneWireMasterP;
  components BusyWaitMicroC;

  OneWireMasterP.BusyWait -> BusyWaitMicroC;
  OneWireMasterP.Pin = Pin;

  OneWire = OneWireMasterP.OneWire;
}

part of 'index.dart';

DeviceState deviceState(DeviceState state, dynamic action) {
  if (action is ResetDeviceState) {
    return new DeviceState.initialState();
  } else if (action is SetDevice) {
    state.setDevice(action.device);
  } else if (action is SetDeviceConnection) {
    state.setDeviceConnection(action.deviceConnection);
  } else if (action is SetConnectionStatus) {
    state.setConnectionStatus(action.connectionStatus);
  } else if (action is SetService) {
    state.setService(action.service);
  } else if (action is SetCharacteristic) {
    state.setCharacteristic(action.index, action.characteristic);
  }
  return state;
}

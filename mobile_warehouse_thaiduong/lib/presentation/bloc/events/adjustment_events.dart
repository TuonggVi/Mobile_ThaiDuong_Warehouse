import 'package:equatable/equatable.dart';

abstract class AdjustmentEvent extends Equatable {}

class ScanQrLotAdjustmentEvent extends AdjustmentEvent {
  DateTime timestamp;
  ScanQrLotAdjustmentEvent(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class UpdateLotAdjustmentQuantityEvent extends AdjustmentEvent {
  DateTime timestamp;
  double AfterQuantity;
  String Notes;
  String purchaseOrderNumber;
  UpdateLotAdjustmentQuantityEvent(
    this.timestamp, 
    this.AfterQuantity, 
    this.Notes, 
    this.purchaseOrderNumber);
  @override
  List<Object> get props => [timestamp];
}

class ConfirmLotAdjustmentEvent extends AdjustmentEvent {
  DateTime timestamp;
  String LotId;
  ConfirmLotAdjustmentEvent(this.timestamp, this.LotId);
  @override
  List<Object> get props => [timestamp];
}

import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item.dart';


abstract class AdjustmentState extends Equatable {}
// Scan Barcode
class ScanQrLotAdjustmentSuccessState extends AdjustmentState {
  DateTime timestamp;
  Item item;
  ScanQrLotAdjustmentSuccessState(this.timestamp, this.item);
  @override
  List<Object> get props => [timestamp, item];
}
class ScanQrLotAdjustmentLoadingState extends AdjustmentState {
  DateTime timestamp;
  ScanQrLotAdjustmentLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class ScanQrLotAdjustmentFailState extends AdjustmentState {
  DateTime timestamp;
  ScanQrLotAdjustmentFailState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}
// cập nhật số lượng mới
class UpdateLotQuantitySuccessState extends AdjustmentState {
  DateTime timestamp;
  UpdateLotQuantitySuccessState(this.timestamp);
  @override
  List<Object?> get props => [timestamp];
}
class UpdateLotQuantityFailState extends AdjustmentState {
  DateTime timestamp;
  ErrorPackage status;
  UpdateLotQuantityFailState(this.timestamp, this.status);
  @override
  List<Object?> get props => [timestamp];
}

// Xác nhận điều chỉnh thông tin rổ
class ConfirmLotAdjustmentSuccessState extends AdjustmentState {
  DateTime timestamp;
  ConfirmLotAdjustmentSuccessState(this.timestamp);
  @override

  List<Object?> get props => [timestamp];
}
class ConfirmLotAdjustmentLoadingState extends AdjustmentState {
  ErrorPackage status;
  DateTime timestamp;
  ConfirmLotAdjustmentLoadingState(this.status, this.timestamp);
  @override
  List<Object?> get props => [timestamp];
}
class ConfirmLotAdjustmentFailState extends AdjustmentState {
  ErrorPackage status;
  DateTime timestamp;
  ConfirmLotAdjustmentFailState(this.status, this.timestamp);
  
  @override
  List<Object?> get props => [timestamp];
}






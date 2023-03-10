import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class IsolationState extends Equatable {}

// điền thông tin để lọc lô
class FillInfoIsolationState extends IsolationState {
  DateTime timestamp;
  
  FillInfoIsolationState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}


// Hiển thị lô đã lọc
class LoadIsolationLoadingState extends IsolationState {
  DateTime timestamp;
  ErrorPackage status;
  LoadIsolationLoadingState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp, status];
}

class LoadIsolationSuccessState extends IsolationState {
  DateTime timestamp;
  List<ItemLot> itemLots;
  LoadIsolationSuccessState(this.timestamp, this.itemLots);
  @override
  List<Object> get props => [timestamp, itemLots];
}

class LoadIsolationFailState extends IsolationState {
  DateTime timestamp;
  ErrorPackage status;
  LoadIsolationFailState(this.timestamp, this.status);
  List<Object> get props => [timestamp, status];
}

// Thêm hàng cách ly bằng cách điền số lượng + note
class AddIsolationLoadingState extends IsolationState {
  DateTime timestamp;
  AddIsolationLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}
class AddIsolationSuccessState extends IsolationState {
  DateTime timestamp;
  AddIsolationSuccessState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}
class AddIsolationFailState extends IsolationState {
  DateTime timestamp;
  ErrorPackage status;
  AddIsolationFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp, status];
}
// Xác nhận cách ly hàng hóa

class ConfirmIsolationSuccessState extends IsolationState {
  DateTime timestamp;
  ConfirmIsolationSuccessState(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class ConfirmIsolationLoadingState extends IsolationState {
  ErrorPackage status;
  DateTime timestamp;
  ConfirmIsolationLoadingState(this.status, this.timestamp);

  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class ConfirmIsolationFailState extends IsolationState {
  ErrorPackage status;
  DateTime timestamp;
  ConfirmIsolationFailState(this.status, this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
// Update danh sách hàng hóa cách ly
class UpdateIsolationLoadingState extends IsolationState {
  ErrorPackage status;
  DateTime timestamp;
  UpdateIsolationLoadingState(this.status, this.timestamp);
  
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class UpdateIsolationLSuccessState extends IsolationState {
  DateTime timestamp;
  UpdateIsolationLSuccessState(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}

class UpdateIsolationFailState extends IsolationState {
  ErrorPackage status;
  DateTime timestamp;
  UpdateIsolationFailState(this.status, this.timestamp);
  
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
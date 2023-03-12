import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item.dart';

abstract class IsolationState extends Equatable {}

// Tìm kiếm theo mã sp + tên
class LoadIsolationSuccessState extends IsolationState {
  DateTime timestamp;
  Item item;
  LoadIsolationSuccessState(this.timestamp, this.item);
  @override
  List<Object> get props => [timestamp, item];
}

class LoadIsolationLoadingState extends IsolationState {
  DateTime timestamp;
  LoadIsolationLoadingState(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}

class LoadIsolationFailState extends IsolationState {
  DateTime timestamp;
  ErrorPackage status;
  LoadIsolationFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp, status];
}

// Thêm hàng cách ly: điền số lượng + note
class AddIsolationState extends IsolationState {
  DateTime timestamp;
  AddIsolationState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class AddIsolationSuccessState extends IsolationState {
  DateTime timestamp;
  AddIsolationSuccessState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
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
class UpdateIsolationLSuccessState extends IsolationState {
  DateTime timestamp;
  UpdateIsolationLSuccessState(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}

class UpdateIsolationLoadingState extends IsolationState {
  ErrorPackage status;
  DateTime timestamp;
  UpdateIsolationLoadingState(this.status, this.timestamp);

  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class UpdateIsolationFailState extends IsolationState {
  ErrorPackage status;
  DateTime timestamp;
  UpdateIsolationFailState(this.status, this.timestamp);

  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

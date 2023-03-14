import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class IsolationState extends Equatable {}

// Lấy tất cả lô hàng
class GetAllItemSuccessState extends IsolationState {
  DateTime timestamp;
  List<ItemLot> itemLot;
  GetAllItemSuccessState(this.timestamp, this.itemLot);
  @override
  List<Object> get props => [timestamp];
}

class GetAllItemLoadingState extends IsolationState {
  DateTime timestamp;
  GetAllItemLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class GetAllItemFailState extends IsolationState {
  DateTime timestamp;
  ErrorPackage status;
  GetAllItemFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}

// Chọn lô
class GetLotByItemSuccessState extends IsolationState {
  DateTime timestamp;
  ItemLot itemLot;
  GetLotByItemSuccessState(this.timestamp, this.itemLot);
  @override
  List<Object> get props => [timestamp];
}

class GetLotByItemLoadingState extends IsolationState {
  DateTime timestamp;
  GetLotByItemLoadingState(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}

class GetLotByItemFailState extends IsolationState {
  DateTime timestamp;
  ErrorPackage status;
  GetLotByItemFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}

// thêm hàng cách ly
class PostNewIsolationSuccessState extends IsolationState {
  DateTime timestamp;
  ErrorPackage status;
  PostNewIsolationSuccessState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}

class PostNewIsolationLoadingState extends IsolationState {
  DateTime timestamp;
  PostNewIsolationLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class PostNewIsolationFailState extends IsolationState {
  DateTime timestamp;
  ErrorPackage status;
  PostNewIsolationFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}

// Xác nhận cách ly hàng hóa
class ConfirmIsolationSuccessState extends IsolationState {
  DateTime timestamp;
  ErrorPackage status;
  ConfirmIsolationSuccessState(
    this.timestamp,
    this.status,
  );
  @override
  List<Object> get props => [timestamp];
}

class ConfirmIsolationLoadingState extends IsolationState {
  DateTime timestamp;
  ConfirmIsolationLoadingState(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}

class ConfirmIsolationFailState extends IsolationState {
  DateTime timestamp;
  ErrorPackage status;
  ConfirmIsolationFailState(
    this.timestamp,
    this.status,
  );
  @override
  List<Object> get props => [timestamp];
}

// Hiển thị danh sách hàng đang xử lý
class GetAllIsolationLotSuccessState extends IsolationState {
  DateTime timestamp;
  List<ItemLot> itemLot;
  GetAllIsolationLotSuccessState(this.timestamp, this.itemLot);
  @override
  List<Object> get props => [timestamp];
}

class GetAllIsolationLotLoadingState extends IsolationState {
  DateTime timestamp;
  GetAllIsolationLotLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class GetAllIsolationLotFailState extends IsolationState {
  DateTime timestamp;
  ErrorPackage status;
  GetAllIsolationLotFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}

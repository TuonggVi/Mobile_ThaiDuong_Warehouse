import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class ShelveState extends Equatable {}

// Hiển thị danh sách mã sp
class GetAllItemIdSuccessState extends ShelveState {
  DateTime timestamp;
  List<String> itemId;
  GetAllItemIdSuccessState(this.timestamp, this.itemId);
  @override
  List<Object> get props => [timestamp];
}
class GetAllItemIdLoadingState extends ShelveState {
  DateTime timestamp;
  GetAllItemIdLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}
class GetAllItemIdFailState extends ShelveState {
  DateTime timestamp;
  ErrorPackage status;
  GetAllItemIdFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}
// Tìm kệ theo mã và tên sp
class GetLotByItemIdSuccessState extends ShelveState {
  DateTime timestamp;
  List <ItemLot> itemLot;
  GetLotByItemIdSuccessState(this.timestamp, this.itemLot);
  @override
  List<Object> get props => [timestamp];
}
class GetLotByItemIdLoadingState extends ShelveState {
  DateTime timestamp;
  GetLotByItemIdLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}
class GetLotByItemIdFailState extends ShelveState {
  DateTime timestamp;
  // ErrorPackage status;
  GetLotByItemIdFailState(this.timestamp, 
  // this.status
  );
  @override
  List<Object> get props => [timestamp];
}
// List vị trí
class GetAllLocationSuccessState extends ShelveState {
  DateTime timestamp;
  List<String> location;
  GetAllLocationSuccessState(this.timestamp, this.location);
  @override
  List<Object> get props => [timestamp];
}
class GetAllLocationLoadingState extends ShelveState {
  DateTime timestamp;
 GetAllLocationLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}
class GetAllLocationFailState extends ShelveState {
  DateTime timestamp;
  ErrorPackage status;
  GetAllLocationFailState(this.timestamp, this.status);
  @override
  List<Object> get props => [timestamp];
}

// Hiển thị danh sách sản phẩm tìm kiếm 
class GetLotByLocationSuccessState extends ShelveState {
  final DateTime timestamp;
  List<ItemLot> itemLots;
  GetLotByLocationSuccessState(this.timestamp, this.itemLots);
  @override
  List<Object> get props => [timestamp, itemLots];
}

class GetLotByLocationFailState extends ShelveState {
  // ErrorPackage status;
  DateTime timestamp;
  GetLotByLocationFailState(
    // this.status,
    this.timestamp,
  );
  @override
  List<Object> get props => [ timestamp];
}

class GetLotByLocationLoadingState extends ShelveState {
  DateTime timestamp;
  GetLotByLocationLoadingState(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}

import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class ShelveState extends Equatable {}

// Hiển thị danh sách mã sp
class LoadAllItemIdLoadingState extends ShelveState {
  DateTime timestamp;
  LoadAllItemIdLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

// Trả về list mã sản phẩm
class LoadAllItemIdSuccessState extends ShelveState {
  DateTime timestamp;
  List<String> itemId;
  LoadAllItemIdSuccessState(this.timestamp, this.itemId);
  @override
  List<Object> get props => [timestamp];
}

// Tìm kệ theo mã và tên sp
class SearchShelveByIdEvent extends ShelveState {
  DateTime timestamp;
  String itemId;
  String itemName;
  SearchShelveByIdEvent(this.timestamp, this.itemId, this.itemName);
  @override
  List<Object> get props => [timestamp, itemId];
}

// List vị trí
class LoadAllLocationLoadingState extends ShelveState {
  DateTime timestamp;
  LoadAllLocationLoadingState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

// Trả về list vị trí
class LoadAllLocationSuccessState extends ShelveState {
  DateTime timestamp;
  List<String> Location;
  LoadAllLocationSuccessState(this.timestamp, this.Location);
  @override
  List<Object> get props => [timestamp];
}

// Hiển thị danh sách sản phẩm tìm kiếm 
class LoadShelveByLocationSuccessState extends ShelveState {
  final DateTime timestamp;
  List<ItemLot> itemLots;
  LoadShelveByLocationSuccessState(this.timestamp, this.itemLots);
  @override
  List<Object> get props => [timestamp, itemLots];
}

class LoadShelveByLocationFailState extends ShelveState {
  ErrorPackage status;
  DateTime timestamp;
  LoadShelveByLocationFailState(
    this.status,
    this.timestamp,
  );
  @override
  List<Object> get props => [status, timestamp];
}

class ShelveByLocationLoadingState extends ShelveState {
  ErrorPackage status;
  DateTime timestamp;
  ShelveByLocationLoadingState(
    this.status,
    this.timestamp,
  );
  @override
  List<Object> get props => [status, timestamp];
}

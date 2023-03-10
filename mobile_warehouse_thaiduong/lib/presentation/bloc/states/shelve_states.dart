import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class ShelveState extends Equatable {}

// Tìm kệ theo mã sản phẩm
class SearchShelveByIdState extends ShelveState {
  DateTime timestamp;
  SearchShelveByIdState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}


// Hiển thị kệ theo mã sản phẩm
class LoadShelveByIdSuccessState extends ShelveState {
  final DateTime timestamp;
  List<ItemLot> itemLots;
  LoadShelveByIdSuccessState(this.timestamp, this.itemLots);
  @override
  List<Object> get props => [timestamp, itemLots];
}

class LoadShelveByIdFailState extends ShelveState {
  ErrorPackage status;
  DateTime timestamp;
  LoadShelveByIdFailState(
    this.status,
    this.timestamp,
  );
  @override
  List<Object> get props => [status, timestamp];
}

class LoadShelveByIdLoadingState extends ShelveState {
  ErrorPackage status;
  DateTime timestamp;
  LoadShelveByIdLoadingState(
    this.status,
    this.timestamp,
  );
  @override
  List<Object> get props => [status, timestamp];
}

// Tìm kệ theo vị trí
class SearchShelveByLocationState extends ShelveState {
  final DateTime timestamp;

  SearchShelveByLocationState(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}


// Hiển thị danh sách kệ theo vị trí

class LoadShelveByLocationState extends ShelveState {
  final DateTime timestamp;
  List<ItemLot> itemLots;
  LoadShelveByLocationState(this.timestamp, this.itemLots);
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

class LoadShelveByLocationLoadingState extends ShelveState {
  ErrorPackage status;
  DateTime timestamp;
  LoadShelveByLocationLoadingState(
    this.status,
    this.timestamp,
  );
  @override
  List<Object> get props => [status, timestamp];
}

import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class AccessHistoryState extends Equatable {}

// Hiển thị danh sách đã lọc
class AccessHistorySuccessState extends AccessHistoryState {
  DateTime timestamp;
  List<ItemLot> itemLots;
  AccessHistorySuccessState(this.timestamp, this.itemLots);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class AccessHistoryFailState extends AccessHistoryState {
  ErrorPackage status;
  DateTime timestamp;
  AccessHistoryFailState(this.status, this.timestamp);
  @override
  List<Object?> get props => [timestamp];
}

class AccessHistoryLoadingState extends AccessHistoryState {
  ErrorPackage status;
  DateTime timestamp;
  AccessHistoryLoadingState(this.status, this.timestamp);

  @override
  List<Object?> get props => [timestamp];
}

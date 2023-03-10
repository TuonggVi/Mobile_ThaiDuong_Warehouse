import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

abstract class AccessHistoryState extends Equatable {}

// Truy xuất lịch sử nhập và xuất
class AccessItemHistoryState extends AccessHistoryState {
  DateTime timestamp;
  AccessItemHistoryState(
    this.timestamp,
  );
  @override
  List<Object> get props => [timestamp];
}


// Hiển thị danh sách đã lọc
// Trạng thái success thì hiển thị ra danh sách
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

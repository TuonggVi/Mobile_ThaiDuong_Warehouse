import 'package:equatable/equatable.dart';

abstract class AccessHistoryEvent extends Equatable {}

//------------
// get po number => chọn kho thành phẩm thì dc chọn số po
// bắt buộc phải chọn kho hàng, từ ngày - đến ngày => có thể truy xuất
// mã sp, bộ phận có thể có hoặc không
// số po chỉ với kho thành phẩm
//---------
// lấy ds kho, bộ phận, item
class GetAllInfoImportEvent extends AccessHistoryEvent {
  DateTime timestamp;
  GetAllInfoImportEvent(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

// lấy ds kho, ncc, item
class GetAllInfoExportEvent extends AccessHistoryEvent {
  DateTime timestamp;
  GetAllInfoExportEvent(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

// lọc danh sách item theo kho hàng
class GetItemByWarehouseEvent extends AccessHistoryEvent {
  DateTime timestamp;
  String warehouse;
  GetItemByWarehouseEvent(this.timestamp, this.warehouse);
  @override
  List<Object> get props => [timestamp];
}

// Truy xuất lịch sử nhập kho
class AccessImportHistoryEvent extends AccessHistoryEvent {
  DateTime timestamp;
  String warehouse;
  DateTime startdate;
  DateTime enddate;
  String itemId;
  String department;
  String receiver;
  String purchaseOrderNumber;
  AccessImportHistoryEvent(
      this.timestamp,
      this.warehouse,
      this.startdate,
      this.enddate,
      this.itemId,
      this.department,
      this.receiver,
      this.purchaseOrderNumber);
  @override
  List<Object> get props => [timestamp];
}

// Truy xuất lịch sử xuất kho
class AccessExportHistoryEvent extends AccessHistoryEvent {
  DateTime timestamp;
  String warehouse;
  DateTime startdate;
  DateTime enddate;
  String itemId;
  String department;
  String receiver;
  String purchaseOrderNumber;
  AccessExportHistoryEvent(
      this.timestamp,
      this.warehouse,
      this.startdate,
      this.enddate,
      this.itemId,
      this.department,
      this.receiver,
      this.purchaseOrderNumber);
  @override
  List<Object> get props => [timestamp];
}

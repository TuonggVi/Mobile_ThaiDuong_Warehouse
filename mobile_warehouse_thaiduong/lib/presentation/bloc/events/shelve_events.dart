import 'package:equatable/equatable.dart';

abstract class ShelveEvent extends Equatable {}

// List mã sản phẩm
class LoadAllItemIdEvent extends ShelveEvent {
 DateTime timestamp;
  LoadAllItemIdEvent(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}
// Tìm kệ theo mã sản phẩm
class SearchShelveByIdEvent extends ShelveEvent {
  DateTime timestamp;
  String itemId;
  String itemName;
  SearchShelveByIdEvent(this.timestamp, this.itemId, this.itemName);
  @override
  List<Object> get props => [timestamp, itemId];
}
// Hiển thị danh sách tìm kiếm theo mã sp
class LoadShelveByLocationvent extends ShelveEvent {
  DateTime timestamp;
  String itemId;
  String itemName;
  LoadShelveByLocationvent(this.timestamp, this.itemId, this.itemName);
  @override
  List<Object> get props => [timestamp];
}
// List vị trí
class LoadAllLocationEvent extends ShelveEvent {
  DateTime timestamp;
  LoadAllLocationEvent(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}
// Tìm kệ theo vị trí
class SearchShelveByLocationEvent extends ShelveEvent {
  DateTime timestamp;
  String Location;
  SearchShelveByLocationEvent(this.timestamp, this.Location);
  @override
  List<Object> get props => [timestamp, Location];
}
// Hiển thị danh sách tìm kiếm theo vị trí 
class LoadShelveByLocationEvent extends ShelveEvent {
  DateTime timestamp;
  String Location;
  LoadShelveByLocationEvent(this.timestamp, this.Location);
  @override
  List<Object> get props => [timestamp];
}
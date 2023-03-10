import 'package:equatable/equatable.dart';

abstract class ShelveEvent extends Equatable {}

// Tìm kệ theo mã sản phẩm
class SearchShelveByIdEvent extends ShelveEvent {
  final DateTime timestamp;
  SearchShelveByIdEvent(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class LoadShelveByIdEvent extends ShelveEvent {
  final DateTime timestamp;
  final String ItemId;

  LoadShelveByIdEvent(this.timestamp, this.ItemId);
  @override
  List<Object> get props => [timestamp];
}

// Tìm kệ theo vị trí
class SearchShelveByLacationEvent extends ShelveEvent {
  final DateTime timestamp;
  SearchShelveByLacationEvent(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class LoadShelveByLocationEvent extends ShelveEvent {
  final DateTime timestamp;
  final String Location;
  LoadShelveByLocationEvent(this.timestamp, this.Location);
  @override
  List<Object> get props => [timestamp];
}

import 'package:equatable/equatable.dart';

abstract class UncompletedReceiptEvent extends Equatable {}


class LoadUncompletedGoodsReceipt extends UncompletedReceiptEvent {
  DateTime timestamp;
  LoadUncompletedGoodsReceipt(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

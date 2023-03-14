import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/lot_adjustment.dart';

abstract class AdjustmentEvent extends Equatable {}

class GetLotDetailEvent extends AdjustmentEvent {
  DateTime timestamp;
  String lotId;
  GetLotDetailEvent(this.timestamp, this.lotId);
  @override
  List<Object> get props => [timestamp];
}

class UpdateLotAdjustmentQuantityEvent extends AdjustmentEvent {
  DateTime timestamp;
  LotAdjustment lotAdjustment;
  UpdateLotAdjustmentQuantityEvent(
    this.timestamp, 
    this.lotAdjustment
   );
  @override
  List<Object> get props => [timestamp];
}



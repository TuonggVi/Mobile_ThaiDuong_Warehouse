import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

class InventoryLotEntry extends Equatable {
  Item item;
  double beforeQuantity;
  double afterQuantity;
  DateTime timestamp;
  ItemLot itemLot;
  InventoryLotEntry(
      this.item, this.beforeQuantity, this.afterQuantity, this.timestamp, this.itemLot);
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

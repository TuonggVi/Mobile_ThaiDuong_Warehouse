import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item.dart';

class InventoryLotEntry extends Equatable {
  Item item;
  double beforeQuantity;
  double afterQuantity;
  InventoryLotEntry(this.item, this.beforeQuantity, this.afterQuantity);
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

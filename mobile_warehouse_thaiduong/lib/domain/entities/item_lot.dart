import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/location.dart';

class ItemLot extends Equatable {
  String lotId;
  Item item;
  double quantity;
  double? sublotSize;
  String? purchaseOrderNumber;
  Location? location;
  DateTime? productionDate;
  DateTime? expirationDate;
  ItemLot(this.lotId, this.item, this.quantity, this.sublotSize,
      this.purchaseOrderNumber,this.location, this.productionDate, this.expirationDate);
  @override
  // TODO: implement props
  List<Object?> get props => [lotId];
}

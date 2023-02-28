import 'package:mobile_warehouse_thaiduong/datasource/models/item_model.dart';
import 'package:mobile_warehouse_thaiduong/datasource/models/location_model.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

class ItemLotModel extends ItemLot{
  ItemLotModel(super.lotId, super.item, super.quantity, super.sublotSize, super.purchaseOrderNumber, super.location, super.productionDate, super.expirationDate);
factory ItemLotModel.fromJson(Map<String, dynamic> json) {
    return ItemLotModel(
      json['lotId'],
      json['item']== null ? null as ItemModel : ItemModel.fromJson(json["item"]),
      json['quantity'],
      json['sublotSize'],
      json['purchaseOrderNumber'],
      json['location'] ,
      //== null ? null as LocationModel : LocationModel.fromJson(json["location"]),
      json['productionDate'],
      json['expirationDate'],
    );
  }
}
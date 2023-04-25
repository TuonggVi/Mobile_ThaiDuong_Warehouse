import 'package:mobile_warehouse_thaiduong/datasource/models/item_model.dart';
import 'package:mobile_warehouse_thaiduong/datasource/models/location_model.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';

class ItemLotModel extends ItemLot{
  ItemLotModel(super.lotId, super.item, super.isolated, super.quantity, super.sublotSize, super.purchaseOrderNumber, super.location, super.productionDate, super.expirationDate);
factory ItemLotModel.fromJson(Map<String, dynamic> json) {
    return ItemLotModel(
      json['lotId'],
      json['item'] =  ItemModel.fromJson(json["item"]),
      json['isIsolated'],
       double.parse( json['quantity'].toString()),
     double.parse(  json['sublotSize'].toString()), 
      json['purchaseOrderNumber'],
      (json['location'] == null ? null : LocationModel.fromJson(json['location'])) as String?,
      DateTime.tryParse( json['productionDate'].toString()),  
      DateTime.tryParse( json['expirationDate'].toString()),
    );
  }
}
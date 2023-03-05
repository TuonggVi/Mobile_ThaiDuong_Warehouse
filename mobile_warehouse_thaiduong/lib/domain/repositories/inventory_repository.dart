import 'package:mobile_warehouse_thaiduong/domain/entities/inventory_lot_entry.dart';

abstract class InventoryRepository {
  Future<List<InventoryLotEntry>> getInventoryByTime(
      String startDate, String endDate);
  Future<List<InventoryLotEntry>> getInventoryByItemClass(
      String startDate, String endDate, String itemClassId);
  Future<List<InventoryLotEntry>> getInventoryByItemId(
      String startDate, String endDate, String itemId);
}

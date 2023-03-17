import 'package:mobile_warehouse_thaiduong/domain/entities/inventory_log_entry.dart';

abstract class InventoryRepository {
  Future<List<InventoryLogEntry>> getInventoryByTime(
      String startDate, String endDate);
  Future<List<InventoryLogEntry>> getInventoryByItemClass(
      String startDate, String endDate, String itemClassId);
  Future<List<InventoryLogEntry>> getInventoryByItemId(
      String startDate, String endDate, String itemId);
      //
  Future<List<InventoryLogEntry>> getAllItemByWarehouseId(
      String warehouseId);
}



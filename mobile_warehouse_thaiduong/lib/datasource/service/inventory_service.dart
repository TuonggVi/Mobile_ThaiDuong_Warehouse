import 'package:mobile_warehouse_thaiduong/datasource/models/inventory_lot_entry_model.dart';

class InventoryService {
  Future<List<InventoryLogEntryModel>> getInventoryByTime(
      String startDate, String endDate) async {
    return [];
  }

  Future<List<InventoryLogEntryModel>> getInventoryByItemClass(
      String startDate, String endDate, String itemClassId) async {
    return [];
  }

  Future<List<InventoryLogEntryModel>> getInventoryByItemId(
      String startDate, String endDate, String itemId) async {
    return [];
  }
}

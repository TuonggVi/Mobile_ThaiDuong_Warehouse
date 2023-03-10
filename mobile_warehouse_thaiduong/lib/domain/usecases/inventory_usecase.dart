import 'package:mobile_warehouse_thaiduong/domain/entities/inventory_log_entry.dart';
import 'package:mobile_warehouse_thaiduong/domain/repositories/inventory_repository.dart';

class Inventoryusecase {
  final InventoryRepository inventoryRepository;
  Inventoryusecase(this.inventoryRepository);
  Future<List<InventoryLogEntry>> getInventoryByTime(
      String startDate, String endDate) async {
    final logEntries =
        inventoryRepository.getInventoryByTime(startDate, endDate);
    return logEntries;
  }

  Future<List<InventoryLogEntry>> getInventoryByItemClass(
      String startDate, String endDate, String itemClassId) async {
    final logEntries = inventoryRepository.getInventoryByItemClass(
        startDate, endDate, itemClassId);
    return logEntries;
  }

  Future<List<InventoryLogEntry>> getInventoryByItemId(
      String startDate, String endDate, String itemId) async {
    final logEntries =
        inventoryRepository.getInventoryByItemId(startDate, endDate, itemId);
    return logEntries;
  }
}

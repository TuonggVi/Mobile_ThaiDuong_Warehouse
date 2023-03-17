abstract class LocationRepository {
  Future<List<String>> getAllLocationId();
  Future<List<String>> getAllWarehouseId();
  Future<List<String>> getAllExpirationDate();
}

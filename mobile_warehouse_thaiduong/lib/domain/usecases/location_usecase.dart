import 'package:mobile_warehouse_thaiduong/domain/repositories/location_repository.dart';

class LocationUsecase {
  final LocationRepository locationRepository;
  LocationUsecase(this.locationRepository);
 
  Future<List<String>> getAllLocationId() async {
    final locationId = locationRepository.getAllLocationId();
    return locationId;
  }

  Future<List<String>> getAllWarehouseId() async {
    final warehouseIds = locationRepository.getAllWarehouseId();
    return warehouseIds;
  }
   
  Future<List<String>> getAllExpirationDate()async {
     final expirationDateIds = locationRepository.getAllExpirationDate();
    return expirationDateIds;
  }
}

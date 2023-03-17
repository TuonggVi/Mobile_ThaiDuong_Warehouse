import 'package:mobile_warehouse_thaiduong/domain/entities/item.dart';
import 'package:mobile_warehouse_thaiduong/domain/repositories/item_repository.dart';

class ItemUsecase {
  final ItemRepository itemRepository;
  ItemUsecase(this.itemRepository);
  Future<List<Item>> getAllItem() async {
    final items = itemRepository.getAllItem();
    return items;
  }

  //--
  Future<List<Item>> getAllItemId() async {
    final itemIds = itemRepository.getAllItemId();
    return itemIds;
  }

  // Future<Item> getItemByItemId(String itemId) async {
  //   final item = itemRepository.getItemByItemId(itemId);
  //   return item;
  // }
}

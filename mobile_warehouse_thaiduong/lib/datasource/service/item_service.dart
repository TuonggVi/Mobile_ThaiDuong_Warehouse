import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobile_warehouse_thaiduong/constant.dart';
import 'package:mobile_warehouse_thaiduong/datasource/models/item_model.dart';

class ItemService {
  Future<List<ItemModel>> getAllItems() async {
    final res = await http.get(Uri.parse(Constants.baseUrl + 'api/items/'));
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      print(body.toString());
      List<ItemModel> items = body
          .map(
            (dynamic item) => ItemModel.fromJson(item),
          )
          .toList();
      print(items.toString());
      return items;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}

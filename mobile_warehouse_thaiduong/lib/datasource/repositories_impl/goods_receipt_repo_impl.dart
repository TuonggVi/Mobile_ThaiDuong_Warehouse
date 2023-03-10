import 'package:mobile_warehouse_thaiduong/datasource/service/goods_receipt_service.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_receipt.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/repositories/goods_receipt_repository.dart';

class GoodsReceiptRepoImpl implements GoodsReceiptRepository {
  final GoodsReceiptService goodsReceiptService;
  GoodsReceiptRepoImpl(this.goodsReceiptService);
  @override
  Future<List<GoodsReceipt>> getCompletedGoodsReceipts() {
    // TODO: implement getCompletedGoodsReceipts
    final goodsReceipts = goodsReceiptService.getCompletedGoodsReceipts();
    return goodsReceipts;
  }

  @override
  Future<List<GoodsReceipt>> getUnCompletedGoodsReceipts() {
    // TODO: implement getUnCompletedGoodsReceipts
    final goodsReceipts = goodsReceiptService.getUnCompletedGoodsReceipts();
    return goodsReceipts;
  }

  @override
  Future<ErrorPackage> postNewGoodsReceipt(String goodsReceiptId,
        List<GoodsReceiptLot> lots) {
    // TODO: implement postNewGoodsReceipt
    final status = goodsReceiptService.postNewGoodsReceipt(
        goodsReceiptId, lots);
    return status;
  }

  @override
  Future<ErrorPackage> updateDetailLotReceipt(
      String goodsReceiptLotId,
      String itemId,
      double quantity,
      double? sublotSize,
      String purchaseOrderNumber,
      String? locationId,
      DateTime? productionDate,
      DateTime? expirationDate) {
    // TODO: implement updateDetailLotReceipt
    final status = goodsReceiptService.updateDetailLotReceipt(
        goodsReceiptLotId,
        itemId,
        quantity,
        sublotSize,
        purchaseOrderNumber,
        locationId,
        productionDate,
        expirationDate);
    return status;
  }
}

import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_issue.dart';

abstract class GoodsIssueRepository {
  // bổ sung parameters
  Future<ErrorPackage> postNewGoodsIssue(
      String goodsIssueId,
      String purchaseOrderNumber,
      DateTime timestamp,
      String receiver,
      List<GoodsIssueEntry> entries);
  Future<List<GoodsIssue>> getUncompletedGoodsIssue();
  Future<List<GoodsIssue>> getCompletedGoodsissue();
  Future<GoodsIssue> getGoodsIssueById(String goodsIssueId);
  Future<ErrorPackage> addLotToGoodsIssue(
      String goodsIssueId, List<GoodsIssueLot> lots);
}

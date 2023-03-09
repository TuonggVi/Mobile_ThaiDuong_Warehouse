import 'package:mobile_warehouse_thaiduong/datasource/models/error_package_model.dart';
import 'package:mobile_warehouse_thaiduong/datasource/models/goods_issue_model.dart';
import 'package:mobile_warehouse_thaiduong/datasource/service/goods_issue_service.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_issue.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/repositories/goods_issue_repository.dart';

class GoodsIssueRepoImpl implements GoodsIssueRepository {
  final GoodsIssueService goodsIssueService;
  GoodsIssueRepoImpl(this.goodsIssueService);
  @override
  Future<ErrorPackageModel> addGoodsIssueEntry(
      String goodsIssueId, GoodsIssueEntry goodsIssueEntry) {
    // TODO: implement addGoodsIssueEntry
    final status =
        goodsIssueService.addGoodsIssueEntry(goodsIssueId, goodsIssueEntry);
    return status;
  }

  @override
  Future<ErrorPackageModel> addLotToGoodsIssue(
      String goodsIssueId, List<GoodsIssueLot> lots) {
    // TODO: implement addLotToGoodsIssue
    final status = goodsIssueService.addLotToGoodsIssue(goodsIssueId, lots);
    return status;
  }

  @override
  Future<List<GoodsIssueModel>> getCompletedGoodsissue() {
    // TODO: implement getCompletedGoodsissue
    final goodsIssues = goodsIssueService.getCompletedGoodsissue();
    return goodsIssues;
  }

  @override
  Future<GoodsIssueModel> getGoodsIssueById(String goodsIssueId) {
    // TODO: implement getGoodsIssueById
    final goodsIssue = goodsIssueService.getGoodsIssueById(goodsIssueId);
    return goodsIssue;
  }

  @override
  Future<List<GoodsIssue>> getUncompletedGoodsIssue() {
    // TODO: implement getUncompletedGoodsIssue
    final goodsIssues = goodsIssueService.getUncompletedGoodsIssue();
    return goodsIssues;
  }

  @override
  Future<ErrorPackageModel> postNewGoodsIssue(
      String goodsIssueId,
      String purchaseOrderNumber,
      DateTime timestamp,
      String receiver,
      List<GoodsIssueEntry> entries) {
    // TODO: implement postNewGoodsIssue
    final status = goodsIssueService.postNewGoodsIssue(
        goodsIssueId, purchaseOrderNumber, timestamp, receiver, entries);
    return status;
  }

  @override
  Future<ErrorPackage> updateGoodsIssueEntry(
      String goodsIssueId, String itemEntryId, double newQuantity) {
    // TODO: implement updateGoodsIssueEntry
    final status = goodsIssueService.updateGoodsIssueEntry(
        goodsIssueId, itemEntryId, newQuantity);
    return status;
  }

  @override
  Future<ErrorPackage> updateGoodsIssueLot(
      String goodsIssueId, String goodsIssueLotId, double newQuantity) {
    // TODO: implement updateGoodsIssueLot
    final status = goodsIssueService.updateGoodsIssueLot(
        goodsIssueId, goodsIssueLotId, newQuantity);
    return status;
  }
}

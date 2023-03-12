import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/department.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/goods_issue.dart';

class CreateNewIssueState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
//--------
class LoadDepartmentIdsSuccess extends CreateNewIssueState {
  DateTime timestamp;
  List<Department> department;
  LoadDepartmentIdsSuccess(this.timestamp, this.department);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp, department];
}

//--------
class AddIssueEntrySuccess extends CreateNewIssueState {
  DateTime timestamp;
  AddIssueEntrySuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
//--------
class PostNewGoodsIssueSuccess extends CreateNewIssueState {
  DateTime timestamp;
  PostNewGoodsIssueSuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class PostNewGoodsIssueLoading extends CreateNewIssueState {
  DateTime timestamp;
  PostNewGoodsIssueLoading(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
class PostNewGoodsIssueFail extends CreateNewIssueState {
  DateTime timestamp;
  ErrorPackage status;
  PostNewGoodsIssueFail(this.timestamp, this.status);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
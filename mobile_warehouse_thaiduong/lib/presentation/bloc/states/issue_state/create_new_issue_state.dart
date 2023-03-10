import 'package:equatable/equatable.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/error_package.dart';

class CreateNewIssueState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
class NewIssueLoadingState extends Equatable {
  DateTime timestamp;
  NewIssueLoadingState(this.timestamp);
  
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];

}

//--------
class AddIssueEntryStateSuccess extends CreateNewIssueState {
  DateTime timestamp;
  AddIssueEntryStateSuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class PostIssueEntryStateSuccess extends CreateNewIssueState {
  ErrorPackage statusRequest;
  DateTime timestamp;
  PostIssueEntryStateSuccess(this.timestamp, this.statusRequest);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class PostIssueEntryStateFailure extends CreateNewIssueState {
  String error;
  DateTime timestamp;
  PostIssueEntryStateFailure(this.error, this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

//-------------------
class UpdateNewGoodsIssueStateSuccess extends CreateNewIssueState {
  DateTime timestamp;
  UpdateNewGoodsIssueStateSuccess(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}

class UpdateNewGoodsIssueStateFailure extends CreateNewIssueState {
  DateTime timestamp;
  UpdateNewGoodsIssueStateFailure(this.timestamp);
  @override
  // TODO: implement props
  List<Object?> get props => [timestamp];
}
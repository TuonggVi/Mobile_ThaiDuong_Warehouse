import 'package:equatable/equatable.dart';

class ReceiptEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
// create new receipt
class ClickToCreateReceiptEvent extends ReceiptEvent{
  @override
  List<Object> get props => [];
}
class AddLotToReceiptEvent extends ReceiptEvent{
   @override
  List<Object> get props => [];
}
class EditLotOfReceiptEvent extends ReceiptEvent{
   @override
  List<Object> get props => [];
}
class PostNewReceiptEvent extends ReceiptEvent{
   @override
  List<Object> get props => [];
}
//get and update uncompleted receipt 
class GetUncompletedReceiptsEvent extends ReceiptEvent{
   @override
  List<Object> get props => [];
}
class UpdateLotOfUncompletedReceiptEvent extends ReceiptEvent{
   @override
  List<Object> get props => [];
}
// get completedReceipt
class GetCompletedReceiptEvent extends ReceiptEvent{
   @override
  List<Object> get props => [];
}
// get Receipt byId
class GetGoodsReceiptDetailEvent extends ReceiptEvent{
   @override
  List<Object> get props => [];
}
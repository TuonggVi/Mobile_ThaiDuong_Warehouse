import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_warehouse_thaiduong/domain/usecases/goods_issue_usecase.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/events/issue_event/list_lot_issue_completed_event.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/events/issue_event/list_lot_issue_event.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/states/issue_state/list_completed_lots_issue_state.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/states/issue_state/list_lot_issue_state.dart';

class ListGoodsIssueLotUncompletedBloc extends Bloc<GoodsIssueLotEvent, GoodsIssueLotState> {
  GoodsIssueUseCase goodsIssueUseCase;
  ListGoodsIssueLotUncompletedBloc(this.goodsIssueUseCase):super(LoadingGoodsIssueLotsSuggestState(DateTime.now())){
  }
}
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';
import 'package:mobile_warehouse_thaiduong/domain/usecases/item_lot_usecase.dart';
import 'package:mobile_warehouse_thaiduong/domain/usecases/location_usecase.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/events/warning_events.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/states/warning_states.dart';

List<String> expirationDateIds = [];
List<String> warehouseIds = [];

class WarningBloc extends Bloc<WarningEvent, WarningState> {
  ItemLotUsecase itemLotUsecase;
  LocationUsecase locationUsecase;
  WarningBloc(this.itemLotUsecase, this.locationUsecase)
      : super(GetExpirationLoadingState(DateTime.now())) {
    on<GetExpirationEvent>(_onGetExpiration);
    on<ExpirationWarningEvent>(_onExpirationWarning);
    on<GetWarehouseEvent>(_onGetWarehouse);
    on<MinimumStockWarningEvent>(_onMinimumStockWarning);
  }
// hiển thị list hạn sử dụng còn lại
  Future<void> _onGetExpiration(
      WarningEvent event, Emitter<WarningState> emit) async {
    if (event is GetExpirationEvent) {
      emit(GetExpirationLoadingState(DateTime.now()));
      try {
        expirationDateIds.clear();
        final expirationDateOrErr = await locationUsecase.getAllExpirationDate();
        print(expirationDateOrErr.toString());
        if (expirationDateOrErr.isNotEmpty) {
          for (int i = 0; i < expirationDateOrErr.length; i++) {
            expirationDateIds.add(expirationDateOrErr[i]);
          }
          print(expirationDateIds.toString());
          emit(GetExpirationSuccessState(DateTime.now(), expirationDateIds));
        } else {
          print(expirationDateOrErr.toString());
        }
      } catch (e) {
        print(e);
      }
    }
  }
  // cảnh báo hạn sử dụng
  Future<void> _onExpirationWarning(
      WarningEvent event, Emitter<WarningState> emit) async {
    emit(ExpirationWarningLoadingState(DateTime.now()));
    try {
      if (event is ExpirationWarningEvent) {
        final itemLots = await itemLotUsecase.getExpiredItemLots();
        emit(ExpirationWarningSuccessState(DateTime.now(), itemLots));
      }
    } catch (e) {
      emit(ExpirationWarningFailState (DateTime.now()));
    }
  }

  // hiển thị list bộ phận
  Future<void> _onGetWarehouse(
      WarningEvent event, Emitter<WarningState> emit) async {
    if (event is GetExpirationEvent) {
      emit(GetWarehouseLoadingState(DateTime.now()));
      try {
        warehouseIds.clear();
        final warehouseOrErr = await locationUsecase.getAllWarehouseId();
        print(warehouseOrErr.toString());
        if (warehouseOrErr.isNotEmpty) {
          for (int i = 0; i < warehouseOrErr.length; i++) {
            warehouseIds.add(warehouseOrErr[i]);
          }
          print(warehouseIds.toString());
          emit(GetWarehouseSuccessState(DateTime.now(), warehouseIds));
        } else {
          print(warehouseOrErr.toString());
        }
      } catch (e) {
        print(e);
      }
    }
  }

  // cảnh báo số lượng tồn kho tối thiểu
  Future<void> _onMinimumStockWarning(
      WarningEvent event, Emitter<WarningState> emit) async {
    emit(MinimumStockWarningLoadingState(DateTime.now()));
    try {
      if (event is MinimumStockWarningEvent) {
        final itemLots = await itemLotUsecase.getUnderStockminItemLots();
        emit(ExpirationWarningSuccessState(DateTime.now(), itemLots));
      }
    } catch (e) {
      emit(ExpirationWarningFailState(DateTime.now()));
    }
  }
}

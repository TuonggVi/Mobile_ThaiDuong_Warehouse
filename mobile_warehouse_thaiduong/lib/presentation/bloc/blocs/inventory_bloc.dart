import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';
import 'package:mobile_warehouse_thaiduong/domain/usecases/item_usecase.dart';
import 'package:mobile_warehouse_thaiduong/domain/usecases/item_lot_usecase.dart';
import 'package:mobile_warehouse_thaiduong/domain/usecases/inventory_usecase.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/events/inventory_events.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/states/inventory_states.dart';

import '../../../domain/usecases/location_usecase.dart';

List<String> warehouseIds = [];
List<String> itemIds = [];
List <ItemLot> itemLots = [];
class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  ItemUsecase itemUsecase;
  LocationUsecase locationUsecase;
  Inventoryusecase inventoryusecase;
  ItemLotUsecase itemLotUsecase;

  InventoryBloc(this.itemUsecase, this.locationUsecase,this.inventoryusecase, this.itemLotUsecase)
      : super(GetWarehouseIdLoadingState(DateTime.now())) {
    on<GetWarehouseIdEvent>(_onGetWarehouseIds);
    on<GetAllItemIdByWarehouseIdEvent>(_onGetAllItemByWarehouseId);
    on<LoadInventoryEvent>(_onLoadInventory);

  }
// list mã kho hàng
  Future<void> _onGetWarehouseIds(
      InventoryEvent event, Emitter<InventoryState> emit) async {
    if (event is GetWarehouseIdEvent) {
      emit(GetWarehouseIdLoadingState(DateTime.now()));
      try {
        warehouseIds.clear();
        final warehouseOrErr = await locationUsecase.getAllWarehouseId();
        print(warehouseOrErr.toString());
        if (warehouseOrErr.isNotEmpty) {
          for (int i = 0; i < warehouseOrErr.length; i++) {
            warehouseIds.add(warehouseOrErr[i]);
          }
          print(warehouseIds.toString());
          emit(GetWarehouseIdSuccessState(DateTime.now(), warehouseIds));
        } else {
          print(warehouseOrErr.toString());
        }
      } catch (e) {
        print(e);
      }
    }
  }
// list mã sản phẩm theo kho hàng
  Future<void> _onGetAllItemByWarehouseId(
      InventoryEvent event, Emitter<InventoryState> emit) async {
    emit(GetAllItemIdByWarehouseLoadingState(DateTime.now()));
    try {
      if (event is GetAllItemIdByWarehouseIdEvent) {
        final itemIds = await inventoryusecase.getAllItemByWarehouseId(event.warehouseIds);
        emit(GetAllItemIdByWarehouseSuccessState(DateTime.now(), itemIds));
      }
    } catch (e) {
      emit(GetAllItemIdByWarehouseFailState(DateTime.now()));
    }
  }
// lọc kho hàng theo thông tin tìm kiếm
 Future<void> _onLoadInventory(
       InventoryEvent event, Emitter<InventoryState> emit) async {
    emit(LoadInventoryLoadingState(DateTime.now()));
    try {
      if (event is LoadInventoryEvent) {
        final itemLots = await itemLotUsecase.getItemLotsByLocation(event.warehouseIds, event.itemIds);
        emit(LoadInventorySuccessState(DateTime.now(), itemLots));
      }
    } catch (e) {
      emit(LoadInventoryFailState(DateTime.now()));
    }
  }
}





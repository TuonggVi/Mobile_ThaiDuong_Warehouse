import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mobile_warehouse_thaiduong/domain/entities/item_lot.dart';
import 'package:mobile_warehouse_thaiduong/domain/usecases/item_usecase.dart';
import 'package:mobile_warehouse_thaiduong/domain/usecases/item_lot_usecase.dart';
import 'package:mobile_warehouse_thaiduong/domain/usecases/location_usecase.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/events/shelve_events.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/states/shelve_states.dart';

List<String> itemIds = [];
List <ItemLot> itemLots = [];
List<String> locationIds = [];


class ShelveBloc extends Bloc<ShelveEvent, ShelveState> {
  ItemUsecase itemUsecase;
  ItemLotUsecase itemLotUsecase;
  LocationUsecase locationUsecase;
  ShelveBloc(this.itemUsecase, this.locationUsecase, this.itemLotUsecase)
      : super(GetAllItemIdLoadingState(DateTime.now())) {
    on<GetAllItemIdEvent>(_onGetAllItem);
    on<GetLotByItemIdEvent>(_onGetLotByItemId);
    on<GetAllLocationEvent>(_onGetAllLocation);
    on<GetLotByLocationEvent>(_onGetLotByLocation);
  }
  // lấy mã sản phẩm
Future<void> _onGetAllItem(
      ShelveEvent event, Emitter<ShelveState> emit) async {
    if (event is GetAllItemIdEvent) {
      emit(GetAllItemIdLoadingState(DateTime.now()));
      try {
        itemIds.clear();
        final itemIdsOrErr = await itemUsecase.getAllItem();
        print(itemIdsOrErr.toString());

        if (itemIdsOrErr.isNotEmpty) {
          for (int i = 0; i < itemIdsOrErr.length; i++) {
            itemIds.add(itemIdsOrErr[i].itemId);
          }
          print(itemIds.toString());
          emit(GetAllItemIdSuccessState(DateTime.now(), itemIds));
        } else {
          print(itemIdsOrErr.toString());
        }
      } catch (e) {
        print(e);
      }
    }
  }
  // lọc lô theo mã sản phẩm
  Future<void> _onGetLotByItemId(
      ShelveEvent event, Emitter<ShelveState> emit) async {
    emit(GetLotByItemIdLoadingState(DateTime.now()));
    try {
      if (event is GetLotByItemIdEvent) {
        final itemLots = await itemLotUsecase.getItemLotsByItemId(event.itemId);
        emit(GetLotByItemIdSuccessState(DateTime.now(), itemLots));
      }
    } catch (e) {
      emit(GetLotByItemIdFailState(DateTime.now()));
    }
  }
  // Lấy list vị trí 
    Future<void> _onGetAllLocation(
      ShelveEvent event, Emitter<ShelveState> emit) async {
    if (event is GetAllLocationEvent) {
      emit(GetAllLocationLoadingState(DateTime.now()));
      try {
        locationIds.clear();
        final locationOrErr = await locationUsecase.getAllLocationId();
        print(locationOrErr.toString());
        if (locationOrErr.isNotEmpty) {
          for (int i = 0; i < locationOrErr.length; i++) {
            locationIds.add(locationOrErr[i]);
          }
          print(locationIds.toString());
          emit(GetAllLocationSuccessState(DateTime.now(), locationIds));
        } else {
          print(locationOrErr.toString());
        }
      } catch (e) {
        print(e);
      }
    }
  }
// lọc lô theo vị trí
    Future<void> _onGetLotByLocation(
      ShelveEvent event, Emitter<ShelveState> emit) async {
    emit(GetLotByLocationLoadingState(DateTime.now()));
    try {
      if (event is GetLotByLocationEvent) {
        final itemLots = await itemLotUsecase.getItemLotsByLocation(event.locationId);
        emit(GetLotByLocationSuccessState(DateTime.now(), itemLots));
      }
    } catch (e) {
      emit(GetLotByLocationFailState(DateTime.now()));
    }
  }
}


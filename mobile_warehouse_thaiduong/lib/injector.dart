import 'package:get_it/get_it.dart';
import 'package:mobile_warehouse_thaiduong/datasource/repositories_impl/login_repo_impl.dart';
import 'package:mobile_warehouse_thaiduong/datasource/service/login_service.dart';
import 'package:mobile_warehouse_thaiduong/domain/usecases/login_usecase.dart';
import 'package:mobile_warehouse_thaiduong/presentation/bloc/blocs/login_bloc.dart';

import 'domain/repositories/login_repository.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
//register data service
  injector.registerSingleton<LoginService>(LoginService());
// register repository
  injector.registerSingleton<LoginRepository>(LoginRepositoryImpl(injector()));
// register usecase
  injector.registerSingleton<LoginUsecase>(LoginUsecase(injector()));
// register bloc
  injector.registerSingleton<LoginBloc>(LoginBloc(injector()));
}

import 'package:get_it/get_it.dart';
import 'package:outfity/core/photo_service.dart';
import 'package:outfity/data/repository_impl.dart';

import '../domain/repository.dart';
import '../ui/cloth_detail_page/cloth_detail_bloc.dart';
import '../ui/home_page/home_bloc.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  getIt.registerLazySingleton<Repository>(() => RepositoryImpl());

  getIt.registerLazySingleton<PhotoService>(PhotoService.new);

  getIt.registerFactory<HomeBloc>(
    () => HomeBloc(repository: getIt<Repository>()),
  );

  getIt.registerFactory<ClothDetailBloc>(
    () => ClothDetailBloc(
      repository: getIt<Repository>(),
      photoService: getIt<PhotoService>(),
    ),
  );
}

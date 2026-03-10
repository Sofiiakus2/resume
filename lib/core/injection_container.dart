import 'package:get_it/get_it.dart';

import '../features/experience/data/datasource/local/experience_local_datasource.dart';
import '../features/experience/data/repository/experience_repository_impl.dart';
import '../features/experience/domain/repository/experience_repository.dart';
import '../features/experience/domain/usecases/get_experience.dart';
import '../features/experience/presentation/bloc/experience_cubit.dart';

final sl = GetIt.instance;

Future<void> initDI() async{


  ///experience
  sl.registerFactory(() => ExperienceCubit(sl()));
  sl.registerLazySingleton(() => GetExperiencesUsecase(sl()));
  sl.registerLazySingleton<ExperienceRepository>(
        () => ExperienceRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<ExperienceLocalDatasource>(
        () => const ExperienceLocalDatasourceImpl(),
  );
}
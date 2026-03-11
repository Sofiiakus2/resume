import 'package:get_it/get_it.dart';

import '../features/about/data/datasources/local/education_local_datasource.dart';
import '../features/about/data/datasources/local/who_ami_local_datasource.dart';
import '../features/about/data/repository/education_repository_impl.dart';
import '../features/about/data/repository/who_ami_repository_impl.dart';
import '../features/about/domain/repository/education_repository.dart';
import '../features/about/domain/repository/who_ami_repository.dart';
import '../features/about/domain/usecases/get_education.dart';
import '../features/about/domain/usecases/get_who_ami_usecase.dart';
import '../features/about/presentation/bloc/education/education_cubit.dart';
import '../features/about/presentation/bloc/who_ami/who_ami_cubit.dart';
import '../features/contacts/data/datasource/contact_local_datasource.dart';
import '../features/contacts/data/repository/contact_repository_impl.dart';
import '../features/contacts/domain/repository/contact_repository.dart';
import '../features/contacts/domain/usecases/get_contact.dart';
import '../features/contacts/presentation/bloc/contact_cubit.dart';
import '../features/experience/data/datasource/local/experience_local_datasource.dart';
import '../features/experience/data/repository/experience_repository_impl.dart';
import '../features/experience/domain/repository/experience_repository.dart';
import '../features/experience/domain/usecases/get_experience.dart';
import '../features/experience/presentation/bloc/experience_cubit.dart';
import '../features/skills/data/datasources/local/skills_local_datasource.dart';
import '../features/skills/data/repository/skills_repository_impl.dart';
import '../features/skills/domain/reporitory/skills_repository.dart';
import '../features/skills/domain/usecases/get_skills.dart';
import '../features/skills/presentation/bloc/skills_cubit.dart';

final sl = GetIt.instance;

Future<void> initDI() async{
  ///whoAmI
  sl.registerFactory(() => WhoAmiCubit(sl()));
  sl.registerLazySingleton(() => GetWhoAmiUsecase(sl()));
  sl.registerLazySingleton<WhoAmiRepository>(
        () => WhoAmiRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<WhoAmiLocalDatasource>(
        () => const WhoAmiLocalDatasourceImpl(),
  );
  ///education
  sl.registerFactory(() => EducationCubit(sl()));
  sl.registerLazySingleton(() => GetEducationUsecase(sl()));
  sl.registerLazySingleton<EducationRepository>(
        () => EducationRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<EducationLocalDatasource>(
        () => const EducationLocalDatasourceImpl(),
  );

  ///experience
  sl.registerFactory(() => ExperienceCubit(sl()));
  sl.registerLazySingleton(() => GetExperiencesUsecase(sl()));
  sl.registerLazySingleton<ExperienceRepository>(
        () => ExperienceRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<ExperienceLocalDatasource>(
        () => const ExperienceLocalDatasourceImpl(),
  );

  ///skills
  sl.registerFactory(() => SkillsCubit(sl()));
  sl.registerLazySingleton(() => GetSkillsUsecase(sl()));
  sl.registerLazySingleton<SkillsRepository>(
        () => SkillsRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<SkillsLocalDatasource>(
        () => const SkillsLocalDatasourceImpl(),
  );

  ///contacts
  sl.registerFactory(() => ContactCubit(sl()));
  sl.registerLazySingleton(() => GetContactUsecase(sl()));
  sl.registerLazySingleton<ContactRepository>(
        () => ContactRepositoryImpl(sl()),
  );
  sl.registerLazySingleton<ContactLocalDatasource>(
        () => const ContactLocalDatasourceImpl(),
  );
}
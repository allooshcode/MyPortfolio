import 'package:get_it/get_it.dart';
import 'package:my_porfolio/features/portfolio/data/datasources/call_linkedin_data.dart';
import 'package:my_porfolio/features/portfolio/data/datasources/resume_data.dart';
import 'package:my_porfolio/features/portfolio/data/repositories/call_linkedin_data.dart';
import 'package:my_porfolio/features/portfolio/data/repositories/resume_repository_data.dart';
import 'package:my_porfolio/features/portfolio/domain/repositories/call_linkedin_repository.dart';
import 'package:my_porfolio/features/portfolio/domain/repositories/resume_repository.dart';
import 'package:my_porfolio/features/portfolio/domain/usecases/call_linkedin_usecase.dart';
import 'package:my_porfolio/features/portfolio/domain/usecases/resume_usecase.dart';
import 'package:my_porfolio/features/portfolio/presentation/bloc/port_folio_bloc/portfolio_bloc.dart';

final sl = GetIt.I;

Future initSl() async {
  //contorllers

  sl.registerFactory(
      () => PortfolioBloc(callLinkedInUsecase: sl(), callResumeUsecase: sl()));
  //usecases
  sl.registerLazySingleton<CallResumeUsecase>(() => CallResumeUsecase(sl()));
  sl.registerLazySingleton<CallLinkedInUsecase>(
      () => CallLinkedInUsecase(sl()));

  //domain
  sl.registerLazySingleton<CallResumeRepository>(
      () => ResumeRepositoryData(resumeData: sl()));

  sl.registerLazySingleton<CallLinkedInRepository>(
      () => CallLinkedInDataRepository(sl()));

  //data
  sl.registerLazySingleton<ResumeData>(() => ResumeData());
  sl.registerLazySingleton<CallLinkedInData>(() => CallLinkedInData());
}

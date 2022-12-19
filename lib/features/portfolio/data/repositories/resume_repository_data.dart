import 'package:dartz/dartz.dart';
import 'package:my_porfolio/features/portfolio/domain/repositories/resume_repository.dart';
import 'package:my_porfolio/global/errors/exceptions.dart';
import 'package:my_porfolio/global/errors/failures.dart';

import '../datasources/resume_data.dart';

class ResumeRepositoryData implements CallResumeRepository {
  final ResumeData resumeData;
  ResumeRepositoryData({required this.resumeData});

  @override
  Future<Either<Failure, bool>> callResume() async {
    try {
      await resumeData.callLink();
      return right(true);
    } on ServerException catch (err) {
      return left(ServerFuilure(err.toString()));
    }
  }
}

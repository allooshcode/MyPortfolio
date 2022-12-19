import 'package:dartz/dartz.dart';
import 'package:my_porfolio/global/errors/failures.dart';

abstract class CallResumeRepository {
  Future<Either<Failure, bool>> callResume();
}

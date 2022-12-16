import 'package:dartz/dartz.dart';
import 'package:my_porfolio/features/portfolio/domain/repositories/call_linkedin_repository.dart';
import 'package:my_porfolio/global/errors/exceptions.dart';
import 'package:my_porfolio/global/errors/failures.dart';

import '../datasources/call_linkedin_data.dart';

class CallLinkedInDataRepository implements CallLinkedInRepository {
  final CallLinkedInData callLinkedInData;
  CallLinkedInDataRepository(this.callLinkedInData);

  @override
  Future<Either<Failure, bool>> callLinkedInREpository() async {
    try {
      callLinkedInData.callLinkedinData();
      return right(true);
    } on ServerException catch (err) {
      return left(ServerFuilure(err.msgError));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:my_porfolio/global/errors/failures.dart';

import '../repositories/call_mob_link_repo.dart';

class CallMobAppUsecase extends Equatable {
  final CallAnyLinkRepoBase callAnyLinkRepoBase;
  const CallMobAppUsecase(this.callAnyLinkRepoBase);

  Future<Either<Failure, bool>> callAnyLink() {
    return callAnyLinkRepoBase.callMobAppRepository();
  }

  @override
  List<Object?> get props => throw UnimplementedError();
}

import 'package:dartz/dartz.dart';

import '../../entities/entities.dart';

abstract class GetDepositTransactionUseCase {
  Future<Either<Exception, List<TransactionEntity>>> call();
}

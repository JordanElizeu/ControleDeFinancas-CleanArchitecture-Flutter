import 'package:controle_financeiro/features/user_account_firebase/data/datasources/firebase/get_user_information_datasource.dart';
import 'package:controle_financeiro/features/user_account_firebase/domain/entities/user_information_entity.dart';
import 'package:controle_financeiro/features/user_account_firebase/domain/repositories/user_information_repository.dart';
import 'package:dartz/dartz.dart';

class UserInformationRepositoryImp implements UserInformationRepository {
  final GetUserInformationDataSource _getUserInformationDataSource;

  UserInformationRepositoryImp(this._getUserInformationDataSource);

  @override
  Future<Either<Exception, UserInformationEntity>>
      getUserFirebaseInformation() {
    return _getUserInformationDataSource.call();
  }
}
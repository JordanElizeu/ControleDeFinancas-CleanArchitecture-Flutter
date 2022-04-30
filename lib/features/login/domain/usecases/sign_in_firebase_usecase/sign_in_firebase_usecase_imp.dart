import 'package:controle_financeiro/features/login/domain/entities/sign_in_firebase_entity.dart';
import 'package:controle_financeiro/features/login/domain/usecases/sign_in_firebase_usecase/sign_in_firebase_usecase.dart';
import 'package:dartz/dartz.dart';
import '../../../../../core/validation/email_validation.dart';
import '../../repositories/login_repository.dart';

class SignInUseCaseImp implements SignInUseCase {
  final LoginRepository _loginRepository;

  SignInUseCaseImp(this._loginRepository);

  @override
  Future<Either<Exception, SignInFirebaseEntity>> call(
      {required SignInFirebaseEntity signInEntity}) async {
    if (EmailValidation.validateEmail(signInEntity.email) &&
        signInEntity.password.length >= 6) {
      return _loginRepository.signInFirebase(signInEntity: signInEntity);
    } else {
      return Left(Exception('erro ocorrido'));
    }
  }
}
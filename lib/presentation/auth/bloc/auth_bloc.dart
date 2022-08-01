import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:koperasi/data/model/login_response.dart';
import 'package:koperasi/repository/login_repository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.loginRepository}) : super(const AuthState());

  final LoginRepository loginRepository;

  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AuthEventLoginPressedButton) {
      yield AuthLoadingState();
      try {
        LoginResponse? _loginResponse;
        _loginResponse = await loginRepository.authLogin(email: event.email!, password: event.password!);
        yield AuthSuccess(loginResponse: _loginResponse!);
      } catch (e){
        yield AuthStateError(error: e.toString());
      }
    }
  }
}

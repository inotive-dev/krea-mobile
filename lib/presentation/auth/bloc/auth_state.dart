part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState{}

class AuthLoadingState extends AuthState{}

class AuthSuccess extends AuthState{
  final LoginResponse loginResponse;
  const AuthSuccess({required this.loginResponse});

  @override
  List<Object> get props => [];
}

class AuthStateError extends AuthState {
  final String? error;
  const AuthStateError({required this.error});

  @override
  List<Object> get props => [error!];
}

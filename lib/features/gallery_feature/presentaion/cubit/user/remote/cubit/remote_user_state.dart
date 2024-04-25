part of 'remote_user_cubit.dart';

sealed class RemoteUserState {
  final List<UserModel> users;
  final DioError? error;

  const RemoteUserState({this.users = const [], this.error});
}

final class RemoteUserLoading extends RemoteUserState {
  const RemoteUserLoading();
}

final class RemoteUserSuccess extends RemoteUserState {
  const RemoteUserSuccess({super.users});
}

final class RemoteUserError extends RemoteUserState {
  const RemoteUserError({super.error});
}

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linkyou/core/resources/data_state.dart';
import 'package:linkyou/features/gallery_feature/data/models/user_model.dart';
import 'package:linkyou/features/gallery_feature/domain/usecases/get_user_usecase.dart';
import 'package:linkyou/features/gallery_feature/domain/usecases/post_user_usecase.dart';

part 'remote_user_state.dart';

class RemoteUserCubit extends Cubit<RemoteUserState> {
  final GetUserUseCase _getUserUseCase;
  final PostUserUseCase _postUserUseCase;
  RemoteUserCubit(this._getUserUseCase, this._postUserUseCase) : super(const RemoteUserLoading());

  static RemoteUserCubit getInstance(context) => BlocProvider.of<RemoteUserCubit>(context);

  List<UserModel> users = [];

  Future<void> getUsers() async {
    emit(const RemoteUserLoading());

    final response = await _getUserUseCase.call();
    final postResult = await _postUserUseCase.call();

    if (response is DataSuccess && postResult is DataSuccess) {
      users = response.data as List<UserModel>;
      users.add(postResult.data as UserModel);

      emit(RemoteUserSuccess(users: users));
    } else if (response is DataFailed) {
      emit(RemoteUserError(error: response.error));
    } else if (postResult is DataFailed) {
      emit(RemoteUserError(error: postResult.error));
    }
  }
}

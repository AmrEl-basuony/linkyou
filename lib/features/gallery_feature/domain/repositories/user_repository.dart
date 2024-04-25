import 'package:linkyou/core/resources/data_state.dart';
import 'package:linkyou/features/gallery_feature/data/models/user_model.dart';

abstract class UserRepository {
  Future<DataState<List<UserModel>>> getUsers();

  Future<DataState<UserModel>> postUser();
}

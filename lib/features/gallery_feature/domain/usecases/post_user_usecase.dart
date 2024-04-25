import 'package:linkyou/core/resources/data_state.dart';
import 'package:linkyou/core/usecase/usecase.dart';
import 'package:linkyou/features/gallery_feature/data/models/user_model.dart';
import 'package:linkyou/features/gallery_feature/domain/repositories/user_repository.dart';

class PostUserUseCase implements UseCase<DataState<UserModel>, void> {
  final UserRepository _userRepository;

  PostUserUseCase(this._userRepository);

  @override
  Future<DataState<UserModel>> call({void params}) {
    return _userRepository.postUser();
  }
}

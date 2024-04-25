import 'package:flutter/material.dart';
import 'package:linkyou/features/gallery_feature/data/models/user_model.dart';

class UsersList extends StatelessWidget {
  const UsersList({required this.users, super.key});
  final List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          leading: Text("${user.id}"),
          title: Text("${user.email}"),
          subtitle: Text("${user.firstName}"),
          trailing: Text("${user.lastName}"),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

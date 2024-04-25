class UserModel {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? avatar;

  UserModel({
    id,
    firstName,
    lastName,
    email,
    avatar,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    firstName = json["first_name"];
    lastName = json["last_name"];
    email = json["email"];
    avatar = json["avatar"];
  }
}

class UserModel {
  const UserModel({
    required this.id,
    required this.email,
    required this.displayName,
  });

  final String id;
  final String email;
  final String displayName;

  Map<String, dynamic> toMap() => {
        'id': id,
        'email': email,
        'displayName': displayName,
      };
}

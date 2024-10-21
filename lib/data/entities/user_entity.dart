import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String userId;
  final String mail;
  final String password;

  const MyUserEntity({
    required this.mail,
    required this.password,
    required this.userId,
  });

  Map<String, Object?> toDocument() {
    return {
      'userId': userId,
      'mail': mail,
      'password': password,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
      userId: doc['userId'],
      mail: doc['mail'],
      password: doc['password'],
    );
  }

  @override
  List<Object?> get props => [userId, mail, password];
}

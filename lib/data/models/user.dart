import 'package:equatable/equatable.dart';
import 'package:qatfor/data/entities/entity.dart';

class MyUser extends Equatable {
  const MyUser(
      {required this.mail, required this.password, required this.userId});
  final String userId;
  final String mail;
  final String password;

  static const empty = MyUser(
    mail: '',
    password: '',
    userId: '',
  );

  MyUser copyWith({
    String? userId,
    String? mail,
    String? password,
  }) {
    return MyUser(
      mail: mail ?? this.mail,
      password: password ?? this.password,
      userId: userId ?? this.userId,
    );
  }

  MyUserEntity toEntity() {
    return MyUserEntity(
      mail: mail,
      password: password,
      userId: userId,
    );
  }

  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      mail: entity.mail,
      password: entity.password,
      userId: entity.userId,
    );
  }

  @override
  List<Object?> get props => [mail, password, userId];
}

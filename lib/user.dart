import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    this.email,
    this.name,
    this.photo,
  });

  final String? email;

  final String id;

  final String? name;

  final String? photo;



  @override
  List<Object?> get props => [email, id, name, photo];
}

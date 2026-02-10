import 'package:flutter/foundation.dart';

class User {
  final String name;
  final String email;
  final String avatarUrl;

  const User({
    required this.name,
    required this.email,
    required this.avatarUrl,
  });

  User copyWith({String? name, String? email, String? avatarUrl}) => User(
    name: name ?? this.name,
    email: email ?? this.email,
    avatarUrl: avatarUrl ?? this.avatarUrl,
  );
}

class UserService {
  UserService._();
  static final UserService instance = UserService._();

  // Simple in-memory user notifier; replace with real auth later
  final userNotifier = ValueNotifier<User>(
    const User(
      name: 'John Doe',
      email: 'johndoe@example.com',
      avatarUrl: 'https://i.pravatar.cc/150',
    ),
  );

  User get user => userNotifier.value;

  void update({String? name, String? email, String? avatarUrl}) {
    userNotifier.value = userNotifier.value.copyWith(
      name: name,
      email: email,
      avatarUrl: avatarUrl,
    );
  }
}

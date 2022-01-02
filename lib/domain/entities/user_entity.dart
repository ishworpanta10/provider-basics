import 'package:provider_demo/domain/entities/base_entity.dart';

class UserEntity extends BaseEntity {
  final String userId;
  final String name;
  final String email;

  UserEntity({
    required this.userId,
    required this.name,
    required this.email,
    required int id,
    String? createdAt,
    String? updatedAt,
  }) : super(id: id, createdAt: createdAt, updatedAt: updatedAt);
}

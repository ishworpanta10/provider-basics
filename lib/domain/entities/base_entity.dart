class BaseEntity {
  int id;
  final String? createdAt;
  final String? updatedAt;

  BaseEntity({required this.id, this.createdAt, this.updatedAt});
}

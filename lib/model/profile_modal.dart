// 
class ProfileModle {
  final String name;
  final String phone;
  final String address;
  final String state;
  final String? id;

  ProfileModle({
    required this.name,
    required this.phone,
    required this.address,
    required this.state,
    this.id
  });
}

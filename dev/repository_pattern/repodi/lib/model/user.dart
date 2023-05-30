class User {
  final int id;
  final String name;
  final int age;
  final String dob;
  final String birthTime;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.dob,
    required this.birthTime,
  });

  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, dob: $dob, birthTime: $birthTime)';
  }
}

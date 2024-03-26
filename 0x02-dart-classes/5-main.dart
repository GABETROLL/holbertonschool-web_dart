import '5-json_to_user.dart';

void main() {
    final one = User(id: 1, name: "Djo", age: 25, height: 1.89);
    print(one);
    final oneJson = one.toJson();
    print(oneJson);
    final two = User.fromJson(oneJson);
    print(two);
    final twoJson = two.toJson();
    print(twoJson);
    final three = User.fromJson(twoJson);
    print(three);
}

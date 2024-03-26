import '6-password.dart';

class User {
    int id = 0;
    String name = '';
    int age = 0;
    double height = 0.0;
    String user_password = '';

    User({ int id = 0, String name = '', int age = 0, double height = 0.0, String user_password = '' }) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.height = height;
        this.user_password = user_password;
    }

    String toString() => 'User(id : $id ,name: $name, age: $age, height: $height, password: ${(new Password(password: this.user_password).isValid())})';

    Map<String, dynamic> toJson() {
        return { 'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height };
    }

    static User fromJson(Map<dynamic, dynamic> userJson) {
        return new User(id: userJson['id'], name: userJson['name'], age: userJson['age'], height: userJson['height'], user_password: userJson['user_password']);
    }
}

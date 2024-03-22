import '3-private_password.dart';

void main() {
    final ps = Password(password: "Passwordcode");
    print(ps.toString());
    print(ps);
    print(ps.isValid());
    final ps2 = Password(password: "PasswordDecode3");
    print(ps2.toString());
    print(ps);
    print(ps2.isValid());

    // print(ps._password); // Error: The getter '_password' isn't defined for the class 'Password'.
    // print(ps.password); // Error: The getter 'password' isn't defined for the class 'Password'.
    // print(ps._password()); // Error: The method '_password' isn't defined for the class 'Password'.
    // print(ps.password()); // Error: The method 'password' isn't defined for the class 'Password'.
}

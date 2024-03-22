import '4-mutables.dart';

void main() {
    final password = Password(password: "Passwordecode");
    print(password.password);
    // print(password.password()); // Error: 'password' isn't a function or method and can't be invoked.
    // print(password._password); // Error: The getter '_password' isn't defined for the class 'Password'.
    // print(password._password()); // Error: The method '_password' isn't defined for the class 'Password'
    print(password.isValid());
    print(password);
    password.password = "Youssef4321";
    print(password.password);
    // print(password.password()); // Error: 'password' isn't a function or method and can't be invoked.
    // print(password._password); // Error: The getter '_password' isn't defined for the class 'Password'.
    // print(password._password()); // Error: The method '_password' isn't defined for the class 'Password'
    print(password.isValid());
    print(password);
}

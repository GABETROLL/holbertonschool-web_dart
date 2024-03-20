import '0-class.dart';

void main() {
    final firstPer = User();
    print(firstPer.name);
    print(firstPer.showName());
    firstPer.name = "Youssef Belhadj";
    print(firstPer.name);
    print(firstPer.showName());
}

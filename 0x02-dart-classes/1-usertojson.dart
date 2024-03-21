class User {
    String name = '';
    int age = 0;
    double height = 0.0;

    User({ String? name, int? age, double? height}) {
        this.name = name ?? this.name;
        this.age = age ?? this.age;
        this.height = height ?? this.height;
    }

    String toJson() {
        return '{name: ${this.name}, age: ${this.age}, height: ${this.height}}';
    }
}

Future<int> longCalculation() {
    print('before longCalculation');
    return Future.delayed(new Duration(seconds: 2), () {
        print('Before completing longCalculation code'); return 5;
    });
}

Future<void> main() async {
    print('before main');
    print(await longCalculation());
    print('Completing code...');
}

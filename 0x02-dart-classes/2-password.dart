class Password {
    String password = '';

    bool isValid() {
        if (password.length <= 8 || password.length >= 16)
            return false;

        int $A = 'A'.codeUnitAt(0);
        int $Z = 'Z'.codeUnitAt(0);
        int $a = 'a'.codeUnitAt(0);
        int $z = 'z'.codeUnitAt(0);
        int $0 = '0'.codeUnitAt(0);
        int $9 = '9'.codeUnitAt(0);

        bool containsUpper = false;
        bool containsLower = false;
        bool containsDigit = false;

        for (int codeUnit in password.codeUnits) {
            if ($A <= codeUnit && codeUnit <= $Z)
                containsUpper = true;
            if ($a <= codeUnit && codeUnit <= $z)
                containsLower = true;
            if ($0 <= codeUnit && codeUnit <= $9)
                containsDigit = true;
        }

        return containsUpper && containsLower && containsDigit;
    }

    String toString() => 'Your Password is: $password';
}

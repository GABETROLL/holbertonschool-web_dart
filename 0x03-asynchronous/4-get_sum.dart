import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
    try {
        final userId = json.decode(await fetchUserData())['id'];
        final userOrders = json.decode(await fetchUserOrders(userId));

        double total = 0.0;

        if (userOrders == null) return total;

        for (final product in userOrders) {
            final productPrice = json.decode(await fetchProductPrice(product));
            total += productPrice;
        }

        return total;
    } catch (error) {
        return -1;
    }
}

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
    try {
        String? nextPageUrl = 'https://rickandmortyapi.com/api/character';

        while (nextPageUrl != null) {
            http.Response charactersResponse = await http.get(
                Uri.parse(nextPageUrl),
            );
            if (charactersResponse.statusCode != 200) return;

            Map<String, dynamic> charactersBody = json.decode(charactersResponse.body);

            for (final Map<String, dynamic> character in charactersBody['results']) {
                print(character['name']);
            }

            nextPageUrl = charactersBody['info']['next'];
        }
    } catch (error) {
        print('error caught: $error');
    }
}

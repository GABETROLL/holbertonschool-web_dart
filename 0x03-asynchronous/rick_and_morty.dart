import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
    try {
        Map<String, dynamic> charactersResponse = json.decode((await http.get(
            Uri.parse('https://rickandmortyapi.com/api/character'),
        )).body);
        String? nextPageUrl = charactersResponse['info']['next'];

        while (true) {
            for (final Map<String, dynamic> character in charactersResponse['results']) {
                print(character['name']);
            }

            if (nextPageUrl == null) break;

            charactersResponse = json.decode((await http.get(
                Uri.parse(nextPageUrl)
            )).body);
            nextPageUrl = charactersResponse['info']['next'];
        }
    } catch (error) {
        print('error caught: $error');
    }
}

import '../models/characters.dart';
import '../models/quotes.dart';
import '../web_services/api.dart';

class CharactersRepository {
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<Character>> getAllCharaacters() async {
    final characters = await charactersWebServices.getAllCharaacters();
    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }

  Future<List<Quote>> getCharacterQuotes(String charName) async {
    final quotes = await charactersWebServices.getCharacterQuotes(charName);
    return quotes.map((charQoutes) => Quote.fromJson(charQoutes)).toList();
  }
}

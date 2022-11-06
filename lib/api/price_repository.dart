import '../model/price.dart';
import '../api/api.dart';

class PriceRepository {
  final String accountNr = 'YOUR_OANDA_ACCOUNT_NUMBER';
  final String instruments =
      'EUR_USD,GBP_USD,USD_JPY,AUD_USD,EUR_GBP,USD_CAD,USD_CHF,NZD_CHF,USD_HKD,USD_SGD';

  Future<List<Price>> getPriceList() async {
    final url =
        'https://api-fxpractice.oanda.com/v3/accounts/$accountNr/pricing?instruments=$instruments';
    final response = await ApiRequest(url: url, data: {}).get();
    List<Price> prices =
        (response['prices'] as List).map((p) => Price.fromJson(p)).toList();
    print(response);
    return prices;
  }

  Future<Price> getPrice(String instrument) async {
    final url =
        'https://api-fxpractice.oanda.com/v3/accounts/$accountNr/pricing?instruments=$instrument';
    final response = await ApiRequest(url: url, data: {}).get();
    print(response);
    return Price.fromJson(response['prices'][0]);
  }
}

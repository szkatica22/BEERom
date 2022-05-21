import 'package:beerom/models/beer_model.dart';

import '../services/punk_service.dart';

class BeerRepository {

  var punkService = PunkService();

  Future<List<BeerItem>> getBeers() async {
    var response = await punkService.getPunkBeers();
    return response.list.map(
        (e) => BeerItem(
            e.id,
            e.name,
            e.tagline,
            e.image_url,
            e.description,
            e.abv,
            e.ibu,
            e.target_fg,
            e.target_og,
            e.ebc,
            e.srm,
            e.ph,
            e.attenuation_level,
            "${e.volume.value} ${e.volume.unit}",
            "${e.boil_volume.value} ${e.boil_volume.unit}",
            "${e.method.mash_temp.temp.value} ${e.method.mash_temp.temp.unit}",
            e.method.mash_temp.duration,
            "${e.method.fermentation.temp.value} ${e.method.fermentation.temp.unit}",
            e.method.twist,
            e.ingredients.malt,
            e.ingredients.hops,
            e.ingredients.yeast,
            e.food_pairing,
            e.brewers_tips
        )
    ).toList();
  }
}
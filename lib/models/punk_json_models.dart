import 'package:beerom/models/punk_json_models.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'punk_json_models.g.dart';

@JsonSerializable()
class PunkBeersFindResponse{
  final String msg;
  final dynamic cod;
  final num count;
  final List<PunkBeerInformation> list;

  PunkBeersFindResponse(this.msg, this.cod, this.count, this.list);

  factory PunkBeersFindResponse.fromJson(Map<String, dynamic> json) => _$PunkBeersFindResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PunkBeersFindResponseToJson(this);
}

@JsonSerializable()
class PunkBeerInformation{
  final num id;
  final String name;
  final String tagline;
  final String image_url;
  final String description;
  final num abv;
  final num ibu;
  final num target_fg;
  final num target_og;
  final num ebc;
  final num srm;
  final num ph;
  final num attenuation_level;
  final PunkVolume volume;
  final PunkBoilVolume boil_volume;
  final PunkMethod method;
  // final PunkMethodMashTemp mash_temp;
  // final PunkMethodFregmentation fregmentation;
  // final String twist;
  final PunkIngredients ingredients;
  // final List<PunkMalt> malt;
  // final List<PunkHops> hops;
  // final String ingr_yeast;
  final List<String> food_pairing;
  final String brewers_tips;

  PunkBeerInformation(this.id, this.name, this.tagline, this.image_url,
      this.description, this.abv, this.ibu, this.target_fg, this.target_og,
      this.ebc, this.srm, this.ph, this.attenuation_level, this.volume, this.boil_volume,
      this.method, /*this.mash_temp, this.fregmentation, this.twist, */ this.ingredients,
      /*this.malt, this.hops, this.ingr_yeast,*/ this.food_pairing, this.brewers_tips);

  factory PunkBeerInformation.fromJson(Map<String, dynamic> json) => _$PunkBeerInformationFromJson(json);
  Map<String, dynamic> toJson() => _$PunkBeerInformationToJson(this);
}

@JsonSerializable()
class PunkVolume{
  final String value;
  final String unit;

  PunkVolume(this.value, this.unit);

  factory PunkVolume.fromJson(Map<String, dynamic> json) => _$PunkVolumeFromJson(json);
  Map<String, dynamic> toJson() => _$PunkVolumeToJson(this);
}

@JsonSerializable()
class PunkBoilVolume{
  final String value;
  final String unit;

  PunkBoilVolume(this.value, this.unit);

  factory PunkBoilVolume.fromJson(Map<String, dynamic> json) => _$PunkBoilVolumeFromJson(json);
  Map<String, dynamic> toJson() => _$PunkBoilVolumeToJson(this);
}

@JsonSerializable()
class PunkTemp{
  final num value;
  final String unit;

  PunkTemp(this.value, this.unit);

  factory PunkTemp.fromJson(Map<String, dynamic> json) => _$PunkTempFromJson(json);
  Map<String, dynamic> toJson() => _$PunkTempToJson(this);
}

@JsonSerializable()
class PunkMethod{
  final PunkMethodMashTemp mash_temp;
  final PunkMethodFermentation fermentation;
  final String twist;

  PunkMethod(this.mash_temp, this.fermentation, this.twist);

  factory PunkMethod.fromJson(Map<String, dynamic> json) => _$PunkMethodFromJson(json);
  Map<String, dynamic> toJson() => _$PunkMethodToJson(this);
}

@JsonSerializable()
class PunkMethodMashTemp{
  final PunkTemp temp;
  final num duration;

  PunkMethodMashTemp(this.temp, this.duration);

  factory PunkMethodMashTemp.fromJson(Map<String, dynamic> json) => _$PunkMethodMashTempFromJson(json);
  Map<String, dynamic> toJson() => _$PunkMethodMashTempToJson(this);
}

@JsonSerializable()
class PunkMethodFermentation {
  final PunkTemp temp;

  PunkMethodFermentation(this.temp);

  factory PunkMethodFermentation.fromJson(Map<String, dynamic> json) => _$PunkMethodFermentationFromJson(json);
  Map<String, dynamic> toJson() => _$PunkMethodFermentationToJson(this);
}

@JsonSerializable()
class PunkIngredients {
  final List<PunkMalt> malt;
  final List<PunkHops> hops;
  final String yeast;

  PunkIngredients(this.malt, this.hops, this.yeast);

  factory PunkIngredients.fromJson(Map<String, dynamic> json) => _$PunkIngredientsFromJson(json);
  Map<String, dynamic> toJson() => _$PunkIngredientsToJson(this);
}

@JsonSerializable()
class PunkAmount {
  final num value;
  final String unit;

  PunkAmount(this.value, this.unit);

  factory PunkAmount.fromJson(Map<String, dynamic> json) => _$PunkAmountFromJson(json);
  Map<String, dynamic> toJson() => _PunkAmountToJson(this);
}


@JsonSerializable()
class PunkMalt {
  final Map<String, PunkAmount> malt_info;
  // final String name;
  // final PunkAmount amount;

  PunkMalt(this.malt_info);//, this.amount);

  factory PunkMalt.fromJson(Map<String, dynamic> json) => _$PunkMaltFromJson(json);
  Map<String, dynamic> toJson() => _$PunkMaltToJson(this);
}

@JsonSerializable()
class PunkHops {
  final String name;
  final PunkAmount amount;
  final String add;
  final String attribute;

  PunkHops(this.name, this.amount, this.add, this.attribute);

  factory PunkHops.fromJson(Map<String, dynamic> json) => _$PunkHopsFromJson(json);
  Map<String, dynamic> toJson() => _$PunkHopsToJson(this);
}

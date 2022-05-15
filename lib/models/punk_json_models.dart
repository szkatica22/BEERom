// import 'package:json_annotation/json_annotation.dart';
//
// part 'punk_json_models.g.dart';
//
// @JsonSerializable()
// class PunkBeersFindResponse{
//   final String msg;
//   final dynamic cod;
//   final num count;
//   final List<PunkBeerInformation> list;
//
//   PunkBeersFindResponse(this.msg, this.cod, this.count, this.list);
//
//   factory PunkBeersFindResponse.fromJson(Map<String, dynamic> json) => _$PunkBeersFindResponseFromJson(json);
//   Map<String, dynamic> toJson() => _$PunkBeersFindResponseToJson(this);
// }
//
// @JsonSerializable()
// class PunkBeerInformation{
//   final num id;
//   final String name;
//   final String tagline;
//   final String img_url;
//   final String description;
//   final num abv;
//   final num ibu;
//   final num target_fg;
//   final num target_og;
//   final num ebc;
//   final num srm;
//   final num ph;
//   final num attenuation_level;
//   final String volume;
//   final String boil_volume;
//   final PunkMethodMashTemp mash_temp;
//   final PunkMethodFregmentation fregmentation;
//   final String twist;
//   final List<PunkMalt> malt;
//   final List<PunkHops> hops;
//   final String ingr_yeast;
//   final List<String> food_pairing;
//   final String brewers_tips;
//
//   PunkBeerInformation(this.id, this.name, this.tagline, this.img_url,
//       this.description, this.abv, this.ibu, this.target_fg, this.target_og,
//       this.ebc, this.srm, this.ph, this.attenuation_level, this.volume, this.boil_volume,
//       this.mash_temp, this.fregmentation, this.twist, this.malt, this.hops, this.ingr_yeast,
//       this.food_pairing, this.brewers_tips);
//
//   factory PunkBeerInformation.fromJson(Map<String, dynamic> json) => _$PunkBeerInformationFromJson(json);
//   Map<String, dynamic> toJson() => _$PunkBeerInformationToJson(this);
// }
//
// @JsonSerializable()
// class PunkMethodMashTemp{
//   final num value;
//   final String unit;
//   final num duration;
//
//   PunkMethodMashTemp(this.value, this.unit, this.duration);
//
//   factory PunkMethodMashTemp.fromJson(Map<String, dynamic> json) => _$PunkMethodMashTempFromJson(json);
//   Map<String, dynamic> toJson() => _$PunkMethodMashTempToJson(this);
// }
//
// @JsonSerializable()
// class PunkMethodFregmentation {
//   final num value;
//   final String unit;
//   PunkMethodFregmentation(this.value, this.unit);
//
//   factory PunkMethodFregmentation.fromJson(Map<String, dynamic> json) => _$PunkMethodFregmentationFromJson(json);
//   Map<String, dynamic> toJson() => _$PunkMethodFregmentationToJson(this);
// }
//
// @JsonSerializable()
// class PunkMalt {
//   final String name;
//   final num amount_value;
//   final String amount_unit;
//
//   PunkMalt(this.name, this.amount_value, this.amount_unit);
//
//   factory PunkMalt.fromJson(Map<String, dynamic> json) => _$PunkMaltFromJson(json);
//   Map<String, dynamic> toJson() => _$PunkMaltToJson(this);
// }
//
// @JsonSerializable()
// class PunkHops {
//   final String name;
//   final String amount;
//   final String add;
//   final String attribute;
//
//   PunkHops(this.name, this.amount, this.add, this.attribute);
//
//   factory PunkHops.fromJson(Map<String, dynamic> json) => _$PunkHopsFromJson(json);
//   Map<String, dynamic> toJson() => _$PunkHopsToJson(this);
// }

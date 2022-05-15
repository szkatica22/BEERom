import 'package:flutter/cupertino.dart';

class BeerItem{
  final num id;
  final String name;
  final String tagline;
  final String img_url;
  final String description;
  final num abv;
  final num ibu;
  final num target_fg;
  final num target_og;
  final num ebc;
  final num srm;
  final num ph;
  final num attenuation_level;
  final String volume;
  final String boil_volume;
  // METHOD
  // I. Mash temp
  final String method_mash_temp_value;
  final num method_mash_temp_duration;
  // II. Fermentation
  final String method_fermentation_temp;
  // III. Twist
  final String method_twist;

  // Ingredients
  final Map<String, String> ingr_malt;
  final List<Hops> ingr_hops;
  final String ingr_yeast;

  final List<String> food_pairing;
  final String brewers_tips;



  BeerItem(
      this.id,
      this.name,
      this.tagline,
      this.img_url,
      this.description,
      this.abv,
      this.ibu,
      this.target_fg,
      this.target_og,
      this.ebc,
      this.srm,
      this.ph,
      this.attenuation_level,
      this.volume,
      this.boil_volume,
      this.method_mash_temp_value,
      this.method_mash_temp_duration,
      this.method_fermentation_temp,
      this.method_twist,
      this.ingr_malt,
      this.ingr_hops,
      this.ingr_yeast,
      this.food_pairing,
      this.brewers_tips
  );
}

class Hops {

  final String name;
  final String amount;
  final String add;
  final String attribute;

  Hops(
      this.name,
      this.amount,
      this.add,
      this.attribute
  );
}
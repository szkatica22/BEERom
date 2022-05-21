import 'dart:convert';
import 'dart:math';
import 'package:beerom/models/punk_json_models.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

const _baseUrl = "api.punkapi.com/v2/";

PunkBeersFindResponse _parseBeersFindResponse(String msg){
  return PunkBeersFindResponse.fromJson(jsonDecode(msg));
}

class PunkService {

  Future<PunkBeersFindResponse> getPunkBeers() async {
    var response = await http.get(
      Uri.https(_baseUrl, "beers"),
    );
    return compute(_parseBeersFindResponse, response.body);
  }

  Future<List<String>> searchBeers(String name) async {
    await Future.delayed(Duration(seconds: max(0, 3 - name.length), milliseconds: 100));
    if(name == "error"){
      throw "No network connection!";
    }
    return [
      for(int i = 0; i < max(0, 3 - name.length) * 10 + 2; i++)
         name
    ];
  }
}

final punkService = PunkService();
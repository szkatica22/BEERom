// import 'dart:convert';
// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
//
// const _baseUrl = "api.punkapi.com/v2/";
//
// PunkBeersFindResponse _parseBeersFindResponse(String msg){
//   return PunkBeersFindResponse.fromJson(jsonDecode(msg));
// }
//
// class PunkService {
//
//   Future<PunkBeersFindResponse> getPunkBeers() async {
//     var response = await http.get(
//       Uri.https(_baseUrl, "beers"),
//     );
//     return compute(_parseBeersFindResponse, response.body);
//   }
//
// }
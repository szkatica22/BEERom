// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `BEERom`
  String get appTitle {
    return Intl.message(
      'BEERom',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Beer Recipes`
  String get pageTitle {
    return Intl.message(
      'Beer Recipes',
      name: 'pageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Beer Name`
  String get pageTitleBeerName {
    return Intl.message(
      'Beer Name',
      name: 'pageTitleBeerName',
      desc: '',
      args: [],
    );
  }

  /// `Search beer recipes`
  String get searchBeerRecipes {
    return Intl.message(
      'Search beer recipes',
      name: 'searchBeerRecipes',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get beerName {
    return Intl.message(
      'Name',
      name: 'beerName',
      desc: '',
      args: [],
    );
  }

  /// `Tagline`
  String get beerTagline {
    return Intl.message(
      'Tagline',
      name: 'beerTagline',
      desc: '',
      args: [],
    );
  }

  /// `First brewed`
  String get beerFirstBrewed {
    return Intl.message(
      'First brewed',
      name: 'beerFirstBrewed',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get beerDescription {
    return Intl.message(
      'Description',
      name: 'beerDescription',
      desc: '',
      args: [],
    );
  }

  /// `Volume`
  String get beerVolume {
    return Intl.message(
      'Volume',
      name: 'beerVolume',
      desc: '',
      args: [],
    );
  }

  /// `Boil volume`
  String get beerBoilVolume {
    return Intl.message(
      'Boil volume',
      name: 'beerBoilVolume',
      desc: '',
      args: [],
    );
  }

  /// `Method`
  String get beerMethod {
    return Intl.message(
      'Method',
      name: 'beerMethod',
      desc: '',
      args: [],
    );
  }

  /// `Mash temperature`
  String get beerMashTemp {
    return Intl.message(
      'Mash temperature',
      name: 'beerMashTemp',
      desc: '',
      args: [],
    );
  }

  /// `Mash duration`
  String get beerMashDuration {
    return Intl.message(
      'Mash duration',
      name: 'beerMashDuration',
      desc: '',
      args: [],
    );
  }

  /// `Fregmentation temperature`
  String get beerFregmentationTemp {
    return Intl.message(
      'Fregmentation temperature',
      name: 'beerFregmentationTemp',
      desc: '',
      args: [],
    );
  }

  /// `Twist`
  String get beerTwist {
    return Intl.message(
      'Twist',
      name: 'beerTwist',
      desc: '',
      args: [],
    );
  }

  /// `Ingredients`
  String get beerIngredients {
    return Intl.message(
      'Ingredients',
      name: 'beerIngredients',
      desc: '',
      args: [],
    );
  }

  /// `Malt`
  String get beerMalt {
    return Intl.message(
      'Malt',
      name: 'beerMalt',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get beerMaltName {
    return Intl.message(
      'Name',
      name: 'beerMaltName',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get beerMaltAmount {
    return Intl.message(
      'Amount',
      name: 'beerMaltAmount',
      desc: '',
      args: [],
    );
  }

  /// `Hops`
  String get beerHops {
    return Intl.message(
      'Hops',
      name: 'beerHops',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get beerHopsName {
    return Intl.message(
      'Name',
      name: 'beerHopsName',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get beerHopsAmount {
    return Intl.message(
      'Amount',
      name: 'beerHopsAmount',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get beerHopsAdd {
    return Intl.message(
      'Add',
      name: 'beerHopsAdd',
      desc: '',
      args: [],
    );
  }

  /// `Attribute`
  String get beerHopsAttribute {
    return Intl.message(
      'Attribute',
      name: 'beerHopsAttribute',
      desc: '',
      args: [],
    );
  }

  /// `Yeast`
  String get beerYeast {
    return Intl.message(
      'Yeast',
      name: 'beerYeast',
      desc: '',
      args: [],
    );
  }

  /// `Food pairing`
  String get beerFood {
    return Intl.message(
      'Food pairing',
      name: 'beerFood',
      desc: '',
      args: [],
    );
  }

  /// `Brewers tips`
  String get beerBrewersTips {
    return Intl.message(
      'Brewers tips',
      name: 'beerBrewersTips',
      desc: '',
      args: [],
    );
  }

  /// `Contributed by`
  String get BeerContributor {
    return Intl.message(
      'Contributed by',
      name: 'BeerContributor',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'hu'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

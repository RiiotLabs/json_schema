import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of JsonSchemaLocalizations
/// returned by `JsonSchemaLocalizations.of(context)`.
///
/// Applications need to include `JsonSchemaLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: JsonSchemaLocalizations.localizationsDelegates,
///   supportedLocales: JsonSchemaLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the JsonSchemaLocalizations.supportedLocales
/// property.
abstract class JsonSchemaLocalizations {
  JsonSchemaLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static JsonSchemaLocalizations of(BuildContext context) {
    return Localizations.of<JsonSchemaLocalizations>(
        context, JsonSchemaLocalizations)!;
  }

  static const LocalizationsDelegate<JsonSchemaLocalizations> delegate =
      _JsonSchemaLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @exclusiveMaximumExceeded.
  ///
  /// In en, this message translates to:
  /// **'exclusiveMaximum exceeded ({n} >= {exclusiveMaximum})'**
  String exclusiveMaximumExceeded(Object n, Object exclusiveMaximum);

  /// No description provided for @exclusiveMinimumViolated.
  ///
  /// In en, this message translates to:
  /// **'exclusiveMinimum violated ({n} <= {exclusiveMinimum})'**
  String exclusiveMinimumViolated(Object n, Object exclusiveMinimum);

  /// No description provided for @maximumExceeded.
  ///
  /// In en, this message translates to:
  /// **'maximum exceeded ({n} > {maximum})'**
  String maximumExceeded(Object n, Object maximum);

  /// No description provided for @minimumViolated.
  ///
  /// In en, this message translates to:
  /// **'minimum violated ({n} < {minimum})'**
  String minimumViolated(Object n, Object minimum);

  /// No description provided for @multipleOfViolated.
  ///
  /// In en, this message translates to:
  /// **'multipleOf violated ({n} % {multipleOf})'**
  String multipleOfViolated(Object n, Object multipleOf);

  /// No description provided for @typeMissmatch.
  ///
  /// In en, this message translates to:
  /// **'type: wanted {typeList} got {instance}'**
  String typeMissmatch(Object typeList, Object instance);

  /// No description provided for @constViolated.
  ///
  /// In en, this message translates to:
  /// **'const violated {instance}'**
  String constViolated(Object instance);

  /// No description provided for @enumViolated.
  ///
  /// In en, this message translates to:
  /// **'enum violated {instance}'**
  String enumViolated(Object instance);

  /// No description provided for @maxLengthExceeded.
  ///
  /// In en, this message translates to:
  /// **'maxLength exceeded ({instance} vs {maxLength})'**
  String maxLengthExceeded(Object instance, Object maxLength);

  /// No description provided for @minLengthViolated.
  ///
  /// In en, this message translates to:
  /// **'minLength violated ({instance} vs {minLength})'**
  String minLengthViolated(Object instance, Object minLength);

  /// No description provided for @patternViolated.
  ///
  /// In en, this message translates to:
  /// **'pattern violated ({instance} vs {pattern})'**
  String patternViolated(Object instance, Object pattern);

  /// No description provided for @maxItemsExceeded.
  ///
  /// In en, this message translates to:
  /// **'maxItems exceeded ({actual} vs {maxItems})'**
  String maxItemsExceeded(Object actual, Object maxItems);

  /// No description provided for @minItemsViolated.
  ///
  /// In en, this message translates to:
  /// **'minItems violated ({actual} vs {minItems})'**
  String minItemsViolated(Object actual, Object minItems);

  /// No description provided for @uniqueItemsViolated.
  ///
  /// In en, this message translates to:
  /// **'uniqueItems violated: {instance} [{i}]==[{j}]'**
  String uniqueItemsViolated(Object instance, Object i, Object j);

  /// No description provided for @minContainsViolated.
  ///
  /// In en, this message translates to:
  /// **'minContains violated: {instance}'**
  String minContainsViolated(Object instance);

  /// No description provided for @maxContainsViolated.
  ///
  /// In en, this message translates to:
  /// **'maxContains violated: {instance}'**
  String maxContainsViolated(Object instance);

  /// No description provided for @containsViolated.
  ///
  /// In en, this message translates to:
  /// **'contains violated: {instance}'**
  String containsViolated(Object instance);

  /// No description provided for @additionalItemsFalse.
  ///
  /// In en, this message translates to:
  /// **'additionalItems false'**
  String get additionalItemsFalse;

  /// No description provided for @unevaluatedItemsFalse.
  ///
  /// In en, this message translates to:
  /// **'unevaluatedItems false'**
  String get unevaluatedItemsFalse;

  /// No description provided for @allOfViolated.
  ///
  /// In en, this message translates to:
  /// **'{schemaPath}: allOf violated {instance}'**
  String allOfViolated(Object schemaPath, Object instance);

  /// No description provided for @anyOfViolated.
  ///
  /// In en, this message translates to:
  /// **'{schemaPath}/anyOf: anyOf violated ({instance}, {anyOfSchemas})'**
  String anyOfViolated(Object schemaPath, Object instance, Object anyOfSchemas);

  /// No description provided for @oneOfViolated.
  ///
  /// In en, this message translates to:
  /// **'{schemaPath}/oneOf: violated {notOneOfMessage}'**
  String oneOfViolated(Object schemaPath, Object notOneOfMessage);

  /// No description provided for @notViolated.
  ///
  /// In en, this message translates to:
  /// **'{notSchemaPath}: not violated'**
  String notViolated(Object notSchemaPath);

  /// No description provided for @unallowedAdditionalProperty.
  ///
  /// In en, this message translates to:
  /// **'unallowed additional property {key}'**
  String unallowedAdditionalProperty(Object key);

  /// No description provided for @propertyDependenciesRequired.
  ///
  /// In en, this message translates to:
  /// **'prop {key} => {dependencies} required'**
  String propertyDependenciesRequired(Object key, Object dependencies);

  /// No description provided for @schemaDependencyViolated.
  ///
  /// In en, this message translates to:
  /// **'prop {key} violated schema dependency'**
  String schemaDependencyViolated(Object key);

  /// No description provided for @minPropertiesViolated.
  ///
  /// In en, this message translates to:
  /// **'minProperties violated ({numProps} < {minProps})'**
  String minPropertiesViolated(Object numProps, Object minProps);

  /// No description provided for @maxPropertiesViolated.
  ///
  /// In en, this message translates to:
  /// **'maxProperties violated ({numProps} > {maxProps})'**
  String maxPropertiesViolated(Object numProps, Object maxProps);

  /// No description provided for @requiredPropertyMissing.
  ///
  /// In en, this message translates to:
  /// **'required prop missing: {prop} from {instance}'**
  String requiredPropertyMissing(Object prop, Object instance);

  /// No description provided for @schemaBooleanFalse.
  ///
  /// In en, this message translates to:
  /// **'schema is a boolean == false, this schema will never validate. Instance: {instance}'**
  String schemaBooleanFalse(Object instance);

  /// No description provided for @thenViolated.
  ///
  /// In en, this message translates to:
  /// **'{schemaPath}/then: then violated ({instance}, {thenSchema})'**
  String thenViolated(Object schemaPath, Object instance, Object thenSchema);

  /// No description provided for @elseViolated.
  ///
  /// In en, this message translates to:
  /// **'{schemaPath}/else: else violated ({instance}, {elseSchema})'**
  String elseViolated(Object schemaPath, Object instance, Object elseSchema);
}

class _JsonSchemaLocalizationsDelegate
    extends LocalizationsDelegate<JsonSchemaLocalizations> {
  const _JsonSchemaLocalizationsDelegate();

  @override
  Future<JsonSchemaLocalizations> load(Locale locale) {
    return SynchronousFuture<JsonSchemaLocalizations>(
        lookupJsonSchemaLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_JsonSchemaLocalizationsDelegate old) => false;
}

JsonSchemaLocalizations lookupJsonSchemaLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return JsonSchemaLocalizationsEn();
  }

  throw FlutterError(
      'JsonSchemaLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}

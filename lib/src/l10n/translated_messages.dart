import '../../json_schema.dart';
import '../json_schema/models/instance.dart';
import '../json_schema/validator_messages.dart';
import 'generated/localizations.dart';

class TranslatedMessages implements ValidatorMessages {
  final AppLocalizations localizations;

  TranslatedMessages(this.localizations);

  @override
  String exclusiveMaximumExceeded(num n, num exclusiveMaximum) =>
      localizations.exclusiveMaximumExceeded(n, exclusiveMaximum);

  @override
  String exclusiveMinimumViolated(num n, num exclusiveMinimum) =>
      localizations.exclusiveMinimumViolated(n, exclusiveMinimum);

  @override
  String maximumExceeded(num n, num maximum) =>
      localizations.maximumExceeded(n, maximum);

  @override
  String minimumViolated(num n, num minimum) =>
      localizations.minimumViolated(n, minimum);

  @override
  String multipleOfViolated(num n, num multipleOf) =>
      localizations.multipleOfViolated(n, multipleOf);

  @override
  String typeMissmatch(List<SchemaType?> typeList, dynamic instance) =>
      localizations.typeMissmatch(typeList, instance);

  @override
  String constViolated(dynamic instance) =>
      localizations.constViolated(instance);

  @override
  String enumViolated(dynamic instance) => localizations.enumViolated(instance);

  @override
  String maxLengthExceeded(Instance instance, int maxLength) =>
      localizations.maxLengthExceeded(instance, maxLength);

  @override
  String minLengthViolated(Instance instance, int minLength) =>
      localizations.minLengthViolated(instance, minLength);

  @override
  String patternViolated(Instance instance, RegExp pattern) =>
      localizations.patternViolated(instance, pattern);

  @override
  String maxItemsExceeded(int actual, int maxItems) =>
      localizations.maxItemsExceeded(actual, maxItems);

  @override
  String minItemsViolated(int actual, int minItems) =>
      localizations.minItemsViolated(actual, minItems);

  @override
  String uniqueItemsViolated(Instance instance, int i, int j) =>
      localizations.uniqueItemsViolated(instance, i, j);

  @override
  String minContainsViolated(Instance instance, int minContains) =>
      localizations.minContainsViolated(instance);

  @override
  String maxContainsViolated(Instance instance, int maxContains) =>
      localizations.maxContainsViolated(instance);

  @override
  String containsViolated(Instance instance) =>
      localizations.containsViolated(instance);

  @override
  String additionalItemsFalse() => localizations.additionalItemsFalse;

  @override
  String unevaluatedItemsFalse() => localizations.unevaluatedItemsFalse;

  @override
  String allOfViolated(String schemaPath, Instance instance) =>
      localizations.allOfViolated(schemaPath, instance);

  @override
  String anyOfViolated(
          String schemaPath, Instance instance, dynamic anyOfSchemas) =>
      localizations.anyOfViolated(schemaPath, instance, anyOfSchemas);

  @override
  String oneOfViolated(String schemaPath, String notOneOfMessage) =>
      localizations.oneOfViolated(schemaPath, notOneOfMessage);

  @override
  String notViolated(String notSchemaPath) =>
      localizations.notViolated(notSchemaPath);

  @override
  String unallowedAdditionalProperty(dynamic key) =>
      localizations.unallowedAdditionalProperty(key);

  @override
  String propertyDependenciesRequired(dynamic key, dynamic dependencies) =>
      localizations.propertyDependenciesRequired(key, dependencies);

  @override
  String schemaDependencyViolated(dynamic key) =>
      localizations.schemaDependencyViolated(key);

  @override
  String minPropertiesViolated(int numProps, int minProps) =>
      localizations.minPropertiesViolated(numProps, minProps);

  @override
  String maxPropertiesViolated(int numProps, int maxProps) =>
      localizations.maxPropertiesViolated(numProps, maxProps);

  @override
  String requiredPropertyMissing(dynamic prop, Instance instance) =>
      localizations.requiredPropertyMissing(prop, instance);

  @override
  String schemaBooleanFalse(Instance instance) =>
      localizations.schemaBooleanFalse(instance);

  @override
  String thenViolated(
          String schemaPath, Instance instance, dynamic thenSchema) =>
      localizations.thenViolated(schemaPath, instance, thenSchema);

  @override
  String elseViolated(
          String schemaPath, Instance instance, dynamic elseSchema) =>
      localizations.elseViolated(schemaPath, instance, elseSchema);
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class JsonSchemaLocalizationsEn extends JsonSchemaLocalizations {
  JsonSchemaLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String exclusiveMaximumExceeded(Object n, Object exclusiveMaximum) {
    return 'exclusiveMaximum exceeded ($n >= $exclusiveMaximum)';
  }

  @override
  String exclusiveMinimumViolated(Object n, Object exclusiveMinimum) {
    return 'exclusiveMinimum violated ($n <= $exclusiveMinimum)';
  }

  @override
  String maximumExceeded(Object n, Object maximum) {
    return 'maximum exceeded ($n > $maximum)';
  }

  @override
  String minimumViolated(Object n, Object minimum) {
    return 'minimum violated ($n < $minimum)';
  }

  @override
  String multipleOfViolated(Object n, Object multipleOf) {
    return 'multipleOf violated ($n % $multipleOf)';
  }

  @override
  String typeMissmatch(Object typeList, Object instance) {
    return 'type: wanted $typeList got $instance';
  }

  @override
  String constViolated(Object instance) {
    return 'const violated $instance';
  }

  @override
  String enumViolated(Object instance) {
    return 'enum violated $instance';
  }

  @override
  String maxLengthExceeded(Object instance, Object maxLength) {
    return 'maxLength exceeded ($instance vs $maxLength)';
  }

  @override
  String minLengthViolated(Object instance, Object minLength) {
    return 'minLength violated ($instance vs $minLength)';
  }

  @override
  String patternViolated(Object instance, Object pattern) {
    return 'pattern violated ($instance vs $pattern)';
  }

  @override
  String maxItemsExceeded(Object actual, Object maxItems) {
    return 'maxItems exceeded ($actual vs $maxItems)';
  }

  @override
  String minItemsViolated(Object actual, Object minItems) {
    return 'minItems violated ($actual vs $minItems)';
  }

  @override
  String uniqueItemsViolated(Object instance, Object i, Object j) {
    return 'uniqueItems violated: $instance [$i]==[$j]';
  }

  @override
  String minContainsViolated(Object instance) {
    return 'minContains violated: $instance';
  }

  @override
  String maxContainsViolated(Object instance) {
    return 'maxContains violated: $instance';
  }

  @override
  String containsViolated(Object instance) {
    return 'contains violated: $instance';
  }

  @override
  String get additionalItemsFalse => 'additionalItems false';

  @override
  String get unevaluatedItemsFalse => 'unevaluatedItems false';

  @override
  String allOfViolated(Object schemaPath, Object instance) {
    return '$schemaPath: allOf violated $instance';
  }

  @override
  String anyOfViolated(
      Object schemaPath, Object instance, Object anyOfSchemas) {
    return '$schemaPath/anyOf: anyOf violated ($instance, $anyOfSchemas)';
  }

  @override
  String oneOfViolated(Object schemaPath, Object notOneOfMessage) {
    return '$schemaPath/oneOf: violated $notOneOfMessage';
  }

  @override
  String notViolated(Object notSchemaPath) {
    return '$notSchemaPath: not violated';
  }

  @override
  String unallowedAdditionalProperty(Object key) {
    return 'unallowed additional property $key';
  }

  @override
  String propertyDependenciesRequired(Object key, Object dependencies) {
    return 'prop $key => $dependencies required';
  }

  @override
  String schemaDependencyViolated(Object key) {
    return 'prop $key violated schema dependency';
  }

  @override
  String minPropertiesViolated(Object numProps, Object minProps) {
    return 'minProperties violated ($numProps < $minProps)';
  }

  @override
  String maxPropertiesViolated(Object numProps, Object maxProps) {
    return 'maxProperties violated ($numProps > $maxProps)';
  }

  @override
  String requiredPropertyMissing(Object prop, Object instance) {
    return 'required prop missing: $prop from $instance';
  }

  @override
  String schemaBooleanFalse(Object instance) {
    return 'schema is a boolean == false, this schema will never validate. Instance: $instance';
  }

  @override
  String thenViolated(Object schemaPath, Object instance, Object thenSchema) {
    return '$schemaPath/then: then violated ($instance, $thenSchema)';
  }

  @override
  String elseViolated(Object schemaPath, Object instance, Object elseSchema) {
    return '$schemaPath/else: else violated ($instance, $elseSchema)';
  }
}

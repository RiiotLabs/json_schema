import 'models/instance.dart' show Instance;
import 'models/schema_type.dart';

class ValidatorMessages {
  static const defaultMessages = ValidatorMessages._();

  const ValidatorMessages._();

  String exclusiveMaximumExceeded(num n, num exclusiveMaximum) =>
      'exclusiveMaximum exceeded ($n >= $exclusiveMaximum)';

  String exclusiveMinimumViolated(num n, num exclusiveMinimum) =>
      'exclusiveMinimum violated ($n <= $exclusiveMinimum)';

  String maximumExceeded(num n, num maximum) =>
      'maximum exceeded ($n > $maximum)';

  String minimumViolated(num n, num minimum) =>
      'minimum violated ($n < $minimum)';

  String multipleOfViolated(num n, num multipleOf) =>
      'multipleOf violated ($n % $multipleOf)';

  String typeMissmatch(List<SchemaType?> typeList, dynamic instance) =>
      'type: wanted $typeList got $instance';

  String constViolated(dynamic instance) => 'const violated $instance';

  String enumViolated(dynamic instance) => 'enum violated $instance';

  String maxLengthExceeded(Instance instance, int maxLength) =>
      'maxLength exceeded ($instance vs $maxLength)';

  String minLengthViolated(Instance instance, int minLength) =>
      'minLength violated ($instance vs $minLength)';

  String patternViolated(Instance instance, RegExp pattern) =>
      'pattern violated ($instance vs $pattern)';

  String maxItemsExceeded(int actual, int maxItems) =>
      'maxItems exceeded ($actual vs $maxItems)';

  String minItemsViolated(int actual, int minItems) =>
      'minItems violated ($actual vs $minItems)';

  String uniqueItemsViolated(Instance instance, int i, int j) =>
      'uniqueItems violated: $instance [$i]==[$j]';

  String minContainsViolated(Instance instance, int minContains) =>
      'minContains violated: $instance';

  String maxContainsViolated(Instance instance, int maxContains) =>
      'maxContains violated: $instance';

  String containsViolated(Instance instance) => 'contains violated: $instance';

  String additionalItemsFalse() => 'additionalItems false';

  String unevaluatedItemsFalse() => 'unevaluatedItems false';

  String allOfViolated(String schemaPath, Instance instance) =>
      '$schemaPath: allOf violated $instance';

  String anyOfViolated(String schemaPath, Instance instance, dynamic anyOfSchemas) =>
      '$schemaPath/anyOf: anyOf violated ($instance, $anyOfSchemas)';

  String oneOfViolated(String schemaPath, String notOneOfMessage) =>
      '$schemaPath/oneOf: violated $notOneOfMessage';

  String notViolated(String notSchemaPath) => '$notSchemaPath: not violated';

  String unallowedAdditionalProperty(dynamic key) =>
      'unallowed additional property $key';

  String propertyDependenciesRequired(dynamic key, dynamic dependencies) =>
      'prop $key => $dependencies required';

  String schemaDependencyViolated(dynamic key) =>
      'prop $key violated schema dependency';

  String minPropertiesViolated(int numProps, int minProps) =>
      'minProperties violated ($numProps < $minProps)';

  String maxPropertiesViolated(int numProps, int maxProps) =>
      'maxProperties violated ($numProps > $maxProps)';

  String requiredPropertyMissing(dynamic prop, Instance instance) =>
      'required prop missing: $prop from $instance';

  String schemaBooleanFalse(Instance instance) =>
      'schema is a boolean == false, this schema will never validate. Instance: $instance';

  String thenViolated(String schemaPath, Instance instance, dynamic thenSchema) =>
      '$schemaPath/then: then violated ($instance, $thenSchema)';

  String elseViolated(String schemaPath, Instance instance, dynamic elseSchema) =>
      '$schemaPath/else: else violated ($instance, $elseSchema)';
}

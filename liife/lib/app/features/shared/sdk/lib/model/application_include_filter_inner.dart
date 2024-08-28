//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApplicationIncludeFilterInner {
    /// Returns a new [ApplicationIncludeFilterInner] instance.
  ApplicationIncludeFilterInner(
    { this.relation,
    this.scope, }
  );

  ApplicationIncludeFilterInnerRelationEnum? relation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ApplicationScopeFilter? scope;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationIncludeFilterInner&&
    other.relation == relation&&
    other.scope == scope;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (relation == null ? 0 : relation!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'ApplicationIncludeFilterInner[relation=$relation, scope=$scope]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.relation != null) {
      json[r'relation'] = this.relation;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    }
    return json;
  }

  /// Returns a new [ApplicationIncludeFilterInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationIncludeFilterInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationIncludeFilterInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationIncludeFilterInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationIncludeFilterInner(
        relation: ApplicationIncludeFilterInnerRelationEnum.fromJson(json[r'relation']),
        scope: ApplicationScopeFilter.fromJson(json[r'scope']),
      );
    }
    return null;
  }

  static List<ApplicationIncludeFilterInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationIncludeFilterInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationIncludeFilterInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationIncludeFilterInner> mapFromJson(dynamic json) {
    final map = <String, ApplicationIncludeFilterInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationIncludeFilterInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationIncludeFilterInner-objects as value to a dart map
  static Map<String, List<ApplicationIncludeFilterInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationIncludeFilterInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationIncludeFilterInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ApplicationIncludeFilterInnerRelationEnum {
  /// Instantiate a new enum with the provided [value].
  const ApplicationIncludeFilterInnerRelationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const user = ApplicationIncludeFilterInnerRelationEnum._(r'user');

  /// List of all possible values in this [enum][ApplicationIncludeFilterInnerRelationEnum].
  static const values = <ApplicationIncludeFilterInnerRelationEnum>[
    user,
  ];

  static ApplicationIncludeFilterInnerRelationEnum? fromJson(dynamic value) => ApplicationIncludeFilterInnerRelationEnumTypeTransformer().decode(value);

  static List<ApplicationIncludeFilterInnerRelationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationIncludeFilterInnerRelationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationIncludeFilterInnerRelationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ApplicationIncludeFilterInnerRelationEnum] to String,
/// and [decode] dynamic data back to [ApplicationIncludeFilterInnerRelationEnum].
class ApplicationIncludeFilterInnerRelationEnumTypeTransformer {
  factory ApplicationIncludeFilterInnerRelationEnumTypeTransformer() => _instance ??= const ApplicationIncludeFilterInnerRelationEnumTypeTransformer._();

  const ApplicationIncludeFilterInnerRelationEnumTypeTransformer._();

  String encode(ApplicationIncludeFilterInnerRelationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ApplicationIncludeFilterInnerRelationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ApplicationIncludeFilterInnerRelationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'user': return ApplicationIncludeFilterInnerRelationEnum.user;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ApplicationIncludeFilterInnerRelationEnumTypeTransformer] instance.
  static ApplicationIncludeFilterInnerRelationEnumTypeTransformer? _instance;
}


extension ApplicationIncludeFilterInnerJsonUtils on ApplicationIncludeFilterInner{
static List<ApplicationIncludeFilterInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationIncludeFilterInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationIncludeFilterInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}

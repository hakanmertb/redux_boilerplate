//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EcmTransactionIncludeFilterInner {
  EcmTransactionIncludeFilterInner(  {  required this.relation,    required this.scope } );
  EcmTransactionIncludeFilterInnerRelationEnum? relation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EcmTransactionScopeFilter? scope;



  @override
  bool operator ==(Object other) => identical(this, other) || other is EcmTransactionIncludeFilterInner&&
    other.relation == relation&&
    other.scope == scope;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (relation == null ? 0 : relation!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'EcmTransactionIncludeFilterInner[relation=$relation, scope=$scope]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.relation != null) {
      json[r'relation'] = this.relation;
    } else {
      json[r'relation'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    return json;
  }

  /// Returns a new [EcmTransactionIncludeFilterInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EcmTransactionIncludeFilterInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EcmTransactionIncludeFilterInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EcmTransactionIncludeFilterInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EcmTransactionIncludeFilterInner(
        relation: EcmTransactionIncludeFilterInnerRelationEnum.fromJson(json[r'relation']),
        scope: EcmTransactionScopeFilter.fromJson(json[r'scope']),
      );
    }
    return null;
  }

  static List<EcmTransactionIncludeFilterInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmTransactionIncludeFilterInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmTransactionIncludeFilterInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EcmTransactionIncludeFilterInner> mapFromJson(dynamic json) {
    final map = <String, EcmTransactionIncludeFilterInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EcmTransactionIncludeFilterInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EcmTransactionIncludeFilterInner-objects as value to a dart map
  static Map<String, List<EcmTransactionIncludeFilterInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EcmTransactionIncludeFilterInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EcmTransactionIncludeFilterInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class EcmTransactionIncludeFilterInnerRelationEnum {
  /// Instantiate a new enum with the provided [value].
  const EcmTransactionIncludeFilterInnerRelationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const order = EcmTransactionIncludeFilterInnerRelationEnum._(r'order');

  /// List of all possible values in this [enum][EcmTransactionIncludeFilterInnerRelationEnum].
  static const values = <EcmTransactionIncludeFilterInnerRelationEnum>[
    order,
  ];

  static EcmTransactionIncludeFilterInnerRelationEnum? fromJson(dynamic value) => EcmTransactionIncludeFilterInnerRelationEnumTypeTransformer().decode(value);

  static List<EcmTransactionIncludeFilterInnerRelationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmTransactionIncludeFilterInnerRelationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmTransactionIncludeFilterInnerRelationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EcmTransactionIncludeFilterInnerRelationEnum] to String,
/// and [decode] dynamic data back to [EcmTransactionIncludeFilterInnerRelationEnum].
class EcmTransactionIncludeFilterInnerRelationEnumTypeTransformer {
  factory EcmTransactionIncludeFilterInnerRelationEnumTypeTransformer() => _instance ??= const EcmTransactionIncludeFilterInnerRelationEnumTypeTransformer._();

  const EcmTransactionIncludeFilterInnerRelationEnumTypeTransformer._();

  String encode(EcmTransactionIncludeFilterInnerRelationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EcmTransactionIncludeFilterInnerRelationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EcmTransactionIncludeFilterInnerRelationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'order': return EcmTransactionIncludeFilterInnerRelationEnum.order;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EcmTransactionIncludeFilterInnerRelationEnumTypeTransformer] instance.
  static EcmTransactionIncludeFilterInnerRelationEnumTypeTransformer? _instance;
}


extension EcmTransactionIncludeFilterInnerJsonUtils on EcmTransactionIncludeFilterInner{
static List<EcmTransactionIncludeFilterInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmTransactionIncludeFilterInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmTransactionIncludeFilterInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}

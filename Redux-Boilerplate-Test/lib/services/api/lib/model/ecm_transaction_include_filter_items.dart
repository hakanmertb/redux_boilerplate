//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EcmTransactionIncludeFilterItems {
  /// Returns a new [EcmTransactionIncludeFilterItems] instance.
  EcmTransactionIncludeFilterItems({
    this.relation,
    this.scope,
  });

  EcmTransactionIncludeFilterItemsRelationEnum? relation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EcmTransactionScopeFilter? scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EcmTransactionIncludeFilterItems &&
    other.relation == relation &&
    other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (relation == null ? 0 : relation!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'EcmTransactionIncludeFilterItems[relation=$relation, scope=$scope]';

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

  /// Returns a new [EcmTransactionIncludeFilterItems] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EcmTransactionIncludeFilterItems? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EcmTransactionIncludeFilterItems[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EcmTransactionIncludeFilterItems[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EcmTransactionIncludeFilterItems(
        relation: EcmTransactionIncludeFilterItemsRelationEnum.fromJson(json[r'relation']),
        scope: EcmTransactionScopeFilter.fromJson(json[r'scope']),
      );
    }
    return null;
  }

  static List<EcmTransactionIncludeFilterItems> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmTransactionIncludeFilterItems>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmTransactionIncludeFilterItems.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EcmTransactionIncludeFilterItems> mapFromJson(dynamic json) {
    final map = <String, EcmTransactionIncludeFilterItems>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EcmTransactionIncludeFilterItems.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EcmTransactionIncludeFilterItems-objects as value to a dart map
  static Map<String, List<EcmTransactionIncludeFilterItems>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EcmTransactionIncludeFilterItems>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EcmTransactionIncludeFilterItems.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class EcmTransactionIncludeFilterItemsRelationEnum {
  /// Instantiate a new enum with the provided [value].
  const EcmTransactionIncludeFilterItemsRelationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const order = EcmTransactionIncludeFilterItemsRelationEnum._(r'order');

  /// List of all possible values in this [enum][EcmTransactionIncludeFilterItemsRelationEnum].
  static const values = <EcmTransactionIncludeFilterItemsRelationEnum>[
    order,
  ];

  static EcmTransactionIncludeFilterItemsRelationEnum? fromJson(dynamic value) => EcmTransactionIncludeFilterItemsRelationEnumTypeTransformer().decode(value);

  static List<EcmTransactionIncludeFilterItemsRelationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmTransactionIncludeFilterItemsRelationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmTransactionIncludeFilterItemsRelationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EcmTransactionIncludeFilterItemsRelationEnum] to String,
/// and [decode] dynamic data back to [EcmTransactionIncludeFilterItemsRelationEnum].
class EcmTransactionIncludeFilterItemsRelationEnumTypeTransformer {
  factory EcmTransactionIncludeFilterItemsRelationEnumTypeTransformer() => _instance ??= const EcmTransactionIncludeFilterItemsRelationEnumTypeTransformer._();

  const EcmTransactionIncludeFilterItemsRelationEnumTypeTransformer._();

  String encode(EcmTransactionIncludeFilterItemsRelationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EcmTransactionIncludeFilterItemsRelationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EcmTransactionIncludeFilterItemsRelationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'order': return EcmTransactionIncludeFilterItemsRelationEnum.order;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EcmTransactionIncludeFilterItemsRelationEnumTypeTransformer] instance.
  static EcmTransactionIncludeFilterItemsRelationEnumTypeTransformer? _instance;
}



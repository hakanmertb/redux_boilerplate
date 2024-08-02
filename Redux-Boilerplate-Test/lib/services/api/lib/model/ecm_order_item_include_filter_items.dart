//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EcmOrderItemIncludeFilterItems {
  /// Returns a new [EcmOrderItemIncludeFilterItems] instance.
  EcmOrderItemIncludeFilterItems({
    this.relation,
    this.scope,
  });

  EcmOrderItemIncludeFilterItemsRelationEnum? relation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EcmOrderItemScopeFilter? scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EcmOrderItemIncludeFilterItems &&
    other.relation == relation &&
    other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (relation == null ? 0 : relation!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'EcmOrderItemIncludeFilterItems[relation=$relation, scope=$scope]';

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

  /// Returns a new [EcmOrderItemIncludeFilterItems] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EcmOrderItemIncludeFilterItems? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EcmOrderItemIncludeFilterItems[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EcmOrderItemIncludeFilterItems[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EcmOrderItemIncludeFilterItems(
        relation: EcmOrderItemIncludeFilterItemsRelationEnum.fromJson(json[r'relation']),
        scope: EcmOrderItemScopeFilter.fromJson(json[r'scope']),
      );
    }
    return null;
  }

  static List<EcmOrderItemIncludeFilterItems> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmOrderItemIncludeFilterItems>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmOrderItemIncludeFilterItems.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EcmOrderItemIncludeFilterItems> mapFromJson(dynamic json) {
    final map = <String, EcmOrderItemIncludeFilterItems>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EcmOrderItemIncludeFilterItems.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EcmOrderItemIncludeFilterItems-objects as value to a dart map
  static Map<String, List<EcmOrderItemIncludeFilterItems>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EcmOrderItemIncludeFilterItems>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EcmOrderItemIncludeFilterItems.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class EcmOrderItemIncludeFilterItemsRelationEnum {
  /// Instantiate a new enum with the provided [value].
  const EcmOrderItemIncludeFilterItemsRelationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const product = EcmOrderItemIncludeFilterItemsRelationEnum._(r'product');
  static const order = EcmOrderItemIncludeFilterItemsRelationEnum._(r'order');

  /// List of all possible values in this [enum][EcmOrderItemIncludeFilterItemsRelationEnum].
  static const values = <EcmOrderItemIncludeFilterItemsRelationEnum>[
    product,
    order,
  ];

  static EcmOrderItemIncludeFilterItemsRelationEnum? fromJson(dynamic value) => EcmOrderItemIncludeFilterItemsRelationEnumTypeTransformer().decode(value);

  static List<EcmOrderItemIncludeFilterItemsRelationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmOrderItemIncludeFilterItemsRelationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmOrderItemIncludeFilterItemsRelationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EcmOrderItemIncludeFilterItemsRelationEnum] to String,
/// and [decode] dynamic data back to [EcmOrderItemIncludeFilterItemsRelationEnum].
class EcmOrderItemIncludeFilterItemsRelationEnumTypeTransformer {
  factory EcmOrderItemIncludeFilterItemsRelationEnumTypeTransformer() => _instance ??= const EcmOrderItemIncludeFilterItemsRelationEnumTypeTransformer._();

  const EcmOrderItemIncludeFilterItemsRelationEnumTypeTransformer._();

  String encode(EcmOrderItemIncludeFilterItemsRelationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EcmOrderItemIncludeFilterItemsRelationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EcmOrderItemIncludeFilterItemsRelationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'product': return EcmOrderItemIncludeFilterItemsRelationEnum.product;
        case r'order': return EcmOrderItemIncludeFilterItemsRelationEnum.order;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EcmOrderItemIncludeFilterItemsRelationEnumTypeTransformer] instance.
  static EcmOrderItemIncludeFilterItemsRelationEnumTypeTransformer? _instance;
}



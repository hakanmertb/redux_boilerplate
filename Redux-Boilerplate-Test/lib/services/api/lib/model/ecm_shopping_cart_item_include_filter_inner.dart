//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EcmShoppingCartItemIncludeFilterInner {
  /// Returns a new [EcmShoppingCartItemIncludeFilterInner] instance.
  EcmShoppingCartItemIncludeFilterInner({
    this.relation,
    this.scope,
  });

  EcmShoppingCartItemIncludeFilterInnerRelationEnum? relation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EcmShoppingCartItemScopeFilter? scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EcmShoppingCartItemIncludeFilterInner &&
    other.relation == relation &&
    other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (relation == null ? 0 : relation!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'EcmShoppingCartItemIncludeFilterInner[relation=$relation, scope=$scope]';

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

  /// Returns a new [EcmShoppingCartItemIncludeFilterInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EcmShoppingCartItemIncludeFilterInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EcmShoppingCartItemIncludeFilterInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EcmShoppingCartItemIncludeFilterInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EcmShoppingCartItemIncludeFilterInner(
        relation: EcmShoppingCartItemIncludeFilterInnerRelationEnum.fromJson(json[r'relation']),
        scope: EcmShoppingCartItemScopeFilter.fromJson(json[r'scope']),
      );
    }
    return null;
  }

  static List<EcmShoppingCartItemIncludeFilterInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmShoppingCartItemIncludeFilterInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmShoppingCartItemIncludeFilterInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EcmShoppingCartItemIncludeFilterInner> mapFromJson(dynamic json) {
    final map = <String, EcmShoppingCartItemIncludeFilterInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EcmShoppingCartItemIncludeFilterInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EcmShoppingCartItemIncludeFilterInner-objects as value to a dart map
  static Map<String, List<EcmShoppingCartItemIncludeFilterInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EcmShoppingCartItemIncludeFilterInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EcmShoppingCartItemIncludeFilterInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class EcmShoppingCartItemIncludeFilterInnerRelationEnum {
  /// Instantiate a new enum with the provided [value].
  const EcmShoppingCartItemIncludeFilterInnerRelationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const shoppingCart = EcmShoppingCartItemIncludeFilterInnerRelationEnum._(r'shoppingCart');
  static const product = EcmShoppingCartItemIncludeFilterInnerRelationEnum._(r'product');

  /// List of all possible values in this [enum][EcmShoppingCartItemIncludeFilterInnerRelationEnum].
  static const values = <EcmShoppingCartItemIncludeFilterInnerRelationEnum>[
    shoppingCart,
    product,
  ];

  static EcmShoppingCartItemIncludeFilterInnerRelationEnum? fromJson(dynamic value) => EcmShoppingCartItemIncludeFilterInnerRelationEnumTypeTransformer().decode(value);

  static List<EcmShoppingCartItemIncludeFilterInnerRelationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmShoppingCartItemIncludeFilterInnerRelationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmShoppingCartItemIncludeFilterInnerRelationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EcmShoppingCartItemIncludeFilterInnerRelationEnum] to String,
/// and [decode] dynamic data back to [EcmShoppingCartItemIncludeFilterInnerRelationEnum].
class EcmShoppingCartItemIncludeFilterInnerRelationEnumTypeTransformer {
  factory EcmShoppingCartItemIncludeFilterInnerRelationEnumTypeTransformer() => _instance ??= const EcmShoppingCartItemIncludeFilterInnerRelationEnumTypeTransformer._();

  const EcmShoppingCartItemIncludeFilterInnerRelationEnumTypeTransformer._();

  String encode(EcmShoppingCartItemIncludeFilterInnerRelationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EcmShoppingCartItemIncludeFilterInnerRelationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EcmShoppingCartItemIncludeFilterInnerRelationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'shoppingCart': return EcmShoppingCartItemIncludeFilterInnerRelationEnum.shoppingCart;
        case r'product': return EcmShoppingCartItemIncludeFilterInnerRelationEnum.product;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EcmShoppingCartItemIncludeFilterInnerRelationEnumTypeTransformer] instance.
  static EcmShoppingCartItemIncludeFilterInnerRelationEnumTypeTransformer? _instance;
}



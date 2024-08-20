//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EcmShoppingCartItemIncludeFilterItems {
  EcmShoppingCartItemIncludeFilterItems(  {  required this.relation,    required this.scope } );
  EcmShoppingCartItemIncludeFilterItemsRelationEnum? relation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EcmShoppingCartItemScopeFilter? scope;



  @override
  bool operator ==(Object other) => identical(this, other) || other is EcmShoppingCartItemIncludeFilterItems&&
    other.relation == relation&&
    other.scope == scope;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (relation == null ? 0 : relation!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'EcmShoppingCartItemIncludeFilterItems[relation=$relation, scope=$scope]';

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

  /// Returns a new [EcmShoppingCartItemIncludeFilterItems] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EcmShoppingCartItemIncludeFilterItems? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EcmShoppingCartItemIncludeFilterItems[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EcmShoppingCartItemIncludeFilterItems[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EcmShoppingCartItemIncludeFilterItems(
        relation: EcmShoppingCartItemIncludeFilterItemsRelationEnum.fromJson(json[r'relation']),
        scope: EcmShoppingCartItemScopeFilter.fromJson(json[r'scope']),
      );
    }
    return null;
  }

  static List<EcmShoppingCartItemIncludeFilterItems> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmShoppingCartItemIncludeFilterItems>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmShoppingCartItemIncludeFilterItems.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EcmShoppingCartItemIncludeFilterItems> mapFromJson(dynamic json) {
    final map = <String, EcmShoppingCartItemIncludeFilterItems>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EcmShoppingCartItemIncludeFilterItems.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EcmShoppingCartItemIncludeFilterItems-objects as value to a dart map
  static Map<String, List<EcmShoppingCartItemIncludeFilterItems>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EcmShoppingCartItemIncludeFilterItems>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EcmShoppingCartItemIncludeFilterItems.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class EcmShoppingCartItemIncludeFilterItemsRelationEnum {
  /// Instantiate a new enum with the provided [value].
  const EcmShoppingCartItemIncludeFilterItemsRelationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const shoppingCart = EcmShoppingCartItemIncludeFilterItemsRelationEnum._(r'shoppingCart');
  static const product = EcmShoppingCartItemIncludeFilterItemsRelationEnum._(r'product');

  /// List of all possible values in this [enum][EcmShoppingCartItemIncludeFilterItemsRelationEnum].
  static const values = <EcmShoppingCartItemIncludeFilterItemsRelationEnum>[
    shoppingCart,
    product,
  ];

  static EcmShoppingCartItemIncludeFilterItemsRelationEnum? fromJson(dynamic value) => EcmShoppingCartItemIncludeFilterItemsRelationEnumTypeTransformer().decode(value);

  static List<EcmShoppingCartItemIncludeFilterItemsRelationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmShoppingCartItemIncludeFilterItemsRelationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmShoppingCartItemIncludeFilterItemsRelationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EcmShoppingCartItemIncludeFilterItemsRelationEnum] to String,
/// and [decode] dynamic data back to [EcmShoppingCartItemIncludeFilterItemsRelationEnum].
class EcmShoppingCartItemIncludeFilterItemsRelationEnumTypeTransformer {
  factory EcmShoppingCartItemIncludeFilterItemsRelationEnumTypeTransformer() => _instance ??= const EcmShoppingCartItemIncludeFilterItemsRelationEnumTypeTransformer._();

  const EcmShoppingCartItemIncludeFilterItemsRelationEnumTypeTransformer._();

  String encode(EcmShoppingCartItemIncludeFilterItemsRelationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EcmShoppingCartItemIncludeFilterItemsRelationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EcmShoppingCartItemIncludeFilterItemsRelationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'shoppingCart': return EcmShoppingCartItemIncludeFilterItemsRelationEnum.shoppingCart;
        case r'product': return EcmShoppingCartItemIncludeFilterItemsRelationEnum.product;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EcmShoppingCartItemIncludeFilterItemsRelationEnumTypeTransformer] instance.
  static EcmShoppingCartItemIncludeFilterItemsRelationEnumTypeTransformer? _instance;
}


extension EcmShoppingCartItemIncludeFilterItemsJsonUtils on EcmShoppingCartItemIncludeFilterItems{
static List<EcmShoppingCartItemIncludeFilterItems> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EcmShoppingCartItemIncludeFilterItems>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EcmShoppingCartItemIncludeFilterItems.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}

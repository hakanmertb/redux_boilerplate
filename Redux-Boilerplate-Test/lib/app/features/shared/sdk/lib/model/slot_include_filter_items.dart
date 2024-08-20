//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SlotIncludeFilterItems {
  SlotIncludeFilterItems(  {  required this.relation,    required this.scope } );
  SlotIncludeFilterItemsRelationEnum? relation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SlotScopeFilter? scope;



  @override
  bool operator ==(Object other) => identical(this, other) || other is SlotIncludeFilterItems&&
    other.relation == relation&&
    other.scope == scope;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (relation == null ? 0 : relation!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'SlotIncludeFilterItems[relation=$relation, scope=$scope]';

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

  /// Returns a new [SlotIncludeFilterItems] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SlotIncludeFilterItems? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SlotIncludeFilterItems[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SlotIncludeFilterItems[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SlotIncludeFilterItems(
        relation: SlotIncludeFilterItemsRelationEnum.fromJson(json[r'relation']),
        scope: SlotScopeFilter.fromJson(json[r'scope']),
      );
    }
    return null;
  }

  static List<SlotIncludeFilterItems> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SlotIncludeFilterItems>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SlotIncludeFilterItems.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SlotIncludeFilterItems> mapFromJson(dynamic json) {
    final map = <String, SlotIncludeFilterItems>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SlotIncludeFilterItems.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SlotIncludeFilterItems-objects as value to a dart map
  static Map<String, List<SlotIncludeFilterItems>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SlotIncludeFilterItems>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SlotIncludeFilterItems.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class SlotIncludeFilterItemsRelationEnum {
  /// Instantiate a new enum with the provided [value].
  const SlotIncludeFilterItemsRelationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const search = SlotIncludeFilterItemsRelationEnum._(r'search');
  static const provider = SlotIncludeFilterItemsRelationEnum._(r'provider');
  static const book = SlotIncludeFilterItemsRelationEnum._(r'book');

  /// List of all possible values in this [enum][SlotIncludeFilterItemsRelationEnum].
  static const values = <SlotIncludeFilterItemsRelationEnum>[
    search,
    provider,
    book,
  ];

  static SlotIncludeFilterItemsRelationEnum? fromJson(dynamic value) => SlotIncludeFilterItemsRelationEnumTypeTransformer().decode(value);

  static List<SlotIncludeFilterItemsRelationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SlotIncludeFilterItemsRelationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SlotIncludeFilterItemsRelationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SlotIncludeFilterItemsRelationEnum] to String,
/// and [decode] dynamic data back to [SlotIncludeFilterItemsRelationEnum].
class SlotIncludeFilterItemsRelationEnumTypeTransformer {
  factory SlotIncludeFilterItemsRelationEnumTypeTransformer() => _instance ??= const SlotIncludeFilterItemsRelationEnumTypeTransformer._();

  const SlotIncludeFilterItemsRelationEnumTypeTransformer._();

  String encode(SlotIncludeFilterItemsRelationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SlotIncludeFilterItemsRelationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SlotIncludeFilterItemsRelationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'search': return SlotIncludeFilterItemsRelationEnum.search;
        case r'provider': return SlotIncludeFilterItemsRelationEnum.provider;
        case r'book': return SlotIncludeFilterItemsRelationEnum.book;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SlotIncludeFilterItemsRelationEnumTypeTransformer] instance.
  static SlotIncludeFilterItemsRelationEnumTypeTransformer? _instance;
}


extension SlotIncludeFilterItemsJsonUtils on SlotIncludeFilterItems{
static List<SlotIncludeFilterItems> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SlotIncludeFilterItems>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SlotIncludeFilterItems.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}

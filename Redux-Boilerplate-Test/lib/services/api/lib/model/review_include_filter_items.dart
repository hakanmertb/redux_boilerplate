//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReviewIncludeFilterItems {
  /// Returns a new [ReviewIncludeFilterItems] instance.
  ReviewIncludeFilterItems({
    this.relation,
    this.scope,
  });

  ReviewIncludeFilterItemsRelationEnum? relation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ReviewScopeFilter? scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReviewIncludeFilterItems &&
    other.relation == relation &&
    other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (relation == null ? 0 : relation!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'ReviewIncludeFilterItems[relation=$relation, scope=$scope]';

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

  /// Returns a new [ReviewIncludeFilterItems] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReviewIncludeFilterItems? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReviewIncludeFilterItems[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReviewIncludeFilterItems[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReviewIncludeFilterItems(
        relation: ReviewIncludeFilterItemsRelationEnum.fromJson(json[r'relation']),
        scope: ReviewScopeFilter.fromJson(json[r'scope']),
      );
    }
    return null;
  }

  static List<ReviewIncludeFilterItems> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReviewIncludeFilterItems>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReviewIncludeFilterItems.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReviewIncludeFilterItems> mapFromJson(dynamic json) {
    final map = <String, ReviewIncludeFilterItems>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReviewIncludeFilterItems.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReviewIncludeFilterItems-objects as value to a dart map
  static Map<String, List<ReviewIncludeFilterItems>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReviewIncludeFilterItems>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReviewIncludeFilterItems.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ReviewIncludeFilterItemsRelationEnum {
  /// Instantiate a new enum with the provided [value].
  const ReviewIncludeFilterItemsRelationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const provider = ReviewIncludeFilterItemsRelationEnum._(r'provider');
  static const user = ReviewIncludeFilterItemsRelationEnum._(r'user');

  /// List of all possible values in this [enum][ReviewIncludeFilterItemsRelationEnum].
  static const values = <ReviewIncludeFilterItemsRelationEnum>[
    provider,
    user,
  ];

  static ReviewIncludeFilterItemsRelationEnum? fromJson(dynamic value) => ReviewIncludeFilterItemsRelationEnumTypeTransformer().decode(value);

  static List<ReviewIncludeFilterItemsRelationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReviewIncludeFilterItemsRelationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReviewIncludeFilterItemsRelationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ReviewIncludeFilterItemsRelationEnum] to String,
/// and [decode] dynamic data back to [ReviewIncludeFilterItemsRelationEnum].
class ReviewIncludeFilterItemsRelationEnumTypeTransformer {
  factory ReviewIncludeFilterItemsRelationEnumTypeTransformer() => _instance ??= const ReviewIncludeFilterItemsRelationEnumTypeTransformer._();

  const ReviewIncludeFilterItemsRelationEnumTypeTransformer._();

  String encode(ReviewIncludeFilterItemsRelationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReviewIncludeFilterItemsRelationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReviewIncludeFilterItemsRelationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'provider': return ReviewIncludeFilterItemsRelationEnum.provider;
        case r'user': return ReviewIncludeFilterItemsRelationEnum.user;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReviewIncludeFilterItemsRelationEnumTypeTransformer] instance.
  static ReviewIncludeFilterItemsRelationEnumTypeTransformer? _instance;
}



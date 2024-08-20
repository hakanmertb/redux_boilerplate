//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReviewIncludeFilterInner {
  ReviewIncludeFilterInner(  {  required this.relation,    required this.scope } );
  ReviewIncludeFilterInnerRelationEnum? relation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ReviewScopeFilter? scope;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ReviewIncludeFilterInner&&
    other.relation == relation&&
    other.scope == scope;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (relation == null ? 0 : relation!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'ReviewIncludeFilterInner[relation=$relation, scope=$scope]';

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

  /// Returns a new [ReviewIncludeFilterInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReviewIncludeFilterInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReviewIncludeFilterInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReviewIncludeFilterInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReviewIncludeFilterInner(
        relation: ReviewIncludeFilterInnerRelationEnum.fromJson(json[r'relation']),
        scope: ReviewScopeFilter.fromJson(json[r'scope']),
      );
    }
    return null;
  }

  static List<ReviewIncludeFilterInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReviewIncludeFilterInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReviewIncludeFilterInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReviewIncludeFilterInner> mapFromJson(dynamic json) {
    final map = <String, ReviewIncludeFilterInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReviewIncludeFilterInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReviewIncludeFilterInner-objects as value to a dart map
  static Map<String, List<ReviewIncludeFilterInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReviewIncludeFilterInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReviewIncludeFilterInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ReviewIncludeFilterInnerRelationEnum {
  /// Instantiate a new enum with the provided [value].
  const ReviewIncludeFilterInnerRelationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const provider = ReviewIncludeFilterInnerRelationEnum._(r'provider');
  static const user = ReviewIncludeFilterInnerRelationEnum._(r'user');

  /// List of all possible values in this [enum][ReviewIncludeFilterInnerRelationEnum].
  static const values = <ReviewIncludeFilterInnerRelationEnum>[
    provider,
    user,
  ];

  static ReviewIncludeFilterInnerRelationEnum? fromJson(dynamic value) => ReviewIncludeFilterInnerRelationEnumTypeTransformer().decode(value);

  static List<ReviewIncludeFilterInnerRelationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReviewIncludeFilterInnerRelationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReviewIncludeFilterInnerRelationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ReviewIncludeFilterInnerRelationEnum] to String,
/// and [decode] dynamic data back to [ReviewIncludeFilterInnerRelationEnum].
class ReviewIncludeFilterInnerRelationEnumTypeTransformer {
  factory ReviewIncludeFilterInnerRelationEnumTypeTransformer() => _instance ??= const ReviewIncludeFilterInnerRelationEnumTypeTransformer._();

  const ReviewIncludeFilterInnerRelationEnumTypeTransformer._();

  String encode(ReviewIncludeFilterInnerRelationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ReviewIncludeFilterInnerRelationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReviewIncludeFilterInnerRelationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'provider': return ReviewIncludeFilterInnerRelationEnum.provider;
        case r'user': return ReviewIncludeFilterInnerRelationEnum.user;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReviewIncludeFilterInnerRelationEnumTypeTransformer] instance.
  static ReviewIncludeFilterInnerRelationEnumTypeTransformer? _instance;
}


extension ReviewIncludeFilterInnerJsonUtils on ReviewIncludeFilterInner{
static List<ReviewIncludeFilterInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReviewIncludeFilterInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReviewIncludeFilterInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}

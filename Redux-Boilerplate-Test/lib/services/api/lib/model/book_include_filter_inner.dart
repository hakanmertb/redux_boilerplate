//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BookIncludeFilterInner {
  /// Returns a new [BookIncludeFilterInner] instance.
  BookIncludeFilterInner({
    this.relation,
    this.scope,
  });

  BookIncludeFilterInnerRelationEnum? relation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BookScopeFilter? scope;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BookIncludeFilterInner &&
    other.relation == relation &&
    other.scope == scope;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (relation == null ? 0 : relation!.hashCode) +
    (scope == null ? 0 : scope!.hashCode);

  @override
  String toString() => 'BookIncludeFilterInner[relation=$relation, scope=$scope]';

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

  /// Returns a new [BookIncludeFilterInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BookIncludeFilterInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BookIncludeFilterInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BookIncludeFilterInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BookIncludeFilterInner(
        relation: BookIncludeFilterInnerRelationEnum.fromJson(json[r'relation']),
        scope: BookScopeFilter.fromJson(json[r'scope']),
      );
    }
    return null;
  }

  static List<BookIncludeFilterInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BookIncludeFilterInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BookIncludeFilterInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BookIncludeFilterInner> mapFromJson(dynamic json) {
    final map = <String, BookIncludeFilterInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BookIncludeFilterInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BookIncludeFilterInner-objects as value to a dart map
  static Map<String, List<BookIncludeFilterInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BookIncludeFilterInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BookIncludeFilterInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class BookIncludeFilterInnerRelationEnum {
  /// Instantiate a new enum with the provided [value].
  const BookIncludeFilterInnerRelationEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const slots = BookIncludeFilterInnerRelationEnum._(r'slots');
  static const user = BookIncludeFilterInnerRelationEnum._(r'user');

  /// List of all possible values in this [enum][BookIncludeFilterInnerRelationEnum].
  static const values = <BookIncludeFilterInnerRelationEnum>[
    slots,
    user,
  ];

  static BookIncludeFilterInnerRelationEnum? fromJson(dynamic value) => BookIncludeFilterInnerRelationEnumTypeTransformer().decode(value);

  static List<BookIncludeFilterInnerRelationEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BookIncludeFilterInnerRelationEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BookIncludeFilterInnerRelationEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BookIncludeFilterInnerRelationEnum] to String,
/// and [decode] dynamic data back to [BookIncludeFilterInnerRelationEnum].
class BookIncludeFilterInnerRelationEnumTypeTransformer {
  factory BookIncludeFilterInnerRelationEnumTypeTransformer() => _instance ??= const BookIncludeFilterInnerRelationEnumTypeTransformer._();

  const BookIncludeFilterInnerRelationEnumTypeTransformer._();

  String encode(BookIncludeFilterInnerRelationEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BookIncludeFilterInnerRelationEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BookIncludeFilterInnerRelationEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'slots': return BookIncludeFilterInnerRelationEnum.slots;
        case r'user': return BookIncludeFilterInnerRelationEnum.user;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BookIncludeFilterInnerRelationEnumTypeTransformer] instance.
  static BookIncludeFilterInnerRelationEnumTypeTransformer? _instance;
}



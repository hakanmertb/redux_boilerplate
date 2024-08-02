//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContactFilter1 {
  /// Returns a new [ContactFilter1] instance.
  ContactFilter1({
    this.offset,
    this.limit,
    this.skip,
    this.order,
    this.where = const {},
    this.fields,
    this.include = const [],
  });

  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? skip;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BlogFilterOrder? order;

  Map<String, Object> where;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContactFields? fields;

  List<ContactIncludeFilterInner> include;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactFilter1 &&
    other.offset == offset &&
    other.limit == limit &&
    other.skip == skip &&
    other.order == order &&
    _deepEquality.equals(other.where, where) &&
    other.fields == fields &&
    _deepEquality.equals(other.include, include);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (offset == null ? 0 : offset!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (skip == null ? 0 : skip!.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (where.hashCode) +
    (fields == null ? 0 : fields!.hashCode) +
    (include.hashCode);

  @override
  String toString() => 'ContactFilter1[offset=$offset, limit=$limit, skip=$skip, order=$order, where=$where, fields=$fields, include=$include]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.skip != null) {
      json[r'skip'] = this.skip;
    } else {
      json[r'skip'] = null;
    }
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
      json[r'where'] = this.where;
    if (this.fields != null) {
      json[r'fields'] = this.fields;
    } else {
      json[r'fields'] = null;
    }
      json[r'include'] = this.include;
    return json;
  }

  /// Returns a new [ContactFilter1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactFilter1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContactFilter1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContactFilter1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContactFilter1(
        offset: mapValueOfType<int>(json, r'offset'),
        limit: mapValueOfType<int>(json, r'limit'),
        skip: mapValueOfType<int>(json, r'skip'),
        order: BlogFilterOrder.fromJson(json[r'order']),
        where: mapCastOfType<String, Object>(json, r'where') ?? const {},
        fields: ContactFields.fromJson(json[r'fields']),
        include: ContactIncludeFilterInner.listFromJson(json[r'include']),
      );
    }
    return null;
  }

  static List<ContactFilter1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactFilter1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactFilter1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactFilter1> mapFromJson(dynamic json) {
    final map = <String, ContactFilter1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactFilter1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactFilter1-objects as value to a dart map
  static Map<String, List<ContactFilter1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactFilter1>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactFilter1.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


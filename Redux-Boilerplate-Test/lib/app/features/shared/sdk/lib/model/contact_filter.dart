//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ContactFilter {
  ContactFilter(  {  required this.offset,    required this.limit,    required this.skip,    required this.order,    required this.fields,    required this.include } );
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ContactFields? fields;

  List<ContactIncludeFilterInner> include;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactFilter&&
    other.offset == offset&&
    other.limit == limit&&
    other.skip == skip&&
    other.order == order&&
    other.fields == fields&&
    _deepEquality.equals(other.include, include);

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (offset == null ? 0 : offset!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (skip == null ? 0 : skip!.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (fields == null ? 0 : fields!.hashCode) +
    (include.hashCode);

  @override
  String toString() => 'ContactFilter[offset=$offset, limit=$limit, skip=$skip, order=$order, fields=$fields, include=$include]';

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
    if (this.fields != null) {
      json[r'fields'] = this.fields;
    } else {
      json[r'fields'] = null;
    }
      json[r'include'] = this.include;
    return json;
  }

  /// Returns a new [ContactFilter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactFilter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ContactFilter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ContactFilter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ContactFilter(
        offset: mapValueOfType<int>(json, r'offset'),
        limit: mapValueOfType<int>(json, r'limit'),
        skip: mapValueOfType<int>(json, r'skip'),
        order: BlogFilterOrder.fromJson(json[r'order']),
        fields: ContactFields.fromJson(json[r'fields']),
        include: ContactIncludeFilterInnerJsonUtils.listFromJson(json[r'include']),
      );
    }
    return null;
  }

  static List<ContactFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactFilter> mapFromJson(dynamic json) {
    final map = <String, ContactFilter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactFilter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactFilter-objects as value to a dart map
  static Map<String, List<ContactFilter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactFilter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactFilter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

extension ContactFilterJsonUtils on ContactFilter{
static List<ContactFilter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactFilter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactFilter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}

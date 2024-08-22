//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApplicationFilter1 {
  ApplicationFilter1(  {  required this.offset,    required this.limit,    required this.skip,    required this.order,    required this.where,    required this.fields } );
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
  ApplicationFilterOrder? order;

  Map<String, Object> where;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ApplicationFields? fields;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplicationFilter1&&
    other.offset == offset&&
    other.limit == limit&&
    other.skip == skip&&
    other.order == order&&
     _deepEquality.equals(other.where, where)&&
    other.fields == fields;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (offset == null ? 0 : offset!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (skip == null ? 0 : skip!.hashCode) +
    (order == null ? 0 : order!.hashCode) +
    (where.hashCode) +
    (fields == null ? 0 : fields!.hashCode);

  @override
  String toString() => 'ApplicationFilter1[offset=$offset, limit=$limit, skip=$skip, order=$order, where=$where, fields=$fields]';

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
    return json;
  }

  /// Returns a new [ApplicationFilter1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplicationFilter1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplicationFilter1[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplicationFilter1[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplicationFilter1(
        offset: mapValueOfType<int>(json, r'offset'),
        limit: mapValueOfType<int>(json, r'limit'),
        skip: mapValueOfType<int>(json, r'skip'),
        order: ApplicationFilterOrder.fromJson(json[r'order']),
        where: mapCastOfType<String, Object>(json, r'where') ?? const {},
        fields: ApplicationFields.fromJson(json[r'fields']),
      );
    }
    return null;
  }

  static List<ApplicationFilter1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationFilter1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationFilter1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplicationFilter1> mapFromJson(dynamic json) {
    final map = <String, ApplicationFilter1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplicationFilter1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplicationFilter1-objects as value to a dart map
  static Map<String, List<ApplicationFilter1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplicationFilter1>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplicationFilter1.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

extension ApplicationFilter1JsonUtils on ApplicationFilter1{
static List<ApplicationFilter1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplicationFilter1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplicationFilter1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class XxDemographicInfoFieldsOneOf {
    /// Returns a new [XxDemographicInfoFieldsOneOf] instance.
  XxDemographicInfoFieldsOneOf(
    { this.id,
    this.firstName,
    this.createdDate,
    this.createdBy,
    this.createdById,
    this.updatedDate,
    this.updatedBy,
    this.updatedById,
    this.deletedDate,
    this.deletedBy,
    this.deletedById,
    this.isDeleted, }
  );

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? createdDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? createdBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? createdById;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? updatedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? updatedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? updatedById;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deletedDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deletedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? deletedById;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDeleted;



  @override
  bool operator ==(Object other) => identical(this, other) || other is XxDemographicInfoFieldsOneOf&&
    other.id == id&&
    other.firstName == firstName&&
    other.createdDate == createdDate&&
    other.createdBy == createdBy&&
    other.createdById == createdById&&
    other.updatedDate == updatedDate&&
    other.updatedBy == updatedBy&&
    other.updatedById == updatedById&&
    other.deletedDate == deletedDate&&
    other.deletedBy == deletedBy&&
    other.deletedById == deletedById&&
    other.isDeleted == isDeleted;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (createdDate == null ? 0 : createdDate!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (createdById == null ? 0 : createdById!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode) +
    (updatedById == null ? 0 : updatedById!.hashCode) +
    (deletedDate == null ? 0 : deletedDate!.hashCode) +
    (deletedBy == null ? 0 : deletedBy!.hashCode) +
    (deletedById == null ? 0 : deletedById!.hashCode) +
    (isDeleted == null ? 0 : isDeleted!.hashCode);

  @override
  String toString() => 'XxDemographicInfoFieldsOneOf[id=$id, firstName=$firstName, createdDate=$createdDate, createdBy=$createdBy, createdById=$createdById, updatedDate=$updatedDate, updatedBy=$updatedBy, updatedById=$updatedById, deletedDate=$deletedDate, deletedBy=$deletedBy, deletedById=$deletedById, isDeleted=$isDeleted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    }
    if (this.createdDate != null) {
      json[r'createdDate'] = this.createdDate;
    }
    if (this.createdBy != null) {
      json[r'createdBy'] = this.createdBy;
    }
    if (this.createdById != null) {
      json[r'createdById'] = this.createdById;
    }
    if (this.updatedDate != null) {
      json[r'updatedDate'] = this.updatedDate;
    }
    if (this.updatedBy != null) {
      json[r'updatedBy'] = this.updatedBy;
    }
    if (this.updatedById != null) {
      json[r'updatedById'] = this.updatedById;
    }
    if (this.deletedDate != null) {
      json[r'deletedDate'] = this.deletedDate;
    }
    if (this.deletedBy != null) {
      json[r'deletedBy'] = this.deletedBy;
    }
    if (this.deletedById != null) {
      json[r'deletedById'] = this.deletedById;
    }
    if (this.isDeleted != null) {
      json[r'isDeleted'] = this.isDeleted;
    }
    return json;
  }

  /// Returns a new [XxDemographicInfoFieldsOneOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static XxDemographicInfoFieldsOneOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "XxDemographicInfoFieldsOneOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "XxDemographicInfoFieldsOneOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return XxDemographicInfoFieldsOneOf(
        id: mapValueOfType<bool>(json, r'id'),
        firstName: mapValueOfType<bool>(json, r'firstName'),
        createdDate: mapValueOfType<bool>(json, r'createdDate'),
        createdBy: mapValueOfType<bool>(json, r'createdBy'),
        createdById: mapValueOfType<bool>(json, r'createdById'),
        updatedDate: mapValueOfType<bool>(json, r'updatedDate'),
        updatedBy: mapValueOfType<bool>(json, r'updatedBy'),
        updatedById: mapValueOfType<bool>(json, r'updatedById'),
        deletedDate: mapValueOfType<bool>(json, r'deletedDate'),
        deletedBy: mapValueOfType<bool>(json, r'deletedBy'),
        deletedById: mapValueOfType<bool>(json, r'deletedById'),
        isDeleted: mapValueOfType<bool>(json, r'isDeleted'),
      );
    }
    return null;
  }

  static List<XxDemographicInfoFieldsOneOf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <XxDemographicInfoFieldsOneOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = XxDemographicInfoFieldsOneOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, XxDemographicInfoFieldsOneOf> mapFromJson(dynamic json) {
    final map = <String, XxDemographicInfoFieldsOneOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = XxDemographicInfoFieldsOneOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of XxDemographicInfoFieldsOneOf-objects as value to a dart map
  static Map<String, List<XxDemographicInfoFieldsOneOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<XxDemographicInfoFieldsOneOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = XxDemographicInfoFieldsOneOf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

extension XxDemographicInfoFieldsOneOfJsonUtils on XxDemographicInfoFieldsOneOf{
static List<XxDemographicInfoFieldsOneOf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <XxDemographicInfoFieldsOneOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = XxDemographicInfoFieldsOneOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}

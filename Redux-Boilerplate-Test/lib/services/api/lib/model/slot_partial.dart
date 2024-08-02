//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SlotPartial {
  /// Returns a new [SlotPartial] instance.
  SlotPartial({
    this.id,
    this.day,
    this.timeSlot,
    this.isAvailable,
    this.parentId,
    this.createdDate,
    this.createdBy,
    this.createdById,
    this.updatedDate,
    this.updatedBy,
    this.updatedById,
    this.deletedDate,
    this.deletedBy,
    this.deletedById,
    this.isDeleted,
    this.searchId,
    this.providerId,
    this.bookId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? day;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timeSlot;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAvailable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdById;

  DateTime? updatedDate;

  String? updatedBy;

  String? updatedById;

  DateTime? deletedDate;

  String? deletedBy;

  String? deletedById;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDeleted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? searchId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? providerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bookId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SlotPartial &&
    other.id == id &&
    other.day == day &&
    other.timeSlot == timeSlot &&
    other.isAvailable == isAvailable &&
    other.parentId == parentId &&
    other.createdDate == createdDate &&
    other.createdBy == createdBy &&
    other.createdById == createdById &&
    other.updatedDate == updatedDate &&
    other.updatedBy == updatedBy &&
    other.updatedById == updatedById &&
    other.deletedDate == deletedDate &&
    other.deletedBy == deletedBy &&
    other.deletedById == deletedById &&
    other.isDeleted == isDeleted &&
    other.searchId == searchId &&
    other.providerId == providerId &&
    other.bookId == bookId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (day == null ? 0 : day!.hashCode) +
    (timeSlot == null ? 0 : timeSlot!.hashCode) +
    (isAvailable == null ? 0 : isAvailable!.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (createdDate == null ? 0 : createdDate!.hashCode) +
    (createdBy == null ? 0 : createdBy!.hashCode) +
    (createdById == null ? 0 : createdById!.hashCode) +
    (updatedDate == null ? 0 : updatedDate!.hashCode) +
    (updatedBy == null ? 0 : updatedBy!.hashCode) +
    (updatedById == null ? 0 : updatedById!.hashCode) +
    (deletedDate == null ? 0 : deletedDate!.hashCode) +
    (deletedBy == null ? 0 : deletedBy!.hashCode) +
    (deletedById == null ? 0 : deletedById!.hashCode) +
    (isDeleted == null ? 0 : isDeleted!.hashCode) +
    (searchId == null ? 0 : searchId!.hashCode) +
    (providerId == null ? 0 : providerId!.hashCode) +
    (bookId == null ? 0 : bookId!.hashCode);

  @override
  String toString() => 'SlotPartial[id=$id, day=$day, timeSlot=$timeSlot, isAvailable=$isAvailable, parentId=$parentId, createdDate=$createdDate, createdBy=$createdBy, createdById=$createdById, updatedDate=$updatedDate, updatedBy=$updatedBy, updatedById=$updatedById, deletedDate=$deletedDate, deletedBy=$deletedBy, deletedById=$deletedById, isDeleted=$isDeleted, searchId=$searchId, providerId=$providerId, bookId=$bookId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.day != null) {
      json[r'day'] = this.day;
    } else {
      json[r'day'] = null;
    }
    if (this.timeSlot != null) {
      json[r'timeSlot'] = this.timeSlot;
    } else {
      json[r'timeSlot'] = null;
    }
    if (this.isAvailable != null) {
      json[r'isAvailable'] = this.isAvailable;
    } else {
      json[r'isAvailable'] = null;
    }
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
    if (this.createdDate != null) {
      json[r'createdDate'] = this.createdDate!.toUtc().toIso8601String();
    } else {
      json[r'createdDate'] = null;
    }
    if (this.createdBy != null) {
      json[r'createdBy'] = this.createdBy;
    } else {
      json[r'createdBy'] = null;
    }
    if (this.createdById != null) {
      json[r'createdById'] = this.createdById;
    } else {
      json[r'createdById'] = null;
    }
    if (this.updatedDate != null) {
      json[r'updatedDate'] = this.updatedDate!.toUtc().toIso8601String();
    } else {
      json[r'updatedDate'] = null;
    }
    if (this.updatedBy != null) {
      json[r'updatedBy'] = this.updatedBy;
    } else {
      json[r'updatedBy'] = null;
    }
    if (this.updatedById != null) {
      json[r'updatedById'] = this.updatedById;
    } else {
      json[r'updatedById'] = null;
    }
    if (this.deletedDate != null) {
      json[r'deletedDate'] = this.deletedDate!.toUtc().toIso8601String();
    } else {
      json[r'deletedDate'] = null;
    }
    if (this.deletedBy != null) {
      json[r'deletedBy'] = this.deletedBy;
    } else {
      json[r'deletedBy'] = null;
    }
    if (this.deletedById != null) {
      json[r'deletedById'] = this.deletedById;
    } else {
      json[r'deletedById'] = null;
    }
    if (this.isDeleted != null) {
      json[r'isDeleted'] = this.isDeleted;
    } else {
      json[r'isDeleted'] = null;
    }
    if (this.searchId != null) {
      json[r'searchId'] = this.searchId;
    } else {
      json[r'searchId'] = null;
    }
    if (this.providerId != null) {
      json[r'providerId'] = this.providerId;
    } else {
      json[r'providerId'] = null;
    }
    if (this.bookId != null) {
      json[r'bookId'] = this.bookId;
    } else {
      json[r'bookId'] = null;
    }
    return json;
  }

  /// Returns a new [SlotPartial] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SlotPartial? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SlotPartial[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SlotPartial[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SlotPartial(
        id: mapValueOfType<String>(json, r'id'),
        day: mapValueOfType<String>(json, r'day'),
        timeSlot: mapValueOfType<String>(json, r'timeSlot'),
        isAvailable: mapValueOfType<bool>(json, r'isAvailable'),
        parentId: mapValueOfType<String>(json, r'parentId'),
        createdDate: mapDateTime(json, r'createdDate', r''),
        createdBy: mapValueOfType<String>(json, r'createdBy'),
        createdById: mapValueOfType<String>(json, r'createdById'),
        updatedDate: mapDateTime(json, r'updatedDate', r''),
        updatedBy: mapValueOfType<String>(json, r'updatedBy'),
        updatedById: mapValueOfType<String>(json, r'updatedById'),
        deletedDate: mapDateTime(json, r'deletedDate', r''),
        deletedBy: mapValueOfType<String>(json, r'deletedBy'),
        deletedById: mapValueOfType<String>(json, r'deletedById'),
        isDeleted: mapValueOfType<bool>(json, r'isDeleted'),
        searchId: mapValueOfType<String>(json, r'searchId'),
        providerId: mapValueOfType<String>(json, r'providerId'),
        bookId: mapValueOfType<String>(json, r'bookId'),
      );
    }
    return null;
  }

  static List<SlotPartial> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SlotPartial>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SlotPartial.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SlotPartial> mapFromJson(dynamic json) {
    final map = <String, SlotPartial>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SlotPartial.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SlotPartial-objects as value to a dart map
  static Map<String, List<SlotPartial>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SlotPartial>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SlotPartial.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


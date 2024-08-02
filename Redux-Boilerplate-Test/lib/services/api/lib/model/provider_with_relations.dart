//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProviderWithRelations {
  /// Returns a new [ProviderWithRelations] instance.
  ProviderWithRelations({
    required this.id,
    this.firstName,
    this.lastName,
    this.profileImageUrl,
    this.shortBio,
    this.longBio,
    this.email,
    this.mobilePhone,
    this.workPhone,
    this.supportedZipCodes,
    this.supportedAgeOfLearners = const [],
    this.distance,
    this.hourlyRate = const [],
    this.yearsOfExperience = const [],
    this.teaches = const [],
    this.specialties = const [],
    this.acceptingStudents,
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
    this.reviews = const [],
    this.foreignKey,
    this.providerAvailability = const [],
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? profileImageUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shortBio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? longBio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mobilePhone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workPhone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? supportedZipCodes;

  List<String> supportedAgeOfLearners;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? distance;

  List<num> hourlyRate;

  List<Object> yearsOfExperience;

  List<String> teaches;

  List<String> specialties;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? acceptingStudents;

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

  List<ReviewWithRelations> reviews;

  Object? foreignKey;

  List<SlotWithRelations> providerAvailability;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProviderWithRelations &&
          other.id == id &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.profileImageUrl == profileImageUrl &&
          other.shortBio == shortBio &&
          other.longBio == longBio &&
          other.email == email &&
          other.mobilePhone == mobilePhone &&
          other.workPhone == workPhone &&
          other.supportedZipCodes == supportedZipCodes &&
          _deepEquality.equals(
              other.supportedAgeOfLearners, supportedAgeOfLearners) &&
          other.distance == distance &&
          _deepEquality.equals(other.hourlyRate, hourlyRate) &&
          _deepEquality.equals(other.yearsOfExperience, yearsOfExperience) &&
          _deepEquality.equals(other.teaches, teaches) &&
          _deepEquality.equals(other.specialties, specialties) &&
          other.acceptingStudents == acceptingStudents &&
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
          _deepEquality.equals(other.reviews, reviews) &&
          other.foreignKey == foreignKey &&
          _deepEquality.equals(
              other.providerAvailability, providerAvailability);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (profileImageUrl == null ? 0 : profileImageUrl!.hashCode) +
      (shortBio == null ? 0 : shortBio!.hashCode) +
      (longBio == null ? 0 : longBio!.hashCode) +
      (email == null ? 0 : email!.hashCode) +
      (mobilePhone == null ? 0 : mobilePhone!.hashCode) +
      (workPhone == null ? 0 : workPhone!.hashCode) +
      (supportedZipCodes == null ? 0 : supportedZipCodes!.hashCode) +
      (supportedAgeOfLearners.hashCode) +
      (distance == null ? 0 : distance!.hashCode) +
      (hourlyRate.hashCode) +
      (yearsOfExperience.hashCode) +
      (teaches.hashCode) +
      (specialties.hashCode) +
      (acceptingStudents == null ? 0 : acceptingStudents!.hashCode) +
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
      (reviews.hashCode) +
      (foreignKey == null ? 0 : foreignKey!.hashCode) +
      (providerAvailability.hashCode);

  @override
  String toString() =>
      'ProviderWithRelations[id=$id, firstName=$firstName, lastName=$lastName, profileImageUrl=$profileImageUrl, shortBio=$shortBio, longBio=$longBio, email=$email, mobilePhone=$mobilePhone, workPhone=$workPhone, supportedZipCodes=$supportedZipCodes, supportedAgeOfLearners=$supportedAgeOfLearners, distance=$distance, hourlyRate=$hourlyRate, yearsOfExperience=$yearsOfExperience, teaches=$teaches, specialties=$specialties, acceptingStudents=$acceptingStudents, createdDate=$createdDate, createdBy=$createdBy, createdById=$createdById, updatedDate=$updatedDate, updatedBy=$updatedBy, updatedById=$updatedById, deletedDate=$deletedDate, deletedBy=$deletedBy, deletedById=$deletedById, isDeleted=$isDeleted, reviews=$reviews, foreignKey=$foreignKey, providerAvailability=$providerAvailability]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.profileImageUrl != null) {
      json[r'profileImageUrl'] = this.profileImageUrl;
    } else {
      json[r'profileImageUrl'] = null;
    }
    if (this.shortBio != null) {
      json[r'shortBio'] = this.shortBio;
    } else {
      json[r'shortBio'] = null;
    }
    if (this.longBio != null) {
      json[r'longBio'] = this.longBio;
    } else {
      json[r'longBio'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.mobilePhone != null) {
      json[r'mobilePhone'] = this.mobilePhone;
    } else {
      json[r'mobilePhone'] = null;
    }
    if (this.workPhone != null) {
      json[r'workPhone'] = this.workPhone;
    } else {
      json[r'workPhone'] = null;
    }
    if (this.supportedZipCodes != null) {
      json[r'supportedZipCodes'] = this.supportedZipCodes;
    } else {
      json[r'supportedZipCodes'] = null;
    }
    json[r'supportedAgeOfLearners'] = this.supportedAgeOfLearners;
    if (this.distance != null) {
      json[r'distance'] = this.distance;
    } else {
      json[r'distance'] = null;
    }
    json[r'hourlyRate'] = this.hourlyRate;
    json[r'yearsOfExperience'] = this.yearsOfExperience;
    json[r'teaches'] = this.teaches;
    json[r'specialties'] = this.specialties;
    if (this.acceptingStudents != null) {
      json[r'acceptingStudents'] = this.acceptingStudents;
    } else {
      json[r'acceptingStudents'] = null;
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
    json[r'reviews'] = this.reviews;
    if (this.foreignKey != null) {
      json[r'foreignKey'] = this.foreignKey;
    } else {
      json[r'foreignKey'] = null;
    }
    json[r'providerAvailability'] = this.providerAvailability;
    return json;
  }

  /// Returns a new [ProviderWithRelations] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProviderWithRelations? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ProviderWithRelations[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ProviderWithRelations[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProviderWithRelations(
        id: mapValueOfType<String>(json, r'id')!,
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        profileImageUrl: mapValueOfType<String>(json, r'profileImageUrl'),
        shortBio: mapValueOfType<String>(json, r'shortBio'),
        longBio: mapValueOfType<String>(json, r'longBio'),
        email: mapValueOfType<String>(json, r'email'),
        mobilePhone: mapValueOfType<String>(json, r'mobilePhone'),
        workPhone: mapValueOfType<String>(json, r'workPhone'),
        supportedZipCodes: mapValueOfType<String>(json, r'supportedZipCodes'),
        supportedAgeOfLearners: json[r'supportedAgeOfLearners'] is Iterable
            ? (json[r'supportedAgeOfLearners'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        distance: mapValueOfType<String>(json, r'distance'),
        hourlyRate: json[r'hourlyRate'] is Iterable
            ? (json[r'hourlyRate'] as Iterable)
                .cast<num>()
                .toList(growable: false)
            : const [],
        teaches: json[r'teaches'] is Iterable
            ? (json[r'teaches'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        specialties: json[r'specialties'] is Iterable
            ? (json[r'specialties'] as Iterable)
                .cast<String>()
                .toList(growable: false)
            : const [],
        acceptingStudents: mapValueOfType<bool>(json, r'acceptingStudents'),
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
        reviews: ReviewWithRelations.listFromJson(json[r'reviews']),
        foreignKey: mapValueOfType<Object>(json, r'foreignKey'),
        providerAvailability:
            SlotWithRelations.listFromJson(json[r'providerAvailability']),
      );
    }
    return null;
  }

  static List<ProviderWithRelations> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProviderWithRelations>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProviderWithRelations.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProviderWithRelations> mapFromJson(dynamic json) {
    final map = <String, ProviderWithRelations>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProviderWithRelations.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProviderWithRelations-objects as value to a dart map
  static Map<String, List<ProviderWithRelations>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ProviderWithRelations>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProviderWithRelations.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReviewWithRelations {
  /// Returns a new [ReviewWithRelations] instance.
  ReviewWithRelations({
    required this.id,
    this.rate,
    this.review,
    this.likeCount,
    this.dislikeCount,
    this.replyText,
    this.email,
    this.name,
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
    this.providerId,
    this.userId,
    this.provider,
    this.foreignKey,
    this.user,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? rate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? review;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? likeCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? dislikeCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? replyText;

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
  String? name;

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
  String? providerId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProviderWithRelations? provider;

  Object? foreignKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserWithRelations? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReviewWithRelations &&
    other.id == id &&
    other.rate == rate &&
    other.review == review &&
    other.likeCount == likeCount &&
    other.dislikeCount == dislikeCount &&
    other.replyText == replyText &&
    other.email == email &&
    other.name == name &&
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
    other.providerId == providerId &&
    other.userId == userId &&
    other.provider == provider &&
    other.foreignKey == foreignKey &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (rate == null ? 0 : rate!.hashCode) +
    (review == null ? 0 : review!.hashCode) +
    (likeCount == null ? 0 : likeCount!.hashCode) +
    (dislikeCount == null ? 0 : dislikeCount!.hashCode) +
    (replyText == null ? 0 : replyText!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
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
    (providerId == null ? 0 : providerId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (foreignKey == null ? 0 : foreignKey!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'ReviewWithRelations[id=$id, rate=$rate, review=$review, likeCount=$likeCount, dislikeCount=$dislikeCount, replyText=$replyText, email=$email, name=$name, parentId=$parentId, createdDate=$createdDate, createdBy=$createdBy, createdById=$createdById, updatedDate=$updatedDate, updatedBy=$updatedBy, updatedById=$updatedById, deletedDate=$deletedDate, deletedBy=$deletedBy, deletedById=$deletedById, isDeleted=$isDeleted, providerId=$providerId, userId=$userId, provider=$provider, foreignKey=$foreignKey, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.rate != null) {
      json[r'rate'] = this.rate;
    } else {
      json[r'rate'] = null;
    }
    if (this.review != null) {
      json[r'review'] = this.review;
    } else {
      json[r'review'] = null;
    }
    if (this.likeCount != null) {
      json[r'likeCount'] = this.likeCount;
    } else {
      json[r'likeCount'] = null;
    }
    if (this.dislikeCount != null) {
      json[r'dislikeCount'] = this.dislikeCount;
    } else {
      json[r'dislikeCount'] = null;
    }
    if (this.replyText != null) {
      json[r'replyText'] = this.replyText;
    } else {
      json[r'replyText'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
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
    if (this.providerId != null) {
      json[r'providerId'] = this.providerId;
    } else {
      json[r'providerId'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.foreignKey != null) {
      json[r'foreignKey'] = this.foreignKey;
    } else {
      json[r'foreignKey'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [ReviewWithRelations] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReviewWithRelations? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReviewWithRelations[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReviewWithRelations[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReviewWithRelations(
        id: mapValueOfType<String>(json, r'id')!,
        rate: num.parse('${json[r'rate']}'),
        review: mapValueOfType<String>(json, r'review'),
        likeCount: num.parse('${json[r'likeCount']}'),
        dislikeCount: num.parse('${json[r'dislikeCount']}'),
        replyText: mapValueOfType<String>(json, r'replyText'),
        email: mapValueOfType<String>(json, r'email'),
        name: mapValueOfType<String>(json, r'name'),
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
        providerId: mapValueOfType<String>(json, r'providerId'),
        userId: mapValueOfType<String>(json, r'userId'),
        provider: ProviderWithRelations.fromJson(json[r'provider']),
        foreignKey: mapValueOfType<Object>(json, r'foreignKey'),
        user: UserWithRelations.fromJson(json[r'user']),
      );
    }
    return null;
  }

  static List<ReviewWithRelations> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReviewWithRelations>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReviewWithRelations.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReviewWithRelations> mapFromJson(dynamic json) {
    final map = <String, ReviewWithRelations>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReviewWithRelations.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReviewWithRelations-objects as value to a dart map
  static Map<String, List<ReviewWithRelations>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReviewWithRelations>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReviewWithRelations.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}


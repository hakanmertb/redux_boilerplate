//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Credentials {
  Credentials(  {  required this.username,    required this.password,    required this.usernameType } );
  String username;

  String password;

  String usernameType;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Credentials&&
    other.username == username&&
    other.password == password&&
    other.usernameType == usernameType;

  @override
  int get hashCode => 
    // ignore: unnecessary_parenthesis
    (username.hashCode) +
    (password.hashCode) +
    (usernameType.hashCode);

  @override
  String toString() => 'Credentials[username=$username, password=$password, usernameType=$usernameType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'username'] = this.username;
      json[r'password'] = this.password;
      json[r'usernameType'] = this.usernameType;
    return json;
  }

  /// Returns a new [Credentials] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Credentials? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Credentials[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Credentials[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Credentials(
        username: mapValueOfType<String>(json, r'username')!,
        password: mapValueOfType<String>(json, r'password')!,
        usernameType: mapValueOfType<String>(json, r'usernameType')!,
      );
    }
    return null;
  }

  static List<Credentials> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Credentials>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Credentials.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Credentials> mapFromJson(dynamic json) {
    final map = <String, Credentials>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Credentials.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Credentials-objects as value to a dart map
  static Map<String, List<Credentials>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Credentials>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Credentials.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
    'password',
    'usernameType',
  };
}

extension CredentialsJsonUtils on Credentials{
static List<Credentials> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Credentials>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Credentials.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }}

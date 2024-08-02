//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PingResponse {
  /// Returns a new [PingResponse] instance.
  PingResponse({
    this.greeting,
    this.date,
    this.url,
    this.headers,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? greeting;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PingResponseHeaders? headers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PingResponse &&
    other.greeting == greeting &&
    other.date == date &&
    other.url == url &&
    other.headers == headers;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (greeting == null ? 0 : greeting!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (headers == null ? 0 : headers!.hashCode);

  @override
  String toString() => 'PingResponse[greeting=$greeting, date=$date, url=$url, headers=$headers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.greeting != null) {
      json[r'greeting'] = this.greeting;
    } else {
      json[r'greeting'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.headers != null) {
      json[r'headers'] = this.headers;
    } else {
      json[r'headers'] = null;
    }
    return json;
  }

  /// Returns a new [PingResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PingResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PingResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PingResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PingResponse(
        greeting: mapValueOfType<String>(json, r'greeting'),
        date: mapValueOfType<String>(json, r'date'),
        url: mapValueOfType<String>(json, r'url'),
        headers: PingResponseHeaders.fromJson(json[r'headers']),
      );
    }
    return null;
  }

  static List<PingResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PingResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PingResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PingResponse> mapFromJson(dynamic json) {
    final map = <String, PingResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PingResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PingResponse-objects as value to a dart map
  static Map<String, List<PingResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PingResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PingResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


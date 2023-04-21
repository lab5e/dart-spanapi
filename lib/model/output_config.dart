//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spanapi;

class OutputConfig {
  /// Returns a new [OutputConfig] instance.
  OutputConfig({
    this.url,
    this.basicAuthUser,
    this.basicAuthPass,
    this.customHeaderName,
    this.customHeaderValue,
    this.host,
    this.port,
    this.key,
    this.eventName,
    this.asIsPayload,
    this.endpoint,
    this.disableCertCheck,
    this.username,
    this.password,
    this.clientId,
    this.topicName,
    this.topicTemplate,
    this.payloadFormat,
    this.payloadTemplate,
  });

  /// URL for the webhook.
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
  String? basicAuthUser;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? basicAuthPass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customHeaderName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customHeaderValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eventName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? asIsPayload;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endpoint;

  /// MQTT configuration: Disable certificate checks. Default is off.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? disableCertCheck;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? topicName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? topicTemplate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payloadFormat;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? payloadTemplate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OutputConfig &&
          other.url == url &&
          other.basicAuthUser == basicAuthUser &&
          other.basicAuthPass == basicAuthPass &&
          other.customHeaderName == customHeaderName &&
          other.customHeaderValue == customHeaderValue &&
          other.host == host &&
          other.port == port &&
          other.key == key &&
          other.eventName == eventName &&
          other.asIsPayload == asIsPayload &&
          other.endpoint == endpoint &&
          other.disableCertCheck == disableCertCheck &&
          other.username == username &&
          other.password == password &&
          other.clientId == clientId &&
          other.topicName == topicName &&
          other.topicTemplate == topicTemplate &&
          other.payloadFormat == payloadFormat &&
          other.payloadTemplate == payloadTemplate;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (url == null ? 0 : url!.hashCode) +
      (basicAuthUser == null ? 0 : basicAuthUser!.hashCode) +
      (basicAuthPass == null ? 0 : basicAuthPass!.hashCode) +
      (customHeaderName == null ? 0 : customHeaderName!.hashCode) +
      (customHeaderValue == null ? 0 : customHeaderValue!.hashCode) +
      (host == null ? 0 : host!.hashCode) +
      (port == null ? 0 : port!.hashCode) +
      (key == null ? 0 : key!.hashCode) +
      (eventName == null ? 0 : eventName!.hashCode) +
      (asIsPayload == null ? 0 : asIsPayload!.hashCode) +
      (endpoint == null ? 0 : endpoint!.hashCode) +
      (disableCertCheck == null ? 0 : disableCertCheck!.hashCode) +
      (username == null ? 0 : username!.hashCode) +
      (password == null ? 0 : password!.hashCode) +
      (clientId == null ? 0 : clientId!.hashCode) +
      (topicName == null ? 0 : topicName!.hashCode) +
      (topicTemplate == null ? 0 : topicTemplate!.hashCode) +
      (payloadFormat == null ? 0 : payloadFormat!.hashCode) +
      (payloadTemplate == null ? 0 : payloadTemplate!.hashCode);

  @override
  String toString() =>
      'OutputConfig[url=$url, basicAuthUser=$basicAuthUser, basicAuthPass=$basicAuthPass, customHeaderName=$customHeaderName, customHeaderValue=$customHeaderValue, host=$host, port=$port, key=$key, eventName=$eventName, asIsPayload=$asIsPayload, endpoint=$endpoint, disableCertCheck=$disableCertCheck, username=$username, password=$password, clientId=$clientId, topicName=$topicName, topicTemplate=$topicTemplate, payloadFormat=$payloadFormat, payloadTemplate=$payloadTemplate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.basicAuthUser != null) {
      json[r'basicAuthUser'] = this.basicAuthUser;
    } else {
      json[r'basicAuthUser'] = null;
    }
    if (this.basicAuthPass != null) {
      json[r'basicAuthPass'] = this.basicAuthPass;
    } else {
      json[r'basicAuthPass'] = null;
    }
    if (this.customHeaderName != null) {
      json[r'customHeaderName'] = this.customHeaderName;
    } else {
      json[r'customHeaderName'] = null;
    }
    if (this.customHeaderValue != null) {
      json[r'customHeaderValue'] = this.customHeaderValue;
    } else {
      json[r'customHeaderValue'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.eventName != null) {
      json[r'eventName'] = this.eventName;
    } else {
      json[r'eventName'] = null;
    }
    if (this.asIsPayload != null) {
      json[r'asIsPayload'] = this.asIsPayload;
    } else {
      json[r'asIsPayload'] = null;
    }
    if (this.endpoint != null) {
      json[r'endpoint'] = this.endpoint;
    } else {
      json[r'endpoint'] = null;
    }
    if (this.disableCertCheck != null) {
      json[r'disableCertCheck'] = this.disableCertCheck;
    } else {
      json[r'disableCertCheck'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.clientId != null) {
      json[r'clientId'] = this.clientId;
    } else {
      json[r'clientId'] = null;
    }
    if (this.topicName != null) {
      json[r'topicName'] = this.topicName;
    } else {
      json[r'topicName'] = null;
    }
    if (this.topicTemplate != null) {
      json[r'topicTemplate'] = this.topicTemplate;
    } else {
      json[r'topicTemplate'] = null;
    }
    if (this.payloadFormat != null) {
      json[r'payloadFormat'] = this.payloadFormat;
    } else {
      json[r'payloadFormat'] = null;
    }
    if (this.payloadTemplate != null) {
      json[r'payloadTemplate'] = this.payloadTemplate;
    } else {
      json[r'payloadTemplate'] = null;
    }
    return json;
  }

  /// Returns a new [OutputConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OutputConfig? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OutputConfig[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OutputConfig[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OutputConfig(
        url: mapValueOfType<String>(json, r'url'),
        basicAuthUser: mapValueOfType<String>(json, r'basicAuthUser'),
        basicAuthPass: mapValueOfType<String>(json, r'basicAuthPass'),
        customHeaderName: mapValueOfType<String>(json, r'customHeaderName'),
        customHeaderValue: mapValueOfType<String>(json, r'customHeaderValue'),
        host: mapValueOfType<String>(json, r'host'),
        port: mapValueOfType<int>(json, r'port'),
        key: mapValueOfType<String>(json, r'key'),
        eventName: mapValueOfType<String>(json, r'eventName'),
        asIsPayload: mapValueOfType<bool>(json, r'asIsPayload'),
        endpoint: mapValueOfType<String>(json, r'endpoint'),
        disableCertCheck: mapValueOfType<bool>(json, r'disableCertCheck'),
        username: mapValueOfType<String>(json, r'username'),
        password: mapValueOfType<String>(json, r'password'),
        clientId: mapValueOfType<String>(json, r'clientId'),
        topicName: mapValueOfType<String>(json, r'topicName'),
        topicTemplate: mapValueOfType<String>(json, r'topicTemplate'),
        payloadFormat: mapValueOfType<String>(json, r'payloadFormat'),
        payloadTemplate: mapValueOfType<String>(json, r'payloadTemplate'),
      );
    }
    return null;
  }

  static List<OutputConfig>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OutputConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OutputConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OutputConfig> mapFromJson(dynamic json) {
    final map = <String, OutputConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OutputConfig-objects as value to a dart map
  static Map<String, List<OutputConfig>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OutputConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OutputConfig.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}

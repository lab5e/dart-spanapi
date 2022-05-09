//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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
  String url;

  String basicAuthUser;

  String basicAuthPass;

  String customHeaderName;

  String customHeaderValue;

  String host;

  int port;

  String key;

  String eventName;

  bool asIsPayload;

  String endpoint;

  /// MQTT configuration: Disable certificate checks. Default is off.
  bool disableCertCheck;

  String username;

  String password;

  String clientId;

  String topicName;

  String topicTemplate;

  String payloadFormat;

  String payloadTemplate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OutputConfig &&
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
    (url == null ? 0 : url.hashCode) +
    (basicAuthUser == null ? 0 : basicAuthUser.hashCode) +
    (basicAuthPass == null ? 0 : basicAuthPass.hashCode) +
    (customHeaderName == null ? 0 : customHeaderName.hashCode) +
    (customHeaderValue == null ? 0 : customHeaderValue.hashCode) +
    (host == null ? 0 : host.hashCode) +
    (port == null ? 0 : port.hashCode) +
    (key == null ? 0 : key.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (asIsPayload == null ? 0 : asIsPayload.hashCode) +
    (endpoint == null ? 0 : endpoint.hashCode) +
    (disableCertCheck == null ? 0 : disableCertCheck.hashCode) +
    (username == null ? 0 : username.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (clientId == null ? 0 : clientId.hashCode) +
    (topicName == null ? 0 : topicName.hashCode) +
    (topicTemplate == null ? 0 : topicTemplate.hashCode) +
    (payloadFormat == null ? 0 : payloadFormat.hashCode) +
    (payloadTemplate == null ? 0 : payloadTemplate.hashCode);

  @override
  String toString() => 'OutputConfig[url=$url, basicAuthUser=$basicAuthUser, basicAuthPass=$basicAuthPass, customHeaderName=$customHeaderName, customHeaderValue=$customHeaderValue, host=$host, port=$port, key=$key, eventName=$eventName, asIsPayload=$asIsPayload, endpoint=$endpoint, disableCertCheck=$disableCertCheck, username=$username, password=$password, clientId=$clientId, topicName=$topicName, topicTemplate=$topicTemplate, payloadFormat=$payloadFormat, payloadTemplate=$payloadTemplate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (url != null) {
      json[r'url'] = url;
    }
    if (basicAuthUser != null) {
      json[r'basicAuthUser'] = basicAuthUser;
    }
    if (basicAuthPass != null) {
      json[r'basicAuthPass'] = basicAuthPass;
    }
    if (customHeaderName != null) {
      json[r'customHeaderName'] = customHeaderName;
    }
    if (customHeaderValue != null) {
      json[r'customHeaderValue'] = customHeaderValue;
    }
    if (host != null) {
      json[r'host'] = host;
    }
    if (port != null) {
      json[r'port'] = port;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (eventName != null) {
      json[r'eventName'] = eventName;
    }
    if (asIsPayload != null) {
      json[r'asIsPayload'] = asIsPayload;
    }
    if (endpoint != null) {
      json[r'endpoint'] = endpoint;
    }
    if (disableCertCheck != null) {
      json[r'disableCertCheck'] = disableCertCheck;
    }
    if (username != null) {
      json[r'username'] = username;
    }
    if (password != null) {
      json[r'password'] = password;
    }
    if (clientId != null) {
      json[r'clientId'] = clientId;
    }
    if (topicName != null) {
      json[r'topicName'] = topicName;
    }
    if (topicTemplate != null) {
      json[r'topicTemplate'] = topicTemplate;
    }
    if (payloadFormat != null) {
      json[r'payloadFormat'] = payloadFormat;
    }
    if (payloadTemplate != null) {
      json[r'payloadTemplate'] = payloadTemplate;
    }
    return json;
  }

  /// Returns a new [OutputConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OutputConfig fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
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

  static List<OutputConfig> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OutputConfig.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OutputConfig>[];

  static Map<String, OutputConfig> mapFromJson(dynamic json) {
    final map = <String, OutputConfig>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OutputConfig.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OutputConfig-objects as value to a dart map
  static Map<String, List<OutputConfig>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OutputConfig>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OutputConfig.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


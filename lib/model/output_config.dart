//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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
  });

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
     other.topicName == topicName;

  @override
  int get hashCode =>
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
    (topicName == null ? 0 : topicName.hashCode);

  @override
  String toString() => 'OutputConfig[url=$url, basicAuthUser=$basicAuthUser, basicAuthPass=$basicAuthPass, customHeaderName=$customHeaderName, customHeaderValue=$customHeaderValue, host=$host, port=$port, key=$key, eventName=$eventName, asIsPayload=$asIsPayload, endpoint=$endpoint, disableCertCheck=$disableCertCheck, username=$username, password=$password, clientId=$clientId, topicName=$topicName]';

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
    return json;
  }

  /// Returns a new [OutputConfig] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OutputConfig fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OutputConfig(
        url: json[r'url'],
        basicAuthUser: json[r'basicAuthUser'],
        basicAuthPass: json[r'basicAuthPass'],
        customHeaderName: json[r'customHeaderName'],
        customHeaderValue: json[r'customHeaderValue'],
        host: json[r'host'],
        port: json[r'port'],
        key: json[r'key'],
        eventName: json[r'eventName'],
        asIsPayload: json[r'asIsPayload'],
        endpoint: json[r'endpoint'],
        disableCertCheck: json[r'disableCertCheck'],
        username: json[r'username'],
        password: json[r'password'],
        clientId: json[r'clientId'],
        topicName: json[r'topicName'],
    );

  static List<OutputConfig> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OutputConfig>[]
      : json.map((v) => OutputConfig.fromJson(v)).toList(growable: true == growable);

  static Map<String, OutputConfig> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OutputConfig>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = OutputConfig.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OutputConfig-objects as value to a dart map
  static Map<String, List<OutputConfig>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OutputConfig>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OutputConfig.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


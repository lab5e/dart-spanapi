//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library spanapi;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/blobs_api.dart';
part 'api/certificates_api.dart';
part 'api/collections_api.dart';
part 'api/devices_api.dart';
part 'api/fota_api.dart';
part 'api/gateways_api.dart';
part 'api/outputs_api.dart';
part 'api/span_api.dart';

part 'model/activity_event.dart';
part 'model/add_downstream_message_request.dart';
part 'model/any.dart';
part 'model/blob.dart';
part 'model/blob_stats.dart';
part 'model/cellular_io_t_config.dart';
part 'model/cellular_io_t_metadata.dart';
part 'model/certificate_chain_response.dart';
part 'model/certificate_info.dart';
part 'model/clear_firmware_error_response.dart';
part 'model/co_ap_metadata.dart';
part 'model/collection.dart';
part 'model/collection_firmware.dart';
part 'model/collection_stats.dart';
part 'model/create_certificate_request.dart';
part 'model/create_certificate_response.dart';
part 'model/create_collection_request.dart';
part 'model/create_device_request.dart';
part 'model/create_firmware_request.dart';
part 'model/create_gateway_request.dart';
part 'model/create_output_request.dart';
part 'model/delete_downstream_message_response.dart';
part 'model/device.dart';
part 'model/device_certificate_response.dart';
part 'model/device_config.dart';
part 'model/device_metadata.dart';
part 'model/device_stats.dart';
part 'model/firmware.dart';
part 'model/firmware_management.dart';
part 'model/firmware_metadata.dart';
part 'model/firmware_stats.dart';
part 'model/firmware_usage_response.dart';
part 'model/gateway.dart';
part 'model/gateway_cio_t_config.dart';
part 'model/gateway_certificate_response.dart';
part 'model/gateway_config.dart';
part 'model/gateway_custom_config.dart';
part 'model/gateway_device_config.dart';
part 'model/gateway_device_metadata.dart';
part 'model/gateway_inet_config.dart';
part 'model/gateway_metadata.dart';
part 'model/gateway_stats.dart';
part 'model/gateway_status.dart';
part 'model/gateway_type.dart';
part 'model/inet_metadata.dart';
part 'model/list_blob_response.dart';
part 'model/list_collection_response.dart';
part 'model/list_data_response.dart';
part 'model/list_devices_response.dart';
part 'model/list_downstream_messages_response.dart';
part 'model/list_firmware_response.dart';
part 'model/list_gateway_response.dart';
part 'model/list_output_response.dart';
part 'model/list_upstream_messages_response.dart';
part 'model/mqtt_metadata.dart';
part 'model/message_downstream.dart';
part 'model/message_state.dart';
part 'model/message_transport.dart';
part 'model/message_upstream.dart';
part 'model/output.dart';
part 'model/output_config.dart';
part 'model/output_data_message.dart';
part 'model/output_log_entry.dart';
part 'model/output_log_response.dart';
part 'model/output_message_type.dart';
part 'model/output_stats.dart';
part 'model/output_status_response.dart';
part 'model/output_type.dart';
part 'model/retrieve_blob_response.dart';
part 'model/sign_certificate_request.dart';
part 'model/sign_certificate_response.dart';
part 'model/status.dart';
part 'model/system_info_response.dart';
part 'model/udp_metadata.dart';
part 'model/update_collection_request.dart';
part 'model/update_device_request.dart';
part 'model/update_firmware_request.dart';
part 'model/update_gateway_request.dart';
part 'model/update_output_request.dart';
part 'model/verify_certificate_request.dart';
part 'model/verify_certificate_response.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();

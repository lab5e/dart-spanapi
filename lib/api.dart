//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

part 'api/collections_api.dart';
part 'api/datadump_api.dart';
part 'api/devices_api.dart';
part 'api/fota_api.dart';
part 'api/outputs_api.dart';
part 'api/system_api.dart';

part 'model/broadcast_message_request.dart';
part 'model/co_ap_metadata.dart';
part 'model/collection.dart';
part 'model/collection_firmware.dart';
part 'model/collection_firmware_firmware_management.dart';
part 'model/create_firmware_request.dart';
part 'model/data_dump_response.dart';
part 'model/device.dart';
part 'model/dumped_collection.dart';
part 'model/dumped_device.dart';
part 'model/field_mask.dart';
part 'model/firmware.dart';
part 'model/firmware_metadata.dart';
part 'model/firmware_usage_response.dart';
part 'model/list_collection_response.dart';
part 'model/list_data_response.dart';
part 'model/list_devices_response.dart';
part 'model/list_firmware_response.dart';
part 'model/list_output_response.dart';
part 'model/message_send_result.dart';
part 'model/multi_send_message_response.dart';
part 'model/network_metadata.dart';
part 'model/output.dart';
part 'model/output_config.dart';
part 'model/output_data_message.dart';
part 'model/output_data_message_output_message_type.dart';
part 'model/output_log_entry.dart';
part 'model/output_log_response.dart';
part 'model/output_status_response.dart';
part 'model/output_type.dart';
part 'model/protobuf_any.dart';
part 'model/rpc_status.dart';
part 'model/send_message_request.dart';
part 'model/system_info_response.dart';
part 'model/udp_metadata.dart';
part 'model/update_device_request.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();

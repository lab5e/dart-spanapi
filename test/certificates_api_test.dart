//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:spanapi/api.dart';
import 'package:test/test.dart';

/// tests for CertificatesApi
void main() {
  final instance = CertificatesApi();

  group('tests for CertificatesApi', () {
    // Create certificate
    //
    // Create a new device or gateway (client) certificate for an internet-connected device. The devices will use this client certificate to authenticate when sending data via the Internet endpoint. This will create a X509 client certificate with an ECC public key. The key is not stored by the service so keep it in a secure place once it is downloaded. The returned certificate will be valid for 14 days. The key for the certificate is your own responsibility. The client certificate is used in both the TLS, DTLS and gRPC service endpoints.
    //
    //Future<CreateCertificateResponse> createCertificate(String collectionId, CreateCertificateRequest body) async
    test('test createCertificate', () async {
      // TODO
    });

    // Get certificate chain
    //
    // Get the certificate chain for the root CA and intermediate certificates used by the device, gateway and server certificates. It is highly recommended to verify the server certificate when sending data to avoid any man-in-the-middle attacks. This chain will contain all required certificates needed to verify the client certificate.
    //
    //Future<CertificateChainResponse> retrieveCertificateChain(String collectionId, { String gatewayId, String deviceId }) async
    test('test retrieveCertificateChain', () async {
      // TODO
    });

    // Sign certificate
    //
    // Sign a device or gateway (aka client) certificate. The certificate is a X509 Certificate signing request PEM encoded. The certificate will be valid for 14 days and must be renewed.
    //
    //Future<SignCertificateResponse> signCertificate(String collectionId, SignCertificateRequest body) async
    test('test signCertificate', () async {
      // TODO
    });

    // Verify certificate
    //
    // Verify client certificate. If a client certificate fails it can be tricky to pinpoint exactly *why* the certificate isn't accepted. This resource validates the client certificate and returns the error in plain text.
    //
    //Future<VerifyCertificateResponse> verifyCertificate(String collectionId, VerifyCertificateRequest body) async
    test('test verifyCertificate', () async {
      // TODO
    });
  });
}

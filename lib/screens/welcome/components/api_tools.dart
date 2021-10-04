import 'dart:async';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:oauth2/oauth2.dart' as oauth2;
import 'package:oauth2/oauth2.dart';
import 'package:swifty_companion/models/User.dart';

final authorizationEndpoint = Uri.parse('https://api.intra.42.fr/oauth/token');
final identifier =
    'd7859e0cc4a763a744d39e4e4145b661d331c3fe2394c2303df917df49064326';
final secret =
    'c258ca4126d49f46813b7cbac06ec5ffac1bca4ce523815aaa00d79ff3eb11a7';
final storage = new FlutterSecureStorage();

class Api42 {
  late Client client;

  void createConnexion() async {
    final creds1 = await storage.read(key: 'credentials');
    // print(creds1);

    if (creds1 != null) {
      print('reading old creds datas');
      var credentials = oauth2.Credentials.fromJson(creds1);
      if (credentials.isExpired) {
        print('creds expired');
        print('New Api creds');
        client = await oauth2.clientCredentialsGrant(
          authorizationEndpoint,
          identifier,
          secret,
        );

        print("Saving tokens to secure storage");
        await storage.write(
            key: 'credentials', value: client.credentials.toJson());
      } else {
        print('creds valid');
        client =
            oauth2.Client(credentials, identifier: identifier, secret: secret);
      }
    } else {
      print('New Api creds');
      client = await oauth2.clientCredentialsGrant(
        authorizationEndpoint,
        identifier,
        secret,
      );

      print("Saving tokens to secure storage");
      await storage.write(
          key: 'credentials', value: client.credentials.toJson());
    }
  }

  Future<void> checkCredentials() async {
    if (client.credentials.isExpired) {
      print('creds expired');
      print('New Api creds');
      client = await oauth2.clientCredentialsGrant(
        authorizationEndpoint,
        identifier,
        secret,
      );

      print("Saving tokens to secure storage");
      await storage.write(
          key: 'credentials', value: client.credentials.toJson());
    } else {
      print('creds valid');
    }
  }

  Future<List<User>> searchUser(login) async {
    try {
      await checkCredentials();
      var usersReponse = await client.read(
          Uri.parse('https://api.intra.42.fr/v2/users?filter[login]=${login}'));
      // print(response);
      List<User> users = (jsonDecode(usersReponse).cast<Map<String, dynamic>>())
          .map<User>((json) => User.fromJson(json))
          .toList();
      // List users = jsonDecode(response);
      print(users.length);
      return users;
    } catch (e) {
      print('Err searchUser(): $e');
      return [];
    }
  }

  Future<Map<String, dynamic>> getUser(id) async {
    try {
      await checkCredentials();
      var userReponse = await client
          .read(Uri.parse('https://api.intra.42.fr/v2/users/${id}'));
      Map<String, dynamic> userMap = jsonDecode(userReponse);
      return userMap;
    } catch (e) {
      print('Err getUser(): $e');
      return {};
    }
  }

  Future<List<dynamic>> getUserCoalition(id) async {
    try {
      await checkCredentials();
      var coalitionReponse = await client
          .read(Uri.parse('https://api.intra.42.fr/v2/users/${id}/coalitions'));
      List<dynamic> coalitionMap = jsonDecode(coalitionReponse);
      return coalitionMap;
    } catch (e) {
      print('Err getUserCoalition(): $e');
      return [];
    }
  }

  Future<oauth2.Client> createClient() async {
    final storage = new FlutterSecureStorage();

    final creds1 = await storage.read(key: 'credentials');
    // print(creds1);

    if (creds1 != null) {
      print('reading old creds datas');
      var credentials = oauth2.Credentials.fromJson(creds1);
      if (credentials.isExpired) {
        print('creds expired');
      } else {
        print('creds valid');
        return oauth2.Client(credentials,
            identifier: identifier, secret: secret);
      }
    }
    print('New Api creds');
    Client client = await oauth2.clientCredentialsGrant(
      authorizationEndpoint,
      identifier,
      secret,
    );

    print("Saving tokens to secure storage");
    await storage.write(key: 'credentials', value: client.credentials.toJson());

    // print(client.credentials.toJson());
    // final creds2 = await storage.read(key: 'credentials');
    // print(creds2);
    return client;
  }
}

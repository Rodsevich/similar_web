import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:similar_web/src/services/service_base.dart';
import 'package:similar_web/src/similar_web_service_base.dart';

class WebsitesDatasetsService extends BaseService{
  

  Future<dynamic> postWebsiteDataset(
    String url,
    Map<String, dynamic> body,
  ) async {
    try {
      await dio.post(
        url,
        data: jsonEncode(body),
        options: Options(headers: headers),
      );
    } catch (e) {
      rethrow;
    }
  }
}

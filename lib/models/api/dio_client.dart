import 'package:dio/dio.dart';

import '../property.dart';

class DioClient {
  final Dio _dio = Dio();
  final _baseUrl = 'https://fidacom.hennesseytoken.com/api';

  Future<List<Property>> getProperties() async {
    Response propertyData = await _dio.get('$_baseUrl/index/visitor/property');

    return (propertyData.data as List)
        .map((e) => Property.fromJson(e))
        .toList();
  }
}

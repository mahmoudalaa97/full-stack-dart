import 'package:dio/dio.dart';

class NetworkService {
  factory NetworkService() {
    return _instance;
  }
  NetworkService._privateConstructor() {
    _dio = Dio();
  }
  late Dio _dio;
  static final NetworkService _instance = NetworkService._privateConstructor();

  Future<Response> get(String url) async {
    return _dio.get(url);
  }

  Future<Response> post(String url, dynamic data) async {
    return _dio.post(url, data: data);
  }

  Future<Response> put(String url, dynamic data) async {
    return _dio.put(url, data: data);
  }

  Future<Response> delete(String url) async {
    return _dio.delete(url);
  }

  Future<Response> patch(String url, dynamic data) async {
    return _dio.patch(url, data: data);
  }
}

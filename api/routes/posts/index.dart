import 'package:dart_frog/dart_frog.dart';
import 'package:question_api/network/network_service.dart';

Future<Response> onRequest(RequestContext context) async {
  final networkService = NetworkService();
  final response =
      await networkService.get('https://jsonplaceholder.typicode.com/posts');

  return Response.json(body: {'data': response.data});
}

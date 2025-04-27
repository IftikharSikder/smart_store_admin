import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'device_service.g.dart';

@RestApi(baseUrl: 'https://crud.teamrabbil.com/api/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @GET('/ReadProduct')
  Future getDevices();
}

import 'package:get_it/get_it.dart';

GetIt appRegistry = GetIt();

void addSingelton(dynamic service, [ String instanceName]) {
  appRegistry.registerSingleton(service, instanceName);
}

void addFactory(Function function, [String functionName]) {
  appRegistry.registerFactory(function, functionName);
}

void addLazySingelton(Function function, [String instanceName]) {
  appRegistry.registerLazySingleton(function, instanceName);
}
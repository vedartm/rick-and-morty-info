import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@lazySingleton
class NetworkInfo {
  const NetworkInfo(this.connectionChecker);

  final InternetConnectionChecker connectionChecker;

  Future<bool> get isConnected => connectionChecker.hasConnection;
}

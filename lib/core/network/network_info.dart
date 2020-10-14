import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NetworkInfo {
  const NetworkInfo(this.connectionChecker);

  final DataConnectionChecker connectionChecker;

  Future<bool> get isConnected => connectionChecker.hasConnection;
}

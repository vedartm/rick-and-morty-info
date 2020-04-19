import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

abstract class INetworkInfo {
  Future<bool> get isConnected;
}

@lazySingleton
@RegisterAs(INetworkInfo)
class NetworkInfo implements INetworkInfo {
  const NetworkInfo(this.connectionChecker);

  final DataConnectionChecker connectionChecker;

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}

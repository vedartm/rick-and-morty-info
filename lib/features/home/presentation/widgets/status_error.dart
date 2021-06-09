import 'package:flutter/material.dart';

import '../../../../core/error/exceptions.dart';

class StatusError extends StatelessWidget {
  const StatusError({
    Key? key,
    required this.exception,
  }) : super(key: key);

  final Exception exception;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(_getMessageFromException()),
    );
  }

  String _getMessageFromException() {
    if (exception is ServerException) {
      return 'Sorry! Server error occured';
    } else if (exception is CacheException) {
      return 'We need internet connection to get characters';
    } else {
      return 'Some unexpected error occured!';
    }
  }
}

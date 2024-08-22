import 'package:liife/app/features/shared/sdk/lib/api.dart';

class LoggedInActionPayload {
  final User user;
  final String? redirectUrl;

  LoggedInActionPayload(Map<String, dynamic> map)
      : user = map['user'],
        redirectUrl = map['redirectUrl'];

  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(), // Assuming UserWithRelations has a toJson method
      'redirectUrl': redirectUrl,
    };
  }
}

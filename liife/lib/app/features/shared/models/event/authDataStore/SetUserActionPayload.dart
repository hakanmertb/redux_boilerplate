import 'package:liife/app/features/shared/sdk/lib/api.dart';

class SetUserActionPayload {
  final User user;

  SetUserActionPayload(Map<String, dynamic> map) : user = map['user'];

  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(),
    };
  }
}

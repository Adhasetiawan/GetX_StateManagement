import 'dart:developer';

import 'package:second_app/api/api.dart';

class homeModel {

  Future<dynamic> homeMapper({
    required String name, job
  }) async {
    final dataFeedback = {
      "name" : name,
      "job" : job
    };

    var r = await apiService().postMethod("api/users", dataFeedback);
    print(r);

    return r;
  }
}
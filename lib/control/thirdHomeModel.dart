import 'package:second_app/api/api.dart';

class thirdHomeModel{
  Future<dynamic> thirdHomeMapper ({required int page})async{
    
    var r = await apiService().apiJSONGet('api/users?page='+page.toString());
    // print(r);

    return r;
  }
}
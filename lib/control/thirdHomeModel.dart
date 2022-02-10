import 'package:second_app/api/api.dart';

class thirdHomeModel{
  Future<dynamic> thirdHomeMapper ()async{
    
    var r = await apiService().apiJSONGet('api/unknown');
    print(r);

    return r;
  }
}
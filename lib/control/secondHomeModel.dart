import 'package:second_app/api/api.dart';

class secondHomeModel{
  Future<dynamic> secondHomeMapper({required int id})async{

    var r = await apiService().apiJSONGet("api/users/"+id.toString());
    // print (r);

    return r;
  }
}
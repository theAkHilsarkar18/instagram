
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceClass
{
  Future<void> createSharedPreference(String userId, String password, bool isLogin)
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("id1", userId);
    sharedPreferences.setString("ps1", password);
    sharedPreferences.setBool("b1", isLogin);
  }

  Future<Map> readSharedPreference()
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? userId = sharedPreferences.getString("id1");
    String? password = sharedPreferences.getString("ps1");
    bool? isLogin = sharedPreferences.getBool("b1");
    Map m1 = {"id1":userId,"ps1":password,"b1":isLogin};
    return m1;
  }


}
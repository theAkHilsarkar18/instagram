
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceClass
{
  Future<void> createSharedPreference(String userId, String password)
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("id1", userId);
    sharedPreferences.setString("ps1", password);
  }

  Future<Map> readSharedPreference()
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? userId = sharedPreferences.getString("id1");
    String? password = sharedPreferences.getString("ps1");
    Map m1 = {"id1":userId,"ps1":password};
    return m1;
  }
}
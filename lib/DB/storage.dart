import 'package:shared_preferences/shared_preferences.dart';

class Storage {

    final Future<SharedPreferences> store =  SharedPreferences.getInstance();

              add(String value) async{
                var  storage = await store;
                storage.setString("Emails", value);
              }

              take()async{
                var storage = await store;
                return storage.getString("Emails");
              }
}
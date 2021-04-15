import 'package:flutter_app/db/database_provider.dart';


class City {
  int id;
  String name;
  String state;
  

  City({this.id, this.name, this.state});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      DatabaseProvider.COLUMN_NAME: name,
      DatabaseProvider.COLUMN_STATE: state,

    };

    if (id != null) {
      map[DatabaseProvider.COLUMN_ID] = id;
    }

    return map;
  }

  City.fromMap(Map<String, dynamic> map) {
    id = map[DatabaseProvider.COLUMN_ID];
    name = map[DatabaseProvider.COLUMN_NAME];
    state = map[DatabaseProvider.COLUMN_STATE];

  }
}
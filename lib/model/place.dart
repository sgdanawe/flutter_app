import 'package:flutter_app/db/database_provider.dart';


class Place {
  int id;
  String name;
  String state;
  String description;
  

  Place({this.id, this.name, this.state, this.description});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      DatabaseProvider.COLUMN_NAME: name,
      DatabaseProvider.COLUMN_STATE: state,
      DatabaseProvider.COLUMN_description: description,

    };

    if (id != null) {
      map[DatabaseProvider.COLUMN_ID] = id;
    }

    return map;
  }

  Place.fromMap(Map<String, dynamic> map) {
    id = map[DatabaseProvider.COLUMN_ID];
    name = map[DatabaseProvider.COLUMN_NAME];
    state = map[DatabaseProvider.COLUMN_STATE];
    description = map[DatabaseProvider.COLUMN_description];

  }
}
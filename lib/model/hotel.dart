import 'package:flutter_app/db/database_provider.dart';


class Hotel {
  int id;
  String name;
  String adress;
  String description;
  

  Hotel({this.id, this.name, this.adress, this.description});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      DatabaseProvider.COLUMN_NAME: name,
      DatabaseProvider.COLUMN_ADDRESS: adress,
      DatabaseProvider.COLUMN_description: description,

    };

    if (id != null) {
      map[DatabaseProvider.COLUMN_ID] = id;
    }

    return map;
  }

  Hotel.fromMap(Map<String, dynamic> map) {
    id = map[DatabaseProvider.COLUMN_ID];
    name = map[DatabaseProvider.COLUMN_NAME];
    adress = map[DatabaseProvider.COLUMN_ADDRESS];
    description = map[DatabaseProvider.COLUMN_description];

  }
}
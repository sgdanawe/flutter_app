import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/TripUp/components/travelcard.dart';
import 'package:flutter_app/components/rounded_input_field.dart';
import 'package:flutter_app/Components/rounded_button.dart';
import 'package:flutter_app/Screens/HotelPlaces/components/Jabalpur.dart';
import 'package:flutter_app/Screens/HotelPlaces/components/Delhi.dart';

// class ServerIpText extends StatefulWidget {
//   final String serverIP;
//
//   const ServerIpText ({ Key key, this.serverIP }): super(key: key);
//
//   @override
//   _ServerIpTextState createState() => _ServerIpTextState();
// }
//
// class _ServerIpTextState extends State<ServerIpText> {
//   @override
//   Widget build(BuildContext context) {
//     return Text(widget.serverIP);
//   }
// }

class Hotel_Places_screen extends StatefulWidget {

  final String city;

  const Hotel_Places_screen ({ Key key, this.city }): super(key: key);

  @override
  _TravelAppState createState() => _TravelAppState();

}



class _TravelAppState extends State<Hotel_Places_screen> {
  //here i'm going to add a list of image url that I collected from the internet
  //you can use the image that you want, just copy and paste their Urls here inside the list

  //sometime we can face some http request erreur if the owner of the picture delted it or the url is not available
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        title: Text(
          widget.city,
          textAlign: TextAlign.left,
        )
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Now let's add some elevation to our text field
            //to do this we need to wrap it in a Material widget
            SizedBox(height: 30.0),
            //Now let's Add a Tabulation bar
            DefaultTabController(
              length: 2,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Color(0xFFFE8C68),
                      unselectedLabelColor: Color(0xFF555555),
                      labelColor: Color(0xFFFE8C68),
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "Hotels",
                        ),
                        Tab(
                          text: "Places",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 400.0,
                      child : (widget.city == "Jabalpur") ? Jabalpur() : (widget.city == "Delhi") ? Delhi() : Jabalpur(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/TripUp/components/travelcard.dart';

Widget Jabalpur(){

  List<String> urls = [
    "https://resofrance.eu/wp-content/uploads/2018/09/hotel-luxe-mandarin-oriental-paris.jpg",
    "https://lh3.googleusercontent.com/proxy/wTkD1USQGpbVXzZFNLCZBDCL1OQS1bFzSgPa44cHwiheaY9DpoqMdNjBgEJcCIZSQeSkCO-2q5gfuhtnuz4cDhtpansOcWos093YsGvogdQqWnpWlA",
    "https://images.squarespace-cdn.com/content/v1/57d5245815d5db80eadeef3b/1558864684068-1CX3SZ0SFYZA1DFJSCYD/ke17ZwdGBToddI8pDm48kIpXjvpiLxnd0TWe793Q1fcUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcZwk0euuUA52dtKj-h3u7rSTnusqQy-ueHttlzqk_avnQ5Fuy2HU38XIezBtUAeHK/Marataba+Safari+lodge",
    "https://lh3.googleusercontent.com/proxy/ovCSxeucYYoir_rZdSYq8FfCHPeot49lbYqlk7nXs7sXjqAfbZ2uw_1E9iivLT85LwIZiGSnXuqkdbQ_xKFhd91M7Y05G94d",
    "https://q-xx.bstatic.com/xdata/images/hotel/max500/216968639.jpg?k=a65c7ca7141416ffec244cbc1175bf3bae188d1b4919d5fb294fab5ec8ee2fd2&o=",
    "https://hubinstitute.com/sites/default/files/styles/1200x500_crop/public/2018-06/photo-1439130490301-25e322d88054.jpeg?h=f720410d&itok=HI5-oD_g",
    "https://cdn.contexttravel.com/image/upload/c_fill,q_60,w_2600/v1549318570/production/city/hero_image_2_1549318566.jpg",
    "https://www.shieldsgazette.com/images-i.jpimedia.uk/imagefetch/https://jpgreatcontent.co.uk/wp-content/uploads/2020/04/spain.jpg",
    "https://www.telegraph.co.uk/content/dam/Travel/2017/November/tunisia-sidi-bou-GettyImages-575664325.jpg",
    "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg"
  ];

  return TabBarView(
    children: [
      //Now let's create our first tab page
      Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [

            //Now let's add and test our first card
            travelCard(urls[2], "Maharaj Hotel", "P1", 3),
            travelCard(urls[0],"Patel Hotel", "P2", 4),
            travelCard(urls[5], "WA Hotel", "P3", 5),
            travelCard(urls[2], "Diamond Hotel", "P4", 4),
          ],
        ),
      ),
      Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            // //Here you can add what ever you want
            travelCard(urls[6], "Visit Delhi Haat", "Sardarganj", 4),
            travelCard(urls[8], "Visit Chal Baazar", "Indira nagar", 4),
          ],
        ),
      ),
    ],
  );

}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import 'colors_theme.dart';
import 'models/cls_notification.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final List<Notif> list_notif = [
    Notif(
        Icon(LineAwesomeIcons.glass, color: ColorsTheme.primary1,),
        "Lorem ipsum dolor sit amet?",
        "Today, 06:03 AM",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        ""
    ),
    Notif(
        Icon(LineAwesomeIcons.car, color: ColorsTheme.primary1),
        "Lorem ipsum dolor sit amet?",
        "Today, 06:03 AM",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://www.avia.travel/images/banner/13D_EAST_EUROPE_PLUS_KUTNA_HORA_PARNDORF_OUTLET.jpg"),
    Notif(
        Icon(LineAwesomeIcons.car, color: ColorsTheme.primary1),
        "Lorem ipsum dolor sit amet?",
        "Today, 06:03 AM",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "https://www.avia.travel/images/banner/13D_EAST_EUROPE_PLUS_KUTNA_HORA_PARNDORF_OUTLET.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 52, left: 22, right: 22, ),
              child: Column(
                children: <Widget>[
                  Text(
                    "Notifications",
                    style: TextStyle(
                      color: ColorsTheme.text1,
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                      ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24,),
            buildList(context, list_notif)

          ],
        ),
      ),
    );
  }

  Widget buildList(BuildContext context, listNotifications){
    return ListView.builder(
      padding: EdgeInsets.only(top: 0),
      scrollDirection: Axis.vertical,
      itemCount: listNotifications.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index){
        Notif item = listNotifications[index];
        return InkWell(
          onTap: (){

          },
          child: Padding(
            padding: const EdgeInsets.only(left: 22, right: 22, top: 32),
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: ColorsTheme.bag1,
                        shape: BoxShape.circle
                      ),
                      child: item.icons,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.43,
                                child: Text(
                                  item.header,
                                  softWrap: true,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                  ),
                                ),
                              ),
                              
                              SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                              
                              Container(
                                width: MediaQuery.of(context).size.width * 0.30,
                                child: Text(
                                  item.time,
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: ColorsTheme.text2
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height:16),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.74,
                            child: Text(
                              item.body,
                              textAlign: TextAlign.justify,
                              softWrap: true,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                item.image == "" || item.image == null ? Container() : 
                Padding(
                  padding: const EdgeInsets.only(top:16),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      elevation: 2,
                      color: ColorsTheme.bag1,
                      child:  ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl: item.image,
                          fit: BoxFit.cover,
                        ),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Divider(height:1)
              ],
            ),
          )
        );
      },
    );
  }
}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'colors_theme.dart';

import 'models/cls_home.dart';

class SearchHoliday extends StatefulWidget {
  List<Discovery> list_discovery;
  SearchHoliday(
    {Key key, this.list_discovery,}
  ):super(key:key);

  @override
  _SearchHolidayState createState() => _SearchHolidayState();
}

class _SearchHolidayState extends State<SearchHoliday> {

  List<Discovery> list_discovery_new;
  
  _onChange(String value){
    setState(() {
     list_discovery_new = value.isNotEmpty ? widget.list_discovery.where( (discovery) => 
        discovery.header.toLowerCase().contains(value.toLowerCase()) ||
        discovery.sub_header.toLowerCase().contains(value.toLowerCase())
     ).toList() : [];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    list_discovery_new = [];
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 52, left: 22, right: 22, ),
            child: Column(
              children: <Widget>[
                Text(
                  "Search Holiday Packages",
                  style: TextStyle(
                    color: ColorsTheme.text1,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                    ),
                ),

                
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: ColorsTheme.bag1,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.search, 
                    color: ColorsTheme.primary1, 
                    size: 20,
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      cursorColor: ColorsTheme.primary1,
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorsTheme.text1
                      ),
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        hintText: "Search ...",
                        hintStyle: TextStyle(
                          color: ColorsTheme.text2
                        ),
                        border: InputBorder.none
                      ),
                      onChanged: (value){
                        _onChange(value);
                      },
                    ),
                  )

                ],
              ),
            ),
          ),

          Expanded(child: buildDiscovery(context, list_discovery_new)),
        ],
      ),
    );
  }

  Widget buildDiscovery(BuildContext context, List list_discovery){
    return SingleChildScrollView(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 0),
        scrollDirection: Axis.vertical,
        itemCount: list_discovery.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index){
          Discovery item = list_discovery[index];
          return InkWell(
            onTap: (){

            },
            child: Padding(
              padding: EdgeInsets.only(left: 22, right: 22, top: 4, ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 64,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 2,
                          color: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: CachedNetworkImage(
                              imageUrl: item.image,
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left:6.0, right: 6.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                item.header,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: ColorsTheme.text1,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text(
                                item.sub_header,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: ColorsTheme.primary1
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text(
                                item.body,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: ColorsTheme.text2,
                        
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Icon(
                        LineAwesomeIcons.angle_right, 
                        color: ColorsTheme.text2, 
                        size: 14,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Divider(height: 1,),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

}
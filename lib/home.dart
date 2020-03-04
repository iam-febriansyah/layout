import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import 'colors_theme.dart';
import 'search_holiday.dart';

import 'models/cls_home.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> list_banner = [
    "https://www.avia.travel/images/banner/13D_EAST_EUROPE_PLUS_KUTNA_HORA_PARNDORF_OUTLET.jpg",
    "https://www.avia.travel/images/banner/9D_MIRACLE_HOLYLAND_+_PETRA.jpg",
    "https://www.avia.travel/images/banner/6D_BEST_DEAL_AUSSIE_TWIN_CITIES_+_TESSELAAR_KABLOOM_FESTIVAL.jpg",
    "https://www.avia.travel/images/banner/7D_GDAY_NORTH_SOUTH_NEW_ZEALAND.jpg",
    "https://www.avia.travel/images/banner/8D_BEAUTIFUL_HAILUOGOU_+_LESHAN_EMEISHAN.jpg"
  ];

  // List list = [ColorsTheme.primary1,ColorsTheme.primary2,ColorsTheme.primary3];
  // Random _random = new Random();

  final List<MenuHome> list_menu = [
    MenuHome(
      "Flight Ticket",
      Icon(LineAwesomeIcons.plane, color: ColorsTheme.primary1), 
      "Register"
    ),
    MenuHome(
      "Train Ticket",
      Icon(LineAwesomeIcons.train, color: ColorsTheme.primary1), 
      "Camera"
    ),
    MenuHome(
      "Bus Ticket",
      Icon(LineAwesomeIcons.bus, color: ColorsTheme.primary1),
      "Camera",
    ),
    MenuHome(
      "Car Rental",
      Icon(LineAwesomeIcons.car, color: ColorsTheme.primary1), 
      "Camera"
    ),
    MenuHome(
      "Hotel", 
      Icon(LineAwesomeIcons.hotel, color: ColorsTheme.primary1),
      "Camera"
    ),
    MenuHome(
      "Eats", 
      Icon(LineAwesomeIcons.glass, color: ColorsTheme.primary1),
      "Camera"),
    MenuHome(
      "Cinema",
      Icon(LineAwesomeIcons.file_movie_o, color: ColorsTheme.primary1),
      "Camera"
    ),
    MenuHome(
      "Internet",
      Icon(LineAwesomeIcons.stack_overflow, color: ColorsTheme.primary1),
      "Camera"
    ),
  ];

  final List<WorldTrip> list_world_trip = [
    WorldTrip(
        "Singapore Tourism and Travel Guide",
        "Singapore Tourism & Travel Guide",
        "It is no secret that Singapore is now a burgeoning tourist spot owing to its fast-paced economy, lush greenery, immaculate cleanliness and vast number of attractions. To Singapore tourism’s credit, the island city is more than just its many attractions. It’s constantly evolving and reinventing itself according to the time it lives in. Singapore, a melting pot of cultures, owes its variety to the diverse range of people inhabiting the island city and its resultant pervading atmosphere. Anyone who has experienced Singapore tourism will know that the culture of Singapore is all inclusive –Buddhists, Muslims, Taoists, Catholics, Hindus and Christians blend to form the rich social fabric of the beautiful, sunny island. Singapore tourism caters to a wide category of tourists – thrill seekers, epicureans, tree huggers and solace hunters. If you’ve got one of the glittering skylines of Singapore saved as your screensaver to appease your disgruntled travel bug, then get your holidays lined up and your tickets booked for a trip the Lion City.",
        "https://cdn1.tripoto.com/media/filter/tst/img/840131/Image/1580472402_1.jpg",
        // LatLng(1.356443, 103.812215)
        ),
    WorldTrip(
        "Europe Tourism and Travel Guide",
        "Europe Tourism & Travel Guide",
        "A timeless destination, Europe has been a favourite for decades and Europe tourism will continue to enthrall travellers for ages to come. Some have taken countless Europe trips to discover its treasures, while others have simply found home in its artistic cities and charming villages. But what remains is the love for this captivating continent. Made up of 44 countries, Europe is typically divided into four different parts for ease of communication. The four sections are divided geographically into the south, north, western and eastern Europe. Owing to the popularity of Europe tourism, most people make the mistake of being over-ambitious and including too many countries in a single trip. However, the most important thing to remember before booking your Europe trip is that you must pace out your Europe trip instead of trying to cover the entire continent in one vacation. Also, if it’s your first-ever vacation across the continent, you must plan for your Europe trip according to your interests and budget. Whether it is the alps of Switzerland that call out to you or the architectural wonders of France – ensure that you have enough time to explore the most beautiful places that Europe tourism has to offer. Most travellers also recommend thoroughly researching about Europe tourism before booking tickets for a Europe trip on a whim. Decide which side of the continent you’d like to cover and how many days you have, after which you can plan your itinerary according to the best places to visit in Europe. Not only will this give you a chance to explore the continent, but it’ll ensure that you can plan your future Europe trips with ease.",
        "https://cdn1.tripoto.com/media/filter/tst/img/840131/Image/1580472419_2.jpg",
        // LatLng(51.825683, 15.426117)
        ),
    WorldTrip(
        "Sri Lanka Tourism and Travel Guide",
        "Sri Lanka Tourism & Travel Guide",
        "Sri Lanka tourism has gone through drastic changes in the last few decades. From a fairly unexplored destination to one of the most loved countries, the island has made its way into the itineraries of world travellers. Natural beauty, timeless charm, hoards of elephants, tea plantations and UNESCO World Heritage sites come together to take you on what travellers call “an unexpected journey”. The charming island nation of Sri Lanka is located in the Indian Ocean, southeast of the Arabian Sea. Blessed with a rich history of over 3,000 years, it is one of the most important Buddhist centres in the world. Taking you through the architectural marvels of Galle and Trincomalee, encouraging you to soak in the beauty of Kandy's sacred temples and nudging the explorer in you to traverse through verdant national parks – Sri Lanka tourism brings to life every traveller’s dream. Rising above its conflicted past, the country has emerged stronger and is in the midst of a huge wave of development. Connecting its villages with urban towns, the country offers travellers an intriguing mix of natural beauty, culture and spirituality. A country is made of its people and even though the perennial conflict between Tamilians and Sinhalese remains strong – as a visitor you’ll only receive warmth and love from the locals. A melting pot of cultures and ethnicities is in fact what gives Sri Lanka its unique identity and has boosted Sri Lanka tourism. Despite numerous challenges and hardships, Sri Lanka tourism continues to thrive and people from across the world continue to visit this land of archaic legends and palm-fringed beaches.",
        "https://cdn1.tripoto.com/media/filter/tst/img/840131/Image/1580472434_3.jpg",
        // LatLng(7.496902, 80.700134)
        ),
    WorldTrip(
        "Malaysia Tourism and Travel Guide",
        "Malaysia Tourism & Travel Guide",
        "Cities with high rises, pristine beaches, rugged mountains, islands out of a dream, and forests full of exotic wildlife – Malaysia tourism has it all. People from all over the world come to witness Malaysia tourism’s delightful amalgam of diverse Asian ethnicities and cultures, and the fusion of modernity and rural charm. You can see two sides to Malaysia tourism on your trip: Peninsular Malaysia, the more populated part of the country, which is highly urbanized with skyscrapers towering high and across the South China Sea, and East Malaysia, which is closer to nature, and is covered with dense forests. Malaysia tourism offers a range of activities to its visitors. You can take food tours, go on treks, celebrate a great number of festivals and even experience the gondola lift which until recently was the highest in Asia. If you are looking to go on an international trip on a budget, Malaysia tourism should be one of your top contenders.",
        "https://cdn1.tripoto.com/media/filter/tst/img/840131/Image/1580472448_4.jpg",
        // LatLng(3.184850, 101.883956)
        ),
    WorldTrip(
        "New Zealand Tourism and Travel Guide",
        "New Zealand Tourism & Travel Guide",
        "With jagged mountains, undulating pastures, other-worldly fiords, active volcanic zones, pristine trout-filled lakes, unspoilt sandy beaches, turbulent rivers, lush green forests, and astoundingly hi-tech cities, New Zealand tourism is one of the most sought after destinations of the world. For some it’s a dream destination, and for others it’s the place where they’d love to spend the rest of their lives. This stunning island nation, comprising the North Island and South Island, sits serenely in the Pacific Ocean around 2,000km from Australia’s east coast. Due to its geographical location, the seasons and climate in New Zealand are different from those in the Northern Hemisphere. One unique thing about New Zealand tourism is that its climate is highly variable; so much so that you may even experience almost all seasons in one single day! The sparsely populated islands of New Zealand are home to some of the most breathtaking forests which are inhabited by a wide variety of plants including the likes of kauri tree, which is considered a rare species in the world. When it comes to the marine life, penguins, sea lions, seals, and albatrosses can be spotted in the region of Otago Peninsula. The short-tailed bat, the alpine parrot commonly known as kea, the critically endangered Hamilton’s frog, the tuatara, and the indigenous flightless kiwi, which is also the national symbol of New Zealand, are some of the many unique birds and animals in this country. New Zealand tourism, however, is not limited to just its natural wonders. In fact, the kiwis boast of enviable modern facilities including a hi-tech transport network which helps in better connectivity between New Zealand cities and towns. And when it comes to adventure, New Zealand tourism has it all. Places such as Queenstown, Wanaka, Waitomo, Rotorua and others offer various high-adrenaline activities including jet-boating through shallow gorges, bungee jumping, mountain biking, camping, rafting, surfing, hiking, rock climbing, trekking, bungee jumping, glacier hiking, hot air ballooning and skydiving. Besides, the Māori culture plays an important role in New Zealand tourism, for it gives visitors abundant opportunities to know and experience the history and evolution of local traditions and customs. Thanks to Maori culture, there are a number of lip-smacking authentic cuisines you can try during your New Zealand tour, including the famous New Zealand pie.",
        "https://cdn1.tripoto.com/media/filter/tst/img/840131/Image/1580472464_5.jpg",
        // LatLng(-42.776108, 172.567792)
        )
  ];

  final List<Discovery> list_discovery = [
    Discovery(
        "Magical South India",
        "7 Days · 6 Nights",
        "This package is suitable for couples. Sightseeing spots include Ooty Lake, Mysore Palace, Dubare Elephant Camp and many more. Visit the top attractions and spend quality time together to make it a trip to remember. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1579180113_1.jpg"),
     Discovery(
        "Magical South India",
        "7 Days · 6 Nights",
        "This package is suitable for couples. Sightseeing spots include Ooty Lake, Mysore Palace, Dubare Elephant Camp and many more. Visit the top attractions and spend quality time together to make it a trip to remember. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1579180113_1.jpg"),
    Discovery(
        "Magical South India",
        "7 Days · 6 Nights",
        "This package is suitable for couples. Sightseeing spots include Ooty Lake, Mysore Palace, Dubare Elephant Camp and many more. Visit the top attractions and spend quality time together to make it a trip to remember. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1579180113_1.jpg"),
    Discovery(
        "Magical South India",
        "7 Days · 6 Nights",
        "This package is suitable for couples. Sightseeing spots include Ooty Lake, Mysore Palace, Dubare Elephant Camp and many more. Visit the top attractions and spend quality time together to make it a trip to remember. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1579180113_1.jpg"),
    Discovery(
        "Magical South India",
        "7 Days · 6 Nights",
        "This package is suitable for couples. Sightseeing spots include Ooty Lake, Mysore Palace, Dubare Elephant Camp and many more. Visit the top attractions and spend quality time together to make it a trip to remember. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1579180113_1.jpg"),
     Discovery(
        "Magical South India",
        "7 Days · 6 Nights",
        "This package is suitable for couples. Sightseeing spots include Ooty Lake, Mysore Palace, Dubare Elephant Camp and many more. Visit the top attractions and spend quality time together to make it a trip to remember. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1579180113_1.jpg"),
    Discovery(
        "Magical South India",
        "7 Days · 6 Nights",
        "This package is suitable for couples. Sightseeing spots include Ooty Lake, Mysore Palace, Dubare Elephant Camp and many more. Visit the top attractions and spend quality time together to make it a trip to remember. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1579180113_1.jpg"),
    Discovery(
        "Magical South India",
        "7 Days · 6 Nights",
        "This package is suitable for couples. Sightseeing spots include Ooty Lake, Mysore Palace, Dubare Elephant Camp and many more. Visit the top attractions and spend quality time together to make it a trip to remember. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1579180113_1.jpg"),
    Discovery(
        "Russia With Almaty",
        "9 Days · 8 Nights",
        "Go on a budget tour and experience the highlights of Russia with Almaty. This packages takes you through Moscow, St. Petersburg and Almaty. Almaty is Kazakhstan’s largest metropolis, is set in the foothills ofthe Trans-Ili Alatau mountains. It served as the country’s capital until 1997 and remains Kazakhstan’s trading and cultural hub. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1579177746_russia_2.jpg"),
    Discovery(
        "Unexplored Scandinavia",
        "13 Days · 12 Nights",
        "Scandinavia is a region in Northern Europe, with strong historical, cultural and linguistic ties. The term Scandinavia in local usage covers the three kingdoms of Denmark, Norway and Sweden. The majority national languages of these three belong to the Scandinavian dialect continuum and are mutually intelligible North Germanic languages. In English usage, Scandinavia also sometimes refers to the Scandinavian Peninsula, or to the broader region including Finland and Iceland, which is always known locally as the Nordic countries. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1429685/Image/1580114943_northern_europe.jpg"),
    Discovery(
        "Adventure In Dubai",
        "6 Days · 5 Nights",
        "Airport transfers by Lexus, We've got deals on flights to Dubai for you. Get flat INR 500 off on your Dubai visa. From experiencing the deserts to chilling on the cruise, from visiting popular tourist places to enjoying a comfortable stay, this package is a must-pick if you are planning a trip to Dubai with your loved ones. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1580370529_dubai_new_6.jpg"),
    Discovery(
        "Family Special: Singapore",
        "4 Days · 3 Nights",
        "Blogger, zumba instructor and mommy - Avantika Kukreti wears many hats effortlessly! Follow her experiences in Singapore with her little one as they go bungee jumping at Sentosa, take a bicycle tour of the city's classic landmarks, experience simulated skydiving, try their hand at local Singaporean cuisine and so much more. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1577359712_11.jpg"),
    Discovery(
        "Russia With Almaty",
        "9 Days · 8 Nights",
        "Go on a budget tour and experience the highlights of Russia with Almaty. This packages takes you through Moscow, St. Petersburg and Almaty. Almaty is Kazakhstan’s largest metropolis, is set in the foothills ofthe Trans-Ili Alatau mountains. It served as the country’s capital until 1997 and remains Kazakhstan’s trading and cultural hub. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1579177746_russia_2.jpg"),
    Discovery(
        "Unexplored Scandinavia",
        "13 Days · 12 Nights",
        "Scandinavia is a region in Northern Europe, with strong historical, cultural and linguistic ties. The term Scandinavia in local usage covers the three kingdoms of Denmark, Norway and Sweden. The majority national languages of these three belong to the Scandinavian dialect continuum and are mutually intelligible North Germanic languages. In English usage, Scandinavia also sometimes refers to the Scandinavian Peninsula, or to the broader region including Finland and Iceland, which is always known locally as the Nordic countries. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1429685/Image/1580114943_northern_europe.jpg"),
    Discovery(
        "Adventure In Dubai",
        "6 Days · 5 Nights",
        "Airport transfers by Lexus, We've got deals on flights to Dubai for you. Get flat INR 500 off on your Dubai visa. From experiencing the deserts to chilling on the cruise, from visiting popular tourist places to enjoying a comfortable stay, this package is a must-pick if you are planning a trip to Dubai with your loved ones. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1580370529_dubai_new_6.jpg"),
    Discovery(
        "Family Special: Singapore",
        "4 Days · 3 Nights",
        "Blogger, zumba instructor and mommy - Avantika Kukreti wears many hats effortlessly! Follow her experiences in Singapore with her little one as they go bungee jumping at Sentosa, take a bicycle tour of the city's classic landmarks, experience simulated skydiving, try their hand at local Singaporean cuisine and so much more. Check out the detailed itinerary below for more information.",
        "https://cdn1.tripoto.com/media/filter/tst/img/1524784/Image/1577359712_11.jpg"),
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
              padding: EdgeInsets.only(
                top: 52, 
                bottom: 24, 
                left: 22, 
                right: 22
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Thue | Maret 03, 2020",
                            style: TextStyle(
                              color: ColorsTheme.text2,
                              fontSize: 12,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              Text(
                                "Hi, ",
                                style: TextStyle(
                                  color: ColorsTheme.text2,
                                  fontSize: 22
                                ),
                              ),
                              Text(
                                "Febriansyah",
                                style: TextStyle(
                                  color: ColorsTheme.text1,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: ColorsTheme.bag1,
                          shape: BoxShape.circle
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            "assets/images/user.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 24,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => SearchHoliday(list_discovery: list_discovery,)
                        )
                      );
                    },
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
                          Text(
                            "Search ...",
                            style: TextStyle(
                              fontSize: 14,
                              color: ColorsTheme.text2
                            )
                          )

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            buildBanner(context, list_banner),
            Padding(
              padding: const EdgeInsets.only(top: 1, bottom: 16, left: 16, right: 16),
              child: buildMenu(context, list_menu),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 24, right: 22),
              child: Text(
                "Place To Visit This Winter",
                style: TextStyle(
                  color: ColorsTheme.text1,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: buildWorldTrip(context, list_world_trip)
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 8, left: 24, right: 22),
              child: Text(
                "International Holiday Packages",
                style: TextStyle(
                  color: ColorsTheme.text1,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding( padding: EdgeInsets.only(bottom: 20), child: buildDiscovery(context, list_discovery))
          ],
        ),
      ),
    );
  }

  Widget buildBanner(BuildContext context, List<String> banner){
    return CarouselSlider(
      aspectRatio: 9 / 4,
      viewportFraction: 0.92,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 5),
      autoPlayAnimationDuration: Duration(milliseconds: 500),
      autoPlayCurve: Curves.fastOutSlowIn,
      pauseAutoPlayOnTouch: Duration(seconds: 5),
      enlargeCenterPage: true,
      // onPageChanged: callbackFunction,
      scrollDirection: Axis.horizontal, 
      items: banner.map((index){
        return Builder(
          builder: (context){
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                elevation: 2,
                color: ColorsTheme.bag1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: index,
                    fit: BoxFit.cover,
                  ),
                )
              ),
            );
          },
        );
      }).toList()
    );
  }

  Widget buildMenu(BuildContext context, List listmenu){
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 4,
      mainAxisSpacing: 28,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(listmenu.length, (index){
        MenuHome item = listmenu[index];
        return InkWell(
          onTap: (){

          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(height: 8,),
              Text(
                item.menu,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  // color: 
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget buildWorldTrip(BuildContext context, List world_trip){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.only(top: 8),
      shrinkWrap: true,
      itemCount: world_trip.length,
      itemBuilder: (context, index){
        WorldTrip item = world_trip[index];
        bool first = index == 0;
        bool last = world_trip.length == (index + 1);
        return Container(
          margin: EdgeInsets.only(left: first ? 16 : 0, right: last ? 16 : 0),
          padding: EdgeInsets.only(left: 4, right: 4),
          width: MediaQuery.of(context).size.width * 0.4,
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
        );
      },
    );
  }

  Widget buildDiscovery(BuildContext context, List list_discovery){
    return ListView.builder(
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
    );
  }

}
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var cardTextStyle = TextStyle(
        fontFamily: 'Lobster',
        fontSize: 14,
        color: Color.fromRGBO(53, 63, 53, 1));

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/download.jpg'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://th.bing.com/th/id/OIP.RfO39IKqaJDgwQ93wQCEnAHaE8?pid=ImgDet&rs=1'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Salman Ahmed',
                              style: TextStyle(
                                  fontFamily: 'UnifrakturMaguntia',
                                  color: Colors.blue,
                                  fontSize: 20),
                            ),
                            Text(
                              '0992210004081014',
                              style: TextStyle(
                                  fontFamily: 'Lobster',
                                  color: Colors.black,
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  'https://www.flaticon.com/free-icon/graduated_3135773?term=student&page=1&position=1&page=1&position=1&related_id=3135773&origin=search',
                                  height: 128,
                                ),
                                Text(
                                  'Personal Data',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  'https://www.flaticon.com/premium-icon/calendar_3290700?term=course%20schedule&page=1&position=1&page=1&position=1&related_id=3290700&origin=search',
                                  height: 128,
                                ),
                                Text(
                                  'Course Schedule',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  'https://www.flaticon.com/free-icon/immigration_3125856?term=attendence&page=1&position=1&page=1&position=1&related_id=3125856&origin=search',
                                  height: 128,
                                ),
                                Text(
                                  'Attendance recap',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  'https://www.flaticon.com/premium-icon/results_2196174?related_id=2196174&origin=search',
                                  height: 128,
                                ),
                                Text(
                                  'Study Result',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  'https://www.flaticon.com/free-icon/graduated_3135773?term=student&page=1&position=1&page=1&position=1&related_id=3135773&origin=search',
                                  height: 128,
                                ),
                                Text(
                                  'Course Ranking',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  'https://www.flaticon.com/free-icon/graduated_3135773?term=student&page=1&position=1&page=1&position=1&related_id=3135773&origin=search',
                                  height: 128,
                                ),
                                Text(
                                  'Course Plan',
                                  style: cardTextStyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                        crossAxisCount: 2),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mediaquery',
      home: HomeScreen(),
    );
  }

}

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeScreenUI();
  }
}

class HomeScreenUI extends State<HomeScreen>{

  /// Items List of Json array  (1st work make a Json list)
  var MyItems = [
    {"img":"https://i.pinimg.com/236x/de/f1/9d/def19de19ac7fc4bbb11b7bc35b89d32--beautiful-sunset-beautiful-places.jpg",},
    {"img":"https://i.pinimg.com/236x/de/f1/9d/def19de19ac7fc4bbb11b7bc35b89d32--beautiful-sunset-beautiful-places.jpg",},
    {"img":"https://i.pinimg.com/236x/de/f1/9d/def19de19ac7fc4bbb11b7bc35b89d32--beautiful-sunset-beautiful-places.jpg",},
    {"img":"https://i.pinimg.com/236x/de/f1/9d/def19de19ac7fc4bbb11b7bc35b89d32--beautiful-sunset-beautiful-places.jpg",},
    {"img":"https://i.pinimg.com/236x/de/f1/9d/def19de19ac7fc4bbb11b7bc35b89d32--beautiful-sunset-beautiful-places.jpg",},
    {"img":"https://i.pinimg.com/236x/de/f1/9d/def19de19ac7fc4bbb11b7bc35b89d32--beautiful-sunset-beautiful-places.jpg",},
    {"img":"https://i.pinimg.com/236x/de/f1/9d/def19de19ac7fc4bbb11b7bc35b89d32--beautiful-sunset-beautiful-places.jpg",},
    {"img":"https://i.pinimg.com/236x/de/f1/9d/def19de19ac7fc4bbb11b7bc35b89d32--beautiful-sunset-beautiful-places.jpg",},
    {"img":"https://i.pinimg.com/236x/de/f1/9d/def19de19ac7fc4bbb11b7bc35b89d32--beautiful-sunset-beautiful-places.jpg",},
    {"img":"https://i.pinimg.com/236x/de/f1/9d/def19de19ac7fc4bbb11b7bc35b89d32--beautiful-sunset-beautiful-places.jpg",}
  ];



  /// Portait Mood Design
  Widget potrait(){
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_img.png'),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Khalid Ahmad',
              style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10,),
            Text(
              'I am Android App developer. Always I try to keep my code clean. I am Android App developer. Always I try to keep my code clean.',
              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Container(
              width: double.infinity,
              height: 300,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    childAspectRatio: 1.2,
                  ),
                  itemCount: MyItems.length,
                  itemBuilder: (context, index){
                    return GestureDetector(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: double.infinity,
                        height: 200,
                        child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,),
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }

  /// LandScape Mood Design
  Widget landScape(){
    return Padding(
        padding: EdgeInsets.fromLTRB(5 , 5, 5, 0),
      child: Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
              width: 300,
              height: double.infinity,
              color: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_img.png'),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Khalid Ahmad',
                    style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'I am Android App developer. Always I try to keep my code clean. ',
                    style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'I am Android App developer. Always I try to keep my code clean. ',
                    style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 200,
                    width: 400,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 0,
                          childAspectRatio: 1.2,
                        ),
                        itemCount: MyItems.length,
                        itemBuilder: (context, index){
                          return GestureDetector(
                            child: Container(
                              margin: EdgeInsets.all(5),
                              width: double.infinity,
                              height: 200,
                              child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,),
                            ),
                          );
                        }
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ostad Flutter Assignment 10'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return potrait();
          }else{
            return landScape();
          }
        },
      ),
    );
  }
}

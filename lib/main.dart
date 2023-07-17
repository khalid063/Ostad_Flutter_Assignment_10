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
        padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
        child: Column(
          children: [
            Container(
              //height: 300,
              height: MediaQuery.of(context).size.height * 0.4,
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
            SizedBox(height: 5,),
            Container(
              width: double.infinity,
              height: 300,
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
                        margin: EdgeInsets.fromLTRB(0, 5, 5, 0),
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
        padding: EdgeInsets.fromLTRB(0 , 0, 0, 0),
      child: Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              width: MediaQuery.of(context).size.width * 0.4,
              height: double.infinity,
              color: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_img.png'),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
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
                    SizedBox(height: 5,),
                    Container(
                      height: 200,
                      width: double.infinity,
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
                                margin: EdgeInsets.fromLTRB(0, 5, 5, 0),
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
        title: Text('Profile'),
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

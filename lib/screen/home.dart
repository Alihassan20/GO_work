import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  String search = '';
  int _tabBarIndex=0;

  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.flip,
        items: const [
          TabItem(title: "", icon: Icon(Icons.home)),
          TabItem(title: "", icon: Icon(Icons.note)),
          TabItem(title: "", icon: Icon(Icons.message)),
          TabItem(title: "", icon: Icon(Icons.settings)),
        ],
        elevation: 0,
        activeColor: Colors.black87,
        backgroundColor:
        Colors.white10.withOpacity(0.1),
        initialActiveIndex: _tabBarIndex,
        onTap: (value) {
          setState(() {
            _tabBarIndex = value;
          });
        },
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white10,
                      image: DecorationImage(
                        image: AssetImage('assets/back.jpg'),
                        fit: BoxFit.cover,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.fmd_good_sharp,
                            color: Colors.white,
                          ),
                          title: const Text(
                            "Network",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: const Text(
                            "Current Location",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.white,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 13),
                          child: Text(
                            "Hello Carolina",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 13, top: 5),
                          child: Text(
                            "Let's Find Perfect Co_Working Space",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  width: _size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25, top: 45),
                        child: Text(
                          "Space Availablitily In City",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                elevation: 5,
                              ),
                              child: Row(
                                children:const  [
                                  Text(
                                    "12 ",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(" | ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200)),
                                  Text(" Cafe",
                                      style: TextStyle(color: Colors.black)),
                                ],
                              )),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                elevation: 5,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "23 ",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(" | ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200)),
                                  Text(" Office",
                                      style: TextStyle(color: Colors.black)),
                                ],
                              )),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                elevation: 5,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "18 ",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(" | ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200)),
                                  Text(" Space",
                                      style: TextStyle(color: Colors.black)),
                                ],
                              )),
                        ],
                      ),
                      ListTile(
                          title: const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Space In Your Area",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          trailing: TextButton(
                            child: const Text(
                              "View All >>",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            onPressed: () {},
                          )),
                      Expanded(
                        child: ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),topRight:  Radius.circular(30),
                                      bottomLeft:  Radius.circular(15),bottomRight: Radius.circular(15),
                                    )
                                ),
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black, blurRadius: 4.0, spreadRadius: 0.4)
                                        ],
                                        image:const DecorationImage(
                                          image: NetworkImage("https://img.freepik.com/free-photo/restaurant-interior_1127-3394.jpg?size=626&ext=jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      height: MediaQuery.of(context).size.height * 0.3,
                                    ),
                                    Container(
                                        height: 80,
                                        child:Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  const Text(
                                                    "Trans Cube Co-Working Space ",
                                                    style: TextStyle(
                                                        fontSize: 16, fontWeight: FontWeight.bold),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10)
                                                    ),
                                                    height: 30,
                                                    width: 64,
                                                    child: RaisedButton(
                                                        elevation: 0.0,
                                                        child:const  Text("4.5⭐",style: TextStyle(fontSize: 12),),
                                                        color: Colors.yellow,
                                                        onPressed: (){}
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: const[
                                                  Text(
                                                    "2914 my drive Ny 1289  ",
                                                    style: TextStyle(
                                                      fontSize: 16, ),
                                                  ),
                                                  Text("\$16 /Day",style: TextStyle(fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            )

                                          ],
                                        )
                                    )],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Card(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),topRight:  Radius.circular(30),
                                      bottomLeft:  Radius.circular(15),bottomRight: Radius.circular(15),
                                    )
                                ),
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black, blurRadius: 4.0, spreadRadius: 0.4)
                                        ],
                                        image:const DecorationImage(
                                          image: NetworkImage("https://img.freepik.com/free-photo/restaurant-interior_1127-3394.jpg?size=626&ext=jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      height: MediaQuery.of(context).size.height * 0.3,
                                    ),
                                    Container(
                                        height: 80,
                                        child:Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  const Text(
                                                    "Trans Cube Co-Working Space ",
                                                    style: TextStyle(
                                                        fontSize: 16, fontWeight: FontWeight.bold),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10)
                                                    ),
                                                    height: 30,
                                                    width: 64,
                                                    child: RaisedButton(
                                                        elevation: 0.0,
                                                        child:const  Text("4.5⭐",style: TextStyle(fontSize: 12),),
                                                        color: Colors.yellow,
                                                        onPressed: (){}
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: const[
                                                  Text(
                                                    "2914 my drive Ny 1289  ",
                                                    style: TextStyle(
                                                      fontSize: 16, ),
                                                  ),
                                                  Text("\$16 /Day",style: TextStyle(fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            )

                                          ],
                                        )
                                    )],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  color: Colors.white70.withOpacity(0.5),
                ),
                flex: 3,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 145, horizontal: 40),
            child: Container(
              height: 50,
              width: _size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 3.0, spreadRadius: 0.4)
                  ]),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.white,
                      )),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.white,
                      )),
                  hintText: "Search co- working spacing ",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.green,
                  ),
                  suffixIcon: Icon(Icons.filter, color: Colors.black),
                  labelStyle: TextStyle(color: Colors.grey),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (val) {
                  if (val!.isEmpty || !val.contains('@')) {
                    return 'Valid Search';
                  }
                  return null;
                },
                onSaved: (val) {
                  search = val!;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

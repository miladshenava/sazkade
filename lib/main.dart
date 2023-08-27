import 'dart:ui';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talachand/models/MusicModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  double listBox = 60;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'vazir',
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(

          onPressed: () {},
          child: Icon(
            Icons.play_circle_outline,
            size: 50,
            color: Colors.white70,
          ),
          backgroundColor: Colors.teal,

        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(55),
                            bottomRight: Radius.circular(55),
                          ),
                          image: DecorationImage(
                              image:
                                  AssetImage(musicList[_selectedIndex].image),
                              fit: BoxFit.cover)),
                    ),
                    // headerIcons
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        Color.fromARGB(101, 255, 255, 255)),
                                child: Icon(Icons.arrow_back_ios_outlined),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        Color.fromARGB(101, 255, 255, 255)),
                                child: Icon(Icons.done),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 80,
                      child: SizedBox(
                        width: 100,
                        height: double.maxFinite,
                        child: ListView.builder(
                            itemCount: musicList.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          _selectedIndex = index;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: _selectedIndex == index
                                                  ? Colors.yellowAccent
                                                  : Colors.white,
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  musicList[index].image),
                                              fit: BoxFit.cover),
                                        ),
                                        width: _selectedIndex == index
                                            ? listBox + 15
                                            : listBox,
                                        height: listBox,
                                        duration:
                                            const Duration(milliseconds: 500),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 250,
                      child: Text(
                        musicList[_selectedIndex].name,
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 500,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          color: Colors.white54,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                                color: Color.fromARGB(40, 0, 0, 0),
                                width: 1.5),
                          ),
                          child: Container(
                            width: 150,
                            height: 80,
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  musicList[_selectedIndex].mainPriceTitle,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87),
                                ),
                                Text(
                                  musicList[_selectedIndex].minPrice,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w200),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white38,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                                color: Color.fromARGB(40, 0, 0, 0),
                                width: 1.5),
                          ),
                          child: Container(

                            width: 150,
                            height: 80,
                            child: Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  musicList[_selectedIndex].MaxPriceTitle,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87),
                                ),
                                Text(
                                  musicList[_selectedIndex].maxPrice,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w200),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'ساز شناسی',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10,),
                        SingleChildScrollView(


                          child: Container(
                            height: 100,
                            width: 400,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 20),
                              child: ExpandableText(
                                musicList[_selectedIndex].story,
                                textAlign: TextAlign.right,
                                expandText: 'نمایش بیشتر',
                                maxLines: 2,
                                collapseText: 'بستن',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 17),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

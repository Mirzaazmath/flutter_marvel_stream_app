import 'dart:ui';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_marvel_streamapp/data.dart';

import '../Utils/bottonnavbar.dart';
import '../Utils/starclipper.dart';
import 'detalisscreen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String>images=["assets/shangchi.jpeg","assets/infinity.jpeg","assets/civilwar.jpeg"];
    return Scaffold(

      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: NavBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    height: 170.0,
                  aspectRatio: 16/9,
                  viewportFraction: 0.84,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,

                  scrollDirection: Axis.horizontal,
                ),
                items: images.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(i),fit: BoxFit.fill
                            ),


                          ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: BackdropFilter(filter:ImageFilter.blur(sigmaY: 5,sigmaX: 5),
                      child:  Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.1),
                            image:const  DecorationImage(
                            image: AssetImage("assets/i.jpeg"),fit: BoxFit.fill,opacity: 0.04

                      )
                      ),
                      child: Row(
                        children: [
                          Expanded(child: Text("2021, Action, Adventure,\n Fantasy,USA,Australia",style: TextStyle(color: Colors.white),)),
                          Row(
                            children: [
                           const  Text("IMDB",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ClipPath(
                                clipper: StarClipper(),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  color: Colors.yellow,
                                ),

                              ),
                             const  Text("7.4/10",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),),
                            ],
                          )
                        ],
                      ),)),
                            ),
                          ],
                        )

                      );
                    },
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    slidewigdet("New Release",newreleaselist,context),
                    slidewigdet("Series",serieslist,context),
                    slidewigdet("Animated",animatedlist,context),

                  ],
                ),
              ),

             //



            ],
          ),
        ),
      ),

    );
  }
  Widget slidewigdet(String title,List<String>list,context){
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25,color: Theme.of(context).primaryColor),),
              Icon(Icons.expand_more,size: 35,color: Theme.of(context).primaryColor,)
            ],
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,

              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context,index){
                return

                  Padding(
                    padding:const  EdgeInsets.only(left: 5),




                    child:GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen(list[index])));
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(list[index],fit: BoxFit.fill,)),
                    ),

                  );

              }),
        ),
      ],
    );
  }
}

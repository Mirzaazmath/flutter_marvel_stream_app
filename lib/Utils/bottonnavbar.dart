import 'dart:ui';

import 'package:flutter/material.dart';
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 100,

      color: Colors.transparent,
      child: Container(

        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(filter:ImageFilter.blur(sigmaY: 5,sigmaX: 5),
              child:  Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    image:const  DecorationImage(
                        image: AssetImage("assets/i.jpeg"),fit: BoxFit.fill,opacity: 0.04

                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                selectedindex==0?    Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:const  [
                          Icon(Icons.home_outlined,color: Colors.white,),
                          Text("Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      ),



                    ):GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedindex=0;
                    });
                  },
                    child: const  Icon(Icons.home_outlined,color: Colors.white,)),

                    selectedindex==1?    Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:const  [
                          Icon(Icons.movie_outlined,color: Colors.white,),
                          Text("Movies",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      ),



                    ): GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedindex=1;
                          });
                        },
                        child: const Icon(Icons.movie_outlined,color: Colors.white,)),
                    selectedindex==2?    Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:const  [
                          Icon(Icons.calendar_month_outlined,color: Colors.white,),
                          Text("Date",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      ),



                    ): GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedindex=2;
                          });
                        },
                        child: const Icon(Icons.calendar_month_outlined,color: Colors.white,)),
                    selectedindex==3?    Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:const  [
                          Icon(Icons.save_outlined,color: Colors.white,),
                          Text("Save",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      ),



                    ): GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedindex=3;
                          });
                        },
                        child: const Icon(Icons.save_outlined,color: Colors.white,)),
                    selectedindex==4?    Container(
                      padding: const EdgeInsets.all(5),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:const  [
                          Icon(Icons.person_outlined,color: Colors.white,),
                          Text("Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      ),



                    ): GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedindex=4;
                          });
                        },
                        child: const  Icon(Icons.person_outlined,color: Colors.white,)),


                  ],
                ),)),
        ),
      ),
    );
  }
}

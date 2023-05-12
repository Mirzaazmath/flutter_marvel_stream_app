import 'package:flutter/material.dart';
import 'package:flutter_marvel_streamapp/data.dart';
class DetailScreen extends StatelessWidget {
  String image;
  DetailScreen(this.image);


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),fit: BoxFit.fill
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  shrinkWrap: true,
                  itemCount: actorlist.length,
                  itemBuilder: (context,index){
                    return

                      Padding(
                        padding:const  EdgeInsets.only(left: 10),




                        child:Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(actorlist[index],fit: BoxFit.fill,)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                            alignment :Alignment.bottomCenter,
                              child:   Text(names[index],style:const  TextStyle(color: Colors.white,fontSize: 16),textAlign: TextAlign.center,),
                            ),
                          )
                          ],
                        ),

                      );

                  }),
            ),
            Container(
              margin:const  EdgeInsets.all(25),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Icon(Icons.play_arrow_outlined,color: Colors.white,size: 40,),
                  SizedBox(width: 10,),
                  Text("Watch Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}

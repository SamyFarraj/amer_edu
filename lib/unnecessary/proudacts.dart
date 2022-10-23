/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_wms/constant/component.dart';

class selected_department extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(),
body:Container(
  child: Column(

    children: [

      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 15),
        child: Container(
height: 90,
decoration: BoxDecoration(

  boxShadow: [
    BoxShadow(
      color: Colors.black38,
      blurRadius: 12,
      offset: Offset(4, 8), // Shadow position
    ),
  ],
color: Colors.white,
    borderRadius: BorderRadius.circular(8
    ),

),
          width: double.infinity,
          child:
          Row(

            children: [
              SizedBox(width: 5,),
             Container(

               decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                 color: Colors.green
        ),
                // color: Colors.black,
                 child: SizedBox(height: 80,width: 3,)),
              Container(

                  child: Image.asset('lib/assets/Image/orange.png',)
              ,
                height: 50,
                width:50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      mainText('proudact name : ', 20, Colors.black54),
                    //  SizedBox(height: 50,),
                      mainText('Straberry juice  ', 20, Colors.green,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mainText('Quantity in stock : ', 20, Colors.black54),
                     SizedBox(height: 50,),
                      mainText('21  ', 20, Colors.green),
                    ],
                  )
                ],

              ),
              SizedBox(width: 100,),
/*
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
              )
    ,

 */
              Container(
                  child: Image.asset('lib/assets/Image/img.png',),
                width: 65,
                height: 65,




              )
            ],
          ),
        ),
      ),






      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 15),
        child: Container(
          height: 90,
          decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 12,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(8
            ),

          ),
          width: double.infinity,
          child:
          Row(

            children: [
              SizedBox(width: 5,),
              Container(

                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green
                  ),
                  // color: Colors.black,
                  child: SizedBox(height: 80,width: 3,)),
              Container(

                child: Image.asset('lib/assets/Image/orange.png',)
                ,
                height: 50,
                width:50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      mainText('proudact name : ', 20, Colors.black54),
                      //  SizedBox(height: 50,),
                      mainText('Straberry juice  ', 20, Colors.green,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mainText('Quantity in stock : ', 20, Colors.black54),
                      SizedBox(height: 50,),
                      mainText('21  ', 20, Colors.green),
                    ],
                  )
                ],

              ),
              SizedBox(width: 100,),
/*
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
              )
    ,

 */
              Container(
                child: Image.asset('lib/assets/Image/img.png',),
                width: 65,
                height: 65,




              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 15),
        child: Container(
          height: 90,
          decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 12,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(8
            ),

          ),
          width: double.infinity,
          child:
          Row(

            children: [
              SizedBox(width: 5,),
              Container(

                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green
                  ),
                  // color: Colors.black,
                  child: SizedBox(height: 80,width: 3,)),
              Container(

                child: Image.asset('lib/assets/Image/orange.png',)
                ,
                height: 50,
                width:50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      mainText('proudact name : ', 20, Colors.black54),
                      //  SizedBox(height: 50,),
                      mainText('Straberry juice  ', 20, Colors.green,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mainText('Quantity in stock : ', 20, Colors.black54),
                      SizedBox(height: 50,),
                      mainText('21  ', 20, Colors.green),
                    ],
                  )
                ],

              ),
              SizedBox(width: 100,),
/*
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
              )
    ,

 */
              Container(
                child: Image.asset('lib/assets/Image/img.png',),
                width: 65,
                height: 65,




              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 15),
        child: Container(
          height: 90,
          decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 12,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(8
            ),

          ),
          width: double.infinity,
          child:
          Row(

            children: [
              SizedBox(width: 5,),
              Container(

                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green
                  ),
                  // color: Colors.black,
                  child: SizedBox(height: 80,width: 3,)),
              Container(

                child: Image.asset('lib/assets/Image/orange.png',)
                ,
                height: 50,
                width:50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      mainText('proudact name : ', 20, Colors.black54),
                      //  SizedBox(height: 50,),
                      mainText('Straberry juice  ', 20, Colors.green,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mainText('Quantity in stock : ', 20, Colors.black54),
                      SizedBox(height: 50,),
                      mainText('21  ', 20, Colors.green),
                    ],
                  )
                ],

              ),
              SizedBox(width: 100,),
/*
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
              )
    ,

 */
              Container(
                child: Image.asset('lib/assets/Image/img.png',),
                width: 65,
                height: 65,




              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 15),
        child: Container(
          height: 90,
          decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 12,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(8
            ),

          ),
          width: double.infinity,
          child:
          Row(

            children: [
              SizedBox(width: 5,),
              Container(

                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green
                  ),
                  // color: Colors.black,
                  child: SizedBox(height: 80,width: 3,)),
              Container(

                child: Image.asset('lib/assets/Image/orange.png',)
                ,
                height: 50,
                width:50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      mainText('proudact name : ', 20, Colors.black54),
                      //  SizedBox(height: 50,),
                      mainText('Straberry juice  ', 20, Colors.green,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mainText('Quantity in stock : ', 20, Colors.black54),
                      SizedBox(height: 50,),
                      mainText('21  ', 20, Colors.green),
                    ],
                  )
                ],

              ),
              SizedBox(width: 100,),
/*
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
              )
    ,

 */
              Container(
                child: Image.asset('lib/assets/Image/img.png',),
                width: 65,
                height: 65,




              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 15),
        child: Container(
          height: 90,
          decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 12,
                offset: Offset(4, 8), // Shadow position
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(8
            ),

          ),
          width: double.infinity,
          child:
          Row(

            children: [
              SizedBox(width: 5,),
              Container(

                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green
                  ),
                  // color: Colors.black,
                  child: SizedBox(height: 80,width: 3,)),
              Container(

                child: Image.asset('lib/assets/Image/orange.png',)
                ,
                height: 50,
                width:50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      mainText('proudact name : ', 20, Colors.black54),
                      //  SizedBox(height: 50,),
                      mainText('Straberry juice  ', 20, Colors.green,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mainText('Quantity in stock : ', 20, Colors.black54),
                      SizedBox(height: 50,),
                      mainText('21  ', 20, Colors.green),
                    ],
                  )
                ],

              ),
              SizedBox(width: 100,),
/*
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
              )
    ,

 */
              Container(
                child: Image.asset('lib/assets/Image/img.png',),
                width: 65,
                height: 65,




              )
            ],
          ),
        ),
      ),

    ],
  ),
),
    );
  }
}

 */

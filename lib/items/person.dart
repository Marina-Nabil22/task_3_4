import 'package:flutter/material.dart';
class PersonSection extends StatelessWidget {
  // const PersonSection({Key? key}) : super(key: key);
final image;
final name;
final title;
final number;
final color;
PersonSection({required this.image,required this.name,required this.title,required this.number,required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(

      margin: EdgeInsets.only(top: 20,left: 30),
      width: 300,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          // color: Colors.grey,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 3,
                spreadRadius: 5,
                blurStyle: BlurStyle.outer
            ),
            BoxShadow(
                color: color,
                blurRadius: 3,
                spreadRadius: 5,
                blurStyle: BlurStyle.inner
            )
          ]


      ),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(top: 23,left: 6,right: 8),
                child: CircleAvatar(backgroundImage: NetworkImage(image)),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Colors.white )),
                    Text(title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color:Colors.white)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child:  Row(
                  children: [
                    Column(
                      children: [
                        Text('2342',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white),),
                        Text('Popularity',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white),),
                      ],
                    ),
                    Column(
                      children: [
                        Text('4736',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white),),
                        Text('Like',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white),),
                      ],
                    ),
                    Column(
                      children: [
                        Text('136',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white),),
                        Text('followed',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:Colors.white),),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin:EdgeInsets.only(bottom: 20),
                  child:  Icon(Icons.info_outline_rounded,color:Colors.white),
                ),
                Text(number,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color:Colors.white)),
                Text('Ranking',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color:Colors.white))
              ],
            ),
          )

        ],
      ),
    );
  }
}

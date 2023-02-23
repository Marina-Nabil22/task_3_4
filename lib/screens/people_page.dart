import 'package:flutter/material.dart';
import 'package:task_3/items/person.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(

  backgroundColor: Colors.purpleAccent,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
           Icon(Icons.arrow_back,color: Colors.white,size: 25,),
           Icon(Icons.menu_outlined,color: Colors.white,size: 25,),
    ],
  ),
),
       body: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 62,
              decoration: BoxDecoration(
                color: Colors.purpleAccent
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Designer',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color:Colors.white )),
                  Text('Category',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Colors.white )),
                  Text('Attention',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Colors.white ))
                ],
              ),
            ),
Container(
  margin: EdgeInsets.only(right: 25,bottom: 15),
  child: Column(
    children: [
      PersonSection(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTuYTPz8et6f08brD5MZAtt1ADZxgiKa3-0HwDFzyLYg&s', name: 'David Borg', title: 'title:Fluing wings', number: '1',color: Colors.lightBlue,),
      PersonSection(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTuYTPz8et6f08brD5MZAtt1ADZxgiKa3-0HwDFzyLYg&s', name: 'Lucy', title: 'title:Fluing wings', number: '2',color: Colors.orangeAccent.shade700),
      PersonSection(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTuYTPz8et6f08brD5MZAtt1ADZxgiKa3-0HwDFzyLYg&s', name: 'Jerry Cool', title: 'title:Fluing wings', number: '3',color: Colors.pinkAccent.shade700),
      PersonSection(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTuYTPz8et6f08brD5MZAtt1ADZxgiKa3-0HwDFzyLYg&s', name: 'Bold', title: 'title:Fluing wings', number: '4',color: Colors.purpleAccent.shade700),


    ],
  ),
)
          ],
       ),
    );
  }
}

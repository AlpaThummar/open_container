import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:open_container/second%20page.dart';

void main() {
  runApp(MaterialApp(
    home: open_conatiner(),
  ));
}

class open_conatiner extends StatefulWidget {
  const open_conatiner({Key? key}) : super(key: key);

  @override
  State<open_conatiner> createState() => _open_conatinerState();
}

class _open_conatinerState extends State<open_conatiner> {
  List<Color> c=[Colors.deepPurple,Colors.green,Colors.blueAccent,Colors.lightGreenAccent,Colors.brown];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Open Conatiner"),
        ),
        body: GridView.builder(itemCount: c.toString().length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemBuilder: (context, index) {
            return OpenContainer(
              transitionType: ContainerTransitionType.fadeThrough,
              transitionDuration: Duration(seconds: 3),
              middleColor: Colors.lightGreen,
              closedBuilder: (context, action) {
                return Container(width: 100,height: 100,color: c[index],);

              },
              openBuilder: (BuildContext,action) {
                return second_page(c[index]);

              },);
          },
        ));

  }
  Widget myfun(Color c){
    return Container(width: 300,height: 300,color: c,);
  }
}

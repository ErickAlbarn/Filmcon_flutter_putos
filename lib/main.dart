import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Inicio(),

    );
  }
}
class Fondo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(colors: [
          Color(0xFFffffff),Color(0xFFffffff)

        ],
        end: const FractionalOffset(1.0, 0.1),begin: const FractionalOffset(1.0, .9)
      ),


    )
    );
  }



}
class ButtonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ButtonDemoState();
  }
}

class ButtonDemoState extends State<ButtonDemo> {
  int number = 0;

  void subtractNumbers() {
    setState(() {
      number = number - 1;
    });
  }


  Widget build(BuildContext context) {
    return new Stack(


            children: <Widget>[
              new Container(
                width: MediaQuery.of(context).size.width*.95,
                height: MediaQuery.of(context).size.height*.08,

              padding: const EdgeInsets.only(top: 15),
                  

                  child:new RaisedButton(



                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0)
                ),
                textColor: Colors.white,
                color: Colors.blue,

                onPressed: subtractNumbers,
                child: new Text("Crear ua cuenta"),

              ),)
              ]
    );


}


}
class Inicio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Stack(
        children: <Widget>[

        new Fondo(),

        new Center(
            child: new Container(


                padding: EdgeInsets.only(top: MediaQuery.of(context).size.width*.35),

                child: new Column(
                  children: <Widget>[

                    new SizedBox(
                        height: MediaQuery.of(context).size.height*.5,
                        width: 350.0,
                          child: new Carousel(
                            images: [
                              new NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                              new NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                              new ExactAssetImage("assets/images/LaunchImage.jpg")
                              ],
                            dotSize: 4.0,
                            dotSpacing: 15.0,
                            dotColor: Colors.lightGreenAccent,
                            indicatorBgPadding: 5.0,
                            
                            dotBgColor: Colors.purple.withOpacity(0.5),
                            borderRadius: true,
            )
                        
        ),
new Container(
  padding: EdgeInsets.only(top:20),

child:new ButtonDemo(),
)
                  ]
        ),)
        )
      ],
      )

    );

  }


}





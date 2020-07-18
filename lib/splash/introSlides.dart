import 'package:doctor_booking_app/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

void main() => runApp(new IntroSlides());

class IntroSlides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  Function goToTab;
  @override
  void initState(){
    super.initState();
    slides.add(
      new Slide(
        title:"Talk To Doctor Or Request a Nurse For HomeCare",
        maxLineTitle: 2,
        styleTitle: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
        pathImage: "assets/first.png",
        backgroundColor: Colors.white,
        colorBegin: Color(0xffFFDAB9),
        colorEnd: Color(0xff40E0D0),
        onCenterItemPress: (){},

      ),
    );
    slides.add(
      new Slide(
        title:"Find Recognized Doctors and Specialists on One Tap",
        maxLineTitle: 2,
        styleTitle: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
        pathImage: "assets/second.png",
        backgroundColor: Colors.white,
        colorBegin: Color(0xffFFDAB9),
        colorEnd: Color(0xff40E0D0),
        onCenterItemPress: (){},

      ),
    );
    slides.add(
      new Slide(
        title:"Shedule Your Visit For Clinic Tests Or Lab Tests",
        maxLineTitle: 2,
        styleTitle: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
        pathImage: "assets/third.png",
        backgroundColor: Colors.white,
        onCenterItemPress: (){},
      ),
    );

    slides.add(
      new Slide(
        title:"Organise your family health cares at one Place",
        maxLineTitle: 2,
        styleTitle: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
        pathImage: "assets/fourth.png",
        backgroundColor: Colors.white,
        onCenterItemPress: () {},
      ),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Container(
              height: MediaQuery.of(context).size.height-80,
              child: new IntroSlider(
                  slides: this.slides,
                      ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),);
                },
//                    icon: Icon(Icons.done),
                child: Text("Skip & Continue",
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.redAccent,
              ),
            )
          ]
        )
      )
    );
  }
}


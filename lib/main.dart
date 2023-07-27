import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
  }
  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return const  MaterialApp(

        home: HomeScreen(),
      );
    }
  }
  class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey.shade600,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade600,
          title: const Text("RichText with OnTap"),
        ),
        body: Center(
          child:RichText(
            text: TextSpan(
              text: 'Hello ',
              style:const  TextStyle(color: Colors.black,fontSize: 20),
              children:  <TextSpan>[
                TextSpan(text: 'Click Here', style:const  TextStyle(fontWeight: FontWeight.bold),recognizer: TapGestureRecognizer()..onTap=(){
                  ScaffoldMessenger.of(context).showSnackBar(
                   const  SnackBar(content: Text("This Text is Clickable"))
                  );
                  
                },
                 ),
              
              ],
            ),
          )
        ),

      );
    }
  }


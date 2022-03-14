
import 'package:flutter/material.dart';

class LiveScoreScreen extends StatelessWidget {
  const LiveScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20,right: 10,left: 10),
        child: Column(
          children:  [
             Container(
               decoration:  BoxDecoration(
                 color: Colors.white,
                 borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent.shade400,
                      offset:  const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                  ]
               ),
             )
          ],
        ),
      ),
    );
  }
}

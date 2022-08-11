import 'package:e_learning/constants.dart';
import 'package:e_learning/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: (const BoxDecoration(
                    color: kblue,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50)),
                  )),
                  child: Column(
                    children: [
                      Expanded(child: Image.asset("assets/images/welcome.png")),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: kblue,
                  child: Container(
                    width: double.infinity,
                    decoration: (const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50)),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(21.0),
                      child: Column(
                        children: [
                          const Text(
                            "Learning Everything",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            "Learning with pleasure with\nus, where you are?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              wordSpacing: 2.5,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                                height: 1.5),
                          ),

                          const Spacer(flex: 2,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MaterialButton(
                                height: 60,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                                color: kpink,
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()),);
                                },
                                child: const Text(
                                  "Get Started",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

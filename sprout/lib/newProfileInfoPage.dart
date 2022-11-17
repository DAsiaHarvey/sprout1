import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sprout/signUpPage.dart';
import 'package:sprout/user_data_model.dart';

class NewProfileInfoPage extends StatefulWidget {
  const NewProfileInfoPage({super.key, required this.title});

  final String title;

  @override
  State<NewProfileInfoPage> createState() => _NewProfileInfoPageState();
}

class _NewProfileInfoPageState extends State<NewProfileInfoPage> {
  static const routeName = '/login-screen';

  final feetController = TextEditingController();
  final inchesController = TextEditingController();
  final weightController = TextEditingController();
  final goalWeightController = TextEditingController();

  UserData user = UserData();

  void setUserData() {
    user.heightInFT = feetController.value as int;
    user.heightInIN = inchesController.value as int;
    user.weight = weightController.value as double;
    user.goalWeight = goalWeightController.value as double;
  }

  Widget login(IconData icon) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>
                            SignupPage(title: 'Signup Page')));
              },
              child: Text('Sign Up')),
        ],
      ),
    );
  }

  Widget userInput(TextEditingController userInput, String hintTitle,
      TextInputType keyboardType) {
    return Container(
      height: 45,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade200.withOpacity(0.7),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 15, right: 25),
        child: TextField(
          controller: userInput,
          autocorrect: false,
          enableSuggestions: false,
          autofocus: false,
          decoration: InputDecoration.collapsed(
            hintText: hintTitle,
            hintStyle: TextStyle(
                fontSize: 18,
                color: Colors.white70,
                fontStyle: FontStyle.italic),
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
            image: AssetImage('img/early-morning.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Nice to Meet you!', style: TextStyle(fontSize: 40)),
            Text('Tell us a little more about yourself',
                style: TextStyle(fontSize: 20)),
            Container(
              height: 475,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 45),
                    Text(
                      'How fuckin tall are you?',
                      style: TextStyle(fontSize: 35),
                    ),
                    userInput(feetController, 'feet', TextInputType.number),
                    userInput(inchesController, 'inches', TextInputType.number),
                    userInput(weightController, 'What is your weight? (lbs)',
                        TextInputType.number),
                    userInput(
                        goalWeightController,
                        'What weight are you trying to achieve? (lbs)',
                        TextInputType.number),
                    Container(
                      height: 55,
                      // for an exact replicate, remove the padding.
                      // pour une réplique exact, enlever le padding.
                      padding:
                          const EdgeInsets.only(top: 5, left: 70, right: 70),
                      child: ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(thickness: 0, color: Colors.white),
                    /*
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Text('Don\'t have an account yet ? ', style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),),
                    TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  ],
                ),
                  */
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

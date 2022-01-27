import 'package:appnewui/Authentication/signup/background.dart';
import 'package:appnewui/Authentication/welcomePage/Controller.dart';
import 'package:appnewui/Authentication/widget/button.dart';
import 'package:appnewui/Authentication/widget/circular_text_field.dart';
import 'package:appnewui/constrants.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String DropDownBranchValue = "CSE";
  String name = "";
  String UniRoll = "";
  String year = "";
  String contactMail = "";
  String CollegeName = "";

  Future<void> check_verified() async{

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Here's your first step with us!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Colors.black),
            ),
            SizedBox(height: size.height * .02),

            // SvgPicture.asset(
            //   "assets/images/signpage.svg",
            //   //fit: BoxFit.cover,
            //   height: size.height * .30,
            // ),
            SizedBox(height: size.height * 0.02),
            RoundedTextField(
              ontap: (value) {
                name = value;
              },
              color: primaryColor,
              icon: Icons.person,
              keyType: TextInputType.name,
              text: "Your Name",
              privacy: false,
              suffixicon: null,
            ),
            SizedBox(height: size.height * 0.02),

            RoundedTextField(
              ontap: (value) {
                UniRoll = value;
              },
              color: primaryColor,
              icon: Icons.list,
              keyType: TextInputType.number,
              text: "Unversity Roll Number",
              privacy: false,
              suffixicon: null,
            ),
            SizedBox(height: size.height * 0.02),

            RoundedTextField(
              ontap: (value) {
                year = value;
              },
              color: primaryColor,
              icon: Icons.calendar_today_rounded,
              text: "Year (1/2/3/4)",
              keyType: TextInputType.number,
              privacy: false,
              suffixicon: null,
            ),
            SizedBox(height: size.height * 0.02),
            //<--------------------------Branch Selection STARTS-------------------------->
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffF1E6FF),
              ),
              height: 55,
              width: size.width * .8,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Select Branch",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.normal),
                    ),
                    DropdownButton<String>(
                      value: DropDownBranchValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(
                        color: Color(0xff6F35A5),
                      ),
                      underline: Container(
                        height: 2,
                        color: Color(0xff6F35A5),
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          DropDownBranchValue = newValue!;
                        });
                      },
                      items: <String>[
                        'EE',
                        'ECE',
                        'CE',
                        'CSE',
                        'IT',
                        'ME'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ),
            //<-------------------------- Branch Selection ENDS-------------------------->
            // RoundedTextField(
            //   color: primaryColor,
            //   icon: Icons.class_,
            //   text: "Branch",
            //   keyType: TextInputType.text,
            //   privacy: false,
            //   suffixicon: null,
            // ),
            SizedBox(height: size.height * 0.02),

            RoundedTextField(
              ontap: (value) {
                contactMail = value;
              },
              color: primaryColor,
              icon: Icons.mail,
              keyType: TextInputType.emailAddress,
              text: "Contact Mail",
              privacy: false,
              suffixicon: null,
            ),
            SizedBox(height: size.height * 0.02),
            RoundedTextField(
              ontap: (value) {
                CollegeName = value;
              },
              color: primaryColor,
              icon: Icons.school,
              text: "College name",
              keyType: TextInputType.text,
              privacy: false,
              suffixicon: null,
            ),

            SizedBox(height: size.height * 0.03),
            CircularButton(
              text: "Register",
              color: primaryColor,
              textColor: Colors.white,
              press: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Controller()));
                // print(name);
                // print(UniRoll);
                // print(year);
                // print(DropDownBranchValue);
                //
                // print(contactMail);
                // print(CollegeName);
              },
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account ?",
                  style: TextStyle(color: Colors.black),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Sign In",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),

            SizedBox(height: size.height * 0.02),
          ]),
        ),
      ),
    );
  }
}
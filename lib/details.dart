import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            padding: EdgeInsets.only(left: 16, top: 25, right: 16),
          child: ListView(
            children: [

              SizedBox(
                height: 35,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                              ))),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.blue,
                            ),
                            color: Colors.blue,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )
                    ),


                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              _labelTextInput("Name", "Name", false),
              SizedBox(
                height: 30,
              ),
              _labelTextInput("Specialisatiion/Description", "Specialisatiion/Description", false),
              SizedBox(
                height: 30,
              ),
              _labelTextInput("Hospital/Pharmacy", "Hospital/Pharmacy", false),
              SizedBox(
                height: 30,
              ),
              _labelTextInput("Registration Id", "Registration Id", false),
              SizedBox(
                height: 60,
              ),
              _RegisterBtn(),
            ],
          ),

        ),
      ),
    );
  }
}

Widget _labelTextInput(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      TextField(
        obscureText: isPassword,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.abel(
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    ],
  );
}

Widget _RegisterBtn() {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: const BoxDecoration(
      color: Color(0xff008fff),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextButton(
      onPressed: () => {},
      child: Text(
        "Confirm",
        style: GoogleFonts.abel(
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
      ),
    ),
  );
}

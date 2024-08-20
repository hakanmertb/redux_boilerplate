import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  TextStyle style = GoogleFonts.poppins();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Align(
          alignment: Alignment.topCenter,
          child: Card(
            elevation: 5,
            color: const Color.fromARGB(255, 243, 243, 242),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Tansel Ozkusaksiz", style: style),
                  Text("Zipcode: 07450", style: style),
                  Text("Gender: Male", style: style),
                  Text("Birthday: 3/3/1980", style: style),
                  Text("Height: 5' 7", style: style),
                  Text("Weight: 150 lbs", style: style),
                  Text("Household Size: 4", style: style),
                  Text("Qualifying Life Event: Moved", style: style),
                  Text("Smoking: No", style: style),
                  Text(r"Expected Household Income: $47,000 and over",
                      style: style)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

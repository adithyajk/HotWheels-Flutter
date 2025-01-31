import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigneupPage extends StatelessWidget {
  const SigneupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp.."),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        titleTextStyle: GoogleFonts.courgette(
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/img_9.png'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Left side: Text fields
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "First Name",
                            labelStyle: const TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Last Name",
                            labelStyle: const TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Date of Birth",
                            labelStyle: const TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          keyboardType: TextInputType.datetime,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: const TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Phone Number",
                            labelStyle: const TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Address",
                            labelStyle: const TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          keyboardType: TextInputType.streetAddress,
                        ),
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        width: 150, // Reduced width for the button
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Right side: Welcome Text with Google Font
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Center(
                      child: Text(
                        "Welcome to HotWheels !!\nJoin Us On The Venture",
                        style: GoogleFonts.fontdinerSwanky(
                          textStyle: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

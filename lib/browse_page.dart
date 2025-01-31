import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Make sure to import Google Fonts

class BrowsePage extends StatelessWidget {
  const BrowsePage({super.key});

  @override
  Widget build(BuildContext context) {
    final hotWheelsModels = [
      {"name": "Mustang GT", "price": "\Rs 479", "image": "assets/img_2.png"},
      {"name": "Camaro ZL1", "price": "\Rs 500", "image": "assets/img_4.png"},
      {"name": "Dodge Charger", "price": "\Rs 250", "image": "assets/img_5.png"},
      {"name": "Lamborghini Aventador", "price": "\Rs 350", "image": "assets/img_6.png"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("HotWheels.."),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        titleTextStyle: GoogleFonts.courgette(
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 32, // Adjust the font size as needed
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img_1.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3), // Add slight transparency
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.2,
            ),
            itemCount: hotWheelsModels.length,
            itemBuilder: (context, index) {
              final model = hotWheelsModels[index];
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.white70.withOpacity(0.9),
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        model["image"]!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      model["name"]!,
                      style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      model["price"]!,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

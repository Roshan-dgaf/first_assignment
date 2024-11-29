import 'package:flutter/material.dart';
import 'dart:math'; // Importing the math library for pi constant

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  final radiusController = TextEditingController(); // Controller for radius input
  double result = 0.0;

  // Global key for form state
  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area of Circle'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              // Input for radius of the circle
              TextFormField(
                controller: radiusController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter radius of circle',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the radius';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Display the result
              Text(
                'Area: ${result.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 10),

              // Button to calculate the area
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        // Parsing the radius and calculating the area
                        double radius = double.parse(radiusController.text);
                        result = pi * radius * radius; // Area of circle formula
                      });
                    }
                  },
                  child: const Text('Calculate Area'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

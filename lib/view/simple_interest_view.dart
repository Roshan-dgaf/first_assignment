import 'package:first_fluter_app/widget/gap.dart';
import 'package:flutter/material.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  // Define TextEditingController for handling inputs
  final TextEditingController principalController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController rateController = TextEditingController();

  double interest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Principal input
            TextField(
              controller: principalController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Principal",
              ),
              keyboardType: TextInputType.number,
            ),
            gap8y,
            
            // Time input
            TextField(
              controller: timeController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Time in years",
              ),
              keyboardType: TextInputType.number,
            ),
            gap8y,
            
            // Rate input
            TextField(
              controller: rateController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Rate",
              ),
              keyboardType: TextInputType.number,
            ),
            gap8y,

            // Display the calculated interest
            Text(
              "Interest is: \$${interest.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 22),
            ),
            gap8y,
            
            // Calculate button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Parse the inputs as doubles and calculate the interest
                    double principal = double.tryParse(principalController.text) ?? 0;
                    double time = double.tryParse(timeController.text) ?? 0;
                    double rate = double.tryParse(rateController.text) ?? 0;
                    
                    if (principal > 0 && time > 0 && rate > 0) {
                      interest = principal * time * rate / 100;
                    } else {
                      // If any input is invalid, reset the interest to 0
                      interest = 0;
                    }
                  });
                },
                child: const Text("Calculate"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

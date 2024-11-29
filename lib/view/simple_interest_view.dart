import 'package:first_assignment/widgets/gap.dart';
import 'package:flutter/material.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterestView> {
  double interest = 0;
  double principal = 0;
  double time = 0;
  double rate = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => principal = double.parse(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Principal",
              ),
              keyboardType: TextInputType.number,
            ),
            gap8y,
            TextField(
              onChanged: (value) => time = double.parse(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Time in years",
              ),
              keyboardType: TextInputType.number,
            ),
            gap8y,
            TextField(
              onChanged: (value) => rate = double.parse(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Rate",
              ),
              keyboardType: TextInputType.number,
            ),
            gap8y,
            Text(
              "Interest is: $interest",
              style: const TextStyle(fontSize: 22),
            ),
            gap8y,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      interest = principal * time * rate / 100;
                    });
                  },
                  child: const Text("Calculate")),
            ),
          ],
        ),
      ),
    );
  }
}
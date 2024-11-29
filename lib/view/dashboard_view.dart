import 'package:first_fluter_app/view/areaofcircle.dart';
import 'package:first_fluter_app/view/arithmetic_view.dart';
import 'package:first_fluter_app/view/simple_interest_view.dart';
import 'package:first_fluter_app/widget/gap.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Assignment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(width:double.infinity,child: ElevatedButton(onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>const ArithmeticView())), child: const Text("Arithmetic"))),
            gap8y,
            SizedBox(width:double.infinity,child: ElevatedButton(onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>const SimpleInterestView())), child: const Text("Simple Interest"))),
            gap8y,
            SizedBox(width:double.infinity,child: ElevatedButton(onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>const AreaCircleView())), child: const Text("Area Of Circle"))),
            gap8y,
          ],
        ),
      ),
    );
  }
}
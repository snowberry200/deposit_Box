
import 'package:flutter/material.dart';

import 'layout/presentation/homepage.dart';


void main() {
  runApp(const DepositBox());
}

class DepositBox extends StatefulWidget {
  const DepositBox({super.key});

  @override
  State<DepositBox> createState() => _DepositBoxState();
}

class _DepositBoxState extends State<DepositBox> 
     {


  
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
        
        debugShowCheckedModeBanner: false,
        home: HomePage()
        
      );
  }
}



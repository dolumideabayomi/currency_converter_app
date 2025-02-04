import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
     final border = OutlineInputBorder(
        borderSide: const BorderSide(
           width: 2.0,
           style: BorderStyle.solid
        ),
        borderRadius: BorderRadius.circular(5),   
     );

    return  Scaffold(
        body: Center(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              const Text('0',
                style: TextStyle(
                 fontSize: 32,
                 fontWeight: FontWeight.bold,
                 color: Color.fromRGBO(0, 0, 0, 1)
               ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                child: TextField(
                   style: const TextStyle(
                   color:  Colors.black87,
                  ), 
                  decoration: InputDecoration(
                    hintText: "Please enter the amount in USD",
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black87,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),

              //button
              //Type: Raised & Text

              //Text Button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if(kDebugMode) {
                      print("Button Clicked");
                    }
                  },
                  style: const ButtonStyle(
                    elevation: WidgetStatePropertyAll(8),
                    backgroundColor: WidgetStatePropertyAll(Colors.black),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                  ),
                  child: const Text("Convert"),
                  
                  ),
              ),
            ],
          ),
        ) 
      );
    
  }
}
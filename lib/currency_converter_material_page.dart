import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
  
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

   @override
  Widget build(BuildContext context) {
    print("rebuilt");
     final border = OutlineInputBorder(
        borderSide: const BorderSide(
           width: 2.0,
           style: BorderStyle.solid
        ),
        borderRadius: BorderRadius.circular(5),   
     );

    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
        body: Center(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
               Text("NGN ${result !=0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)}",
                style: const TextStyle(
                 fontSize: 32,
                 fontWeight: FontWeight.bold,
                 color: Color.fromRGBO(0, 0, 0, 1)
               ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                child: TextField(
                  controller: textEditingController,
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
                child: TextButton(
                  onPressed: () {
                    setState(() {
                     result = double.parse(textEditingController.text) * 1503; 
                    });
                  },
                  style:  TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
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


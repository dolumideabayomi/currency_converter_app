import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPage();
}

class _CurrencyConverterCupertinoPage extends State<CurrencyConverterCupertinoPage> {
    double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

 @override
  Widget build(BuildContext context) {
    print("rebuilt");
     

    return  CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        middle: Text("Currency Converter",
        style: TextStyle(
          color: CupertinoColors.black
        ),
        ),
      ),
        child: Center(
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
                child: CupertinoTextField(
                  controller: textEditingController,
                   style: const TextStyle(
                   color:  CupertinoColors.black,
                  ), 
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  placeholder: "Please enter the amount in USD",
                  placeholderStyle: const TextStyle(
                    color: Color.fromARGB(110, 0, 0, 0)
                  ),
                  prefix:  const Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              const SizedBox(height: 10,),

              //button
              //Type: Raised & Text

              //Text Button
              CupertinoButton(
                onPressed: () {
                  setState(() {
                   result = double.parse(textEditingController.text) * 1503; 
                  });
                },
                color: CupertinoColors.black,
                child: const Text("Convert",
                style: TextStyle(
                  color: CupertinoColors.white
                ),
                ),
                
                ),
            ],
          ),
        ) 
      );
    
  }
}
import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertino extends StatefulWidget {
  const CurrencyConverterCupertino({super.key});

  @override
  State<CurrencyConverterCupertino> createState() =>
      _CurrencyConverterCupertinoState();
}

class _CurrencyConverterCupertinoState
    extends State<CurrencyConverterCupertino> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 1370;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text(
          "Currency Converter",
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                margin: const EdgeInsets.all(10),
                color: CupertinoColors.black,
                child: Text(
                  'WON ${result != 0 ? result.toStringAsFixed(2) : '0'}',
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                    color: CupertinoColors.white),
                placeholder: "Please enter the amount in USD",
                placeholderStyle: const TextStyle(
                  color: CupertinoColors.black,
                ),
                prefix: const Icon(CupertinoIcons.money_dollar),
              ),
              const SizedBox(
                height: 10,
              ),
              // button
              CupertinoButton(
                  onPressed: convert,
                  color: CupertinoColors.black,
                  child: const Text('Convert')),
            ],
          ),
        ),
      ),
    );
  }
}

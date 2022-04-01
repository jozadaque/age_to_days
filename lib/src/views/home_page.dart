import 'package:age_to_days/src/models/converter.dart';
import 'package:age_to_days/src/stories/converter_store.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController text = TextEditingController();
  ConverterStore controller = ConverterStore();
  late Converter age;

  @override
  void initState() {
    age = Converter.empty();
    controller.addListener(() {
      setState(() {});
    });
  }

  onPressed() {
    age = age.copyWith(age: int.parse(text.text));
    controller.converterAgeToDays(age);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Age to Day Conversor'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: text,
                decoration: const InputDecoration(
                    label: Text('Enter Age'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)))),
              ),
            ),
            ElevatedButton(
              onPressed: onPressed,
              child: const Text('Converter'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('Days: ${controller.result == 0 ? '' : controller.result}'),
          ],
        ),
      ),
    );
  }
}

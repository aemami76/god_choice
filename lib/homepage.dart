import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var c = Get.put(mycontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.green, Colors.blue])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.all(16),
                    ),
                    elevation: MaterialStatePropertyAll(20)),
                onPressed: c.qsnakbar,
                child: const Text(
                  '"Should I do it?"',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.all(16),
                    ),
                    elevation: MaterialStatePropertyAll(20)),
                onPressed: () => c.mysnakbar(),
                child: const Text(
                  '<Show me God wills>',
                  style: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: c.minus,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.remove,
                      size: 30,
                      color: Colors.yellow.shade600,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(16),
                      child: Obx(
                        () => Text(
                          "Choise count:\n${c.num}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w900),
                        ),
                      )),
                  FloatingActionButton(
                    onPressed: c.plus,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.yellow.shade500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

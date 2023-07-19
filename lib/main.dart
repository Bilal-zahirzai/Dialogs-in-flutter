import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(

      appBar: AppBar(title: Text('Dialog'),),
      body: myHomePage(),

    ),
  ));
}
class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  void showAlert(QuickAlertType quickAlert){
    QuickAlert.show(
        context: context,
        //if you want customize it you can use title and text
        // title: 'Success',
        // text: 'this is warning dialog',
        type: quickAlert,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){showAlert(QuickAlertType.success);}, child: Text('Success Alert')),
            ElevatedButton(onPressed: (){showAlert(QuickAlertType.error);}, child: Text('Error Alert')),
            ElevatedButton(onPressed: (){showAlert(QuickAlertType.confirm);}, child: Text('Confirm Alert')),
            ElevatedButton(onPressed: (){showAlert(QuickAlertType.warning);}, child: Text('Warning Alert')),
            ElevatedButton(onPressed: (){showAlert(QuickAlertType.loading);}, child: Text('Loading Alert')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:compSecure/kriptor.dart';

void main() {
  criptor("abc", "123");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ToEncrypt(),
        theme: ThemeData(
            primaryColor: Color(0xffF3F5FA),
            backgroundColor: Color(0xffF3F5FA),
            scaffoldBackgroundColor: Color(0xffF3F5FA),
            fontFamily: 'Source Sans Pro',
            appBarTheme: AppBarTheme(
              color: Colors.transparent,
              elevation: 0.0,
              centerTitle: true,
            )));
  }
}

class ToEncrypt extends StatelessWidget {
  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<void> popupWindow() async {
      await Future.delayed(Duration(seconds: 3));
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
                child: Container(
                    height: 150,
                    width: 300,
                    child: Column(children: [
                      Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Результат Зашифровки",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "ТУТ БУДЕТ РЕЗУЛЬТАТ",
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                          child: Container(
                        alignment: Alignment.bottomCenter,
                        margin:
                            EdgeInsets.only(bottom: 20, left: 10, right: 10),
                        child: RaisedButton(
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          child: Text("OK", style: TextStyle(fontSize: 18)),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ))
                    ])));
          }).then((vallue) {
        print('closed');
      });
    }

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            color: Color(0xff2A7EFD),
            onPressed: () {},
          ),
          title: Text(
            "Лабораторная #1",
            style: TextStyle(color: Colors.black, fontSize: 19),
          ),
        ),
        body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 15, top: 8),
                    child: Text(
                        "Введите сообщение которое необходимо зашифровать",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))),
                Container(
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        border: Border.all(color: Color(0xffFFFFFF)),
                        borderRadius: BorderRadius.circular(9.0)),
                    margin: EdgeInsets.only(left: 15, top: 17, right: 21),
                    child: Padding(
                        padding: EdgeInsets.only(left: 12, top: 16, bottom: 17),
                        child: TextFormField(
                          controller: inputController,
                          decoration: InputDecoration.collapsed(hintText: ''),
                        ))),
                Container(
                    margin: EdgeInsets.only(left: 18, right: 18, top: 21),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 52,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      onPressed: () {
                        popupWindow();
                      },
                      color: Color(0xff8EB8FF),
                      textColor: Color(0xffF3F5FA),
                      child: Text(
                        "",
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
              ],
            )));
  }
}

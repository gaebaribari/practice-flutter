import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController idController = TextEditingController();
  String message = '이곳에 입력값이 업데이트 됩니다';
  ValueNotifier<int> counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메인화면'),
      ),
      body: Column(
        children: [
          TextField(
            controller: idController,
            decoration: InputDecoration(
              labelText: '아이디를 입력해주세요',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              counter.value = 30;
            },
            child: Text('아이디 입력값 가져오기'),
          ),
          ValueListenableBuilder<int>(
              valueListenable: counter, builder: (context, value, child) {
          return Text('count $value');
          }),
          Text(message,
              style: TextStyle(
                fontSize: 30,
              )),
        ],
      ),
    );
  }
}

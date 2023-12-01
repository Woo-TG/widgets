import 'package:flutter/material.dart';

// - material 라이브러리 : Flutter 프레임워크 즉, SDK 포함된 모든 기본 위젯과 material 디자인 테마 요소들을 사용할 수 있다.<br>
// - material 디자인이란 모바일, 데스크 탑 등 다양한 디바이스를 아우르는 일관된 디자인을 위해서 구글이 제공한 가이드라인

void main() => runApp(const MyApp());

// - =>(fat arrow) : 코딩을 간결하게 하기 위한 기호, 여기서는 main함수가 다른 함수(runApp)를 호출한다는 뜻
// - runApp : 플러터에서 최상위에 위치한다.
// runApp은 반드시 위젯을 argument로 가져야 한다.
// runApp은 호출될 때마다 함수에 전달되는 어떠한 값을 가져야 하는데 그것이 위젯이어야 한다는 뜻
// - MyApp: 커스텀 위젯


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


// Widget build() : 모든 커스텀 위젯은 또다른 위젯을 리턴하는 build라는 함수를 가지고 있다.
// MaterialApp() : 앱을 만들기 위해 import한 material라이브러리를 사용할 수 있는 기능을 가진 위젯
// MaterialApp위젯은 반드시 argument들을 가져야 한다, flutter의 모든 위젯들이 argument들을 가진다.
// ThemeData() : app의 기본적인 테마를 지정하는 곳
// home : app이 정상적으로 실행되었을 때 가장 먼저 화면에 보여주는 경로

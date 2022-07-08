import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const Map<int, Color> color = {
    50: Color(0xFFEBF8FC),
    100: Color(0xFFCCEDF8),
    200: Color(0xFFAAE1F4),
    300: Color(0xFF88D4F0),
    400: Color(0xFF6FCBEC),
    500: Color(0xFF55C2E9),
    600: Color(0xFF4EBCE6),
    700: Color(0xFF44B4E3),
    800: Color(0xFF3BACDF),
    900: Color(0xFF2A9FD9),
  };

  final MaterialColor primeColor = const MaterialColor(0xFF55C2E9, color);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '江別 スイーツ',
      theme: ThemeData(
        primarySwatch: primeColor,
      ),
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  String _assetsText = '';

  void _onTapItem(int index) => setState(() => _selectedIndex = index);

  Future<String> loadAssetsTextFile(String name) async {
    return rootBundle.loadString('assets/$name');
  }

  @override
  Widget build(BuildContext context) {
    loadAssetsTextFile('app_desc.txt').then((text) => {
      setState(() {
        _assetsText = text;
      })
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '江別 スイーツ', 
          style: TextStyle(color: Colors.white,),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info, color: Colors.white,),
            tooltip: 'インフォメーション',
            onPressed: (){
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text(
                        'インフォメーション',
                        style: TextStyle(color: Colors.white,),
                      ),
                      iconTheme: const IconThemeData(color: Colors.white),
                    ),
                    body: Container(
                      margin: const EdgeInsets.all(15),
                      child: Text(
                        _assetsText,
                        style: TextStyle(color: Colors.grey[700],),
                      ),
                    ),
                  ); 
                },
              ));
            }, 
          ),
        ],
      ),
      body: <Widget>[
        Container(),
        Container(),
        Container(),
      ][_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // 選択中のindex
        onTap: _onTapItem, // タップで選択中のindexを変更
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.icecream,),
            activeIcon: Icon(Icons.icecream_outlined,),
            label: 'スイーツ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on,),
            activeIcon: Icon(Icons.location_on_outlined,),
            label: 'マップ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number,),
            activeIcon: Icon(Icons.confirmation_number_outlined,),
            label: 'クーポン',
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyHomePage(isLoading: true, counter: 0),
//   ));
//   // Scaffold.of(context).showBottomSheet(
//   //       (context) => Text('Flutter From Zero to Hero'),
//   // );
// }

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => HomePage(),
      '/widgets': (context) => WidgetsScreen(),
      '/assets': (context) => AssetsScreen(),
      '/view': (context) => ViewScreen(),
      '/viewgroup': (context) => ViewGroupScreen()
    },
  ));
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/widgets');
          },
          child: Text('widgets'),
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/assets');
          },
          child: Text('assets'),
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/view');
          },
          child: Text('view'),
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/viewgroup');
          },
          child: Text('viewgroup'),
        ),
      ],
      ),
    );
  }
}

class WidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WidgetsScreen'),
      ),
      body: new Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}

class AssetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AssetsScreen'),
      ),
      body: new Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
class ViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ViewScreen'),
      ),
      body: new Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}

class ViewGroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ViewGroupScreen'),
      ),
      body: new Center(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({
    required this.isLoading,
    required this.counter,
  });
  final bool isLoading;
  final int counter;
  @override
  State<StatefulWidget> createState() {
    return MyHomepageState();
    throw UnimplementedError();
  }
}

class MyHomepageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: CounterWidget(
          isLoading: widget.isLoading,
          counter: widget.counter,
        ),
      ),
      floatingActionButton: MyButtonWidget(),
    );
    throw UnimplementedError();
  }
  
}

class MyButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {
      Scaffold.of(context).showBottomSheet(
            (context) => Text('Flutter From Zero to Hero'),
      );
    });
  }
}

class CounterWidget extends StatelessWidget {

  const CounterWidget({
    required this.isLoading,
    required this.counter,
  });
  final int counter;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (isLoading) {
      return CircularProgressIndicator();
    } else {
      return Text('$counter');
    }
    throw UnimplementedError();
  }
}
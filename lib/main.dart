import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp( MaterialApp(
  //   home: SafeArea(
  //   child: Scaffold( appBar: AppBar(
  //       backgroundColor: Colors.pink, // set màu background cho app bar
  //       title: Text('Cua nàng Flutter') // title của app bar
  //     ),
  //       body: Center(child: Text('Hi, pls nice to me!')
  //         )
  //       ),
  //   ),
  // ));
  runApp(MaterialApp(
    home: MyHomePage(isLoading: true, counter: 0),
  ));
  // Scaffold.of(context).showBottomSheet(
  //       (context) => Text('Flutter From Zero to Hero'),
  // );
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: MyButtonWidget(),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    required this.isLoading,
    required this.counter,
  });
  final bool isLoading;
  final int counter;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
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
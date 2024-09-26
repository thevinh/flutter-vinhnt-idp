import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ViewGroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dateList = [
      {'date': '9/21 (±)',
        'date_description': '288',},
      {'date': '9/23 (A)',
        'date_description': '最終日',},
      {'date': '9/24（火）',
        'date_description': '388',},
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('ViewGroupScreen'),
      ),
      // body: new Center(
      //   child: FloatingActionButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: Text('Go Back'),
      //   ),
      // ),
      body: new RaceListDateTab(dateList: dateList,),
    );
  }
}



class RaceListTableView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class RaceListDateTab extends HookConsumerWidget {
   const RaceListDateTab(
      {Key? key,
        required this.dateList})
      : super(key: key);

  final  List<Map<dynamic, dynamic>> dateList;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    var borderWidth = 25.0;
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        onTap: () {
        },
        child: Container(
          margin: const EdgeInsets.only(left: 14.0),
          padding: const EdgeInsets.only(top: 10.0, right: 15.0, bottom: 15.0),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/icon/left_arrow.svg',
                color: Colors.grey,
                width: 6.0,
              ),
            ],
          ),
        ),
      ),
      for (int i = 0; i < dateList.length; i++)
        Expanded(child: RaceListDateTabItem(date: dateList[i]['date'], dateDescription: dateList[i]['date_description'], borderWidth: 25.0,)),
      InkWell(
        onTap: () {
        },
        child: Container(
          margin: const EdgeInsets.only(right: 14),
          padding: const EdgeInsets.only(top: 10, left: 15, bottom: 15),
          child: Row(
            children: [
              Transform.rotate(
                angle: 3.14,
                child: SvgPicture.asset(
                  'assets/icon/left_arrow.svg',
                  color: Colors.grey,
                  width: 6.0,
                ),
              ),
            ],
          ),
        ),
      ),
    ],);
    throw UnimplementedError();
  }
}

class RaceListDateTabItem extends HookConsumerWidget {
  const RaceListDateTabItem(
      {Key? key,
        required this.date,
        required this.dateDescription,
      required this.borderWidth,})
      : super(key: key);

  final String date;
  final String dateDescription;
  final double borderWidth;
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // TODO: implement build
    return Container(
      width: borderWidth,
      height: 50,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.red,
            width: 4.0,
          ),
        ),
      ),
      child:
      InkWell(
        onTap: () {
        },
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              date,
            ),
            Text(
              dateDescription,
            ),
          ],
        ),
      )
    );
    throw UnimplementedError();
  }
}

import 'package:flutter/material.dart';

class NewOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse('#F2F2F2'.replaceAll('#', '0xff'))),
      body: Card(
          // Even Margin On All Sides
          margin: EdgeInsets.all(10.0),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Text('F-16855991'),
              )
            ]),
            Row(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 1),
                  child: Image(image: AssetImage('assets/icons/profpic.png')),
                ),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 26.0,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 1),
                              child: Text(
                                'Jhony',
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                        Container(
                          height: 40.0,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(children: <Widget>[
                            Image(
                                image:
                                    AssetImage('assets/icons/ProfileOn.png')),
                            Spacer(flex: 1),
                            Text('4 Persons'),
                            Spacer(flex: 2),
                            Image(
                                image: AssetImage('assets/icons/minutes.png')),
                            Spacer(flex: 1),
                            Text('07:00'),
                            Spacer(flex: 2),
                          ]),
                        ),
                        Container(
                          height: 40.0,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(children: <Widget>[
                            Image(
                                image: AssetImage('assets/icons/calendar.png')),
                            Spacer(flex: 1),
                            Text('Saturday, February 6 2021'),
                            Spacer(flex: 1),
                          ]),
                        ),
                      ]),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image(
                              image: AssetImage('assets/icons/Group 781.png')),
                        ),
                        Text('Decline')
                      ]),
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image(
                              image: AssetImage('assets/icons/Group 192.png')),
                        ),
                        Text('Chat')
                      ]),
                    )),
                Flexible(
                    flex: 1,
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image(
                              image: AssetImage('assets/icons/Group 782.png')),
                        ),
                        Text('Accept')
                      ]),
                    )),
              ],
            ),
          ])),
    );
  }
}

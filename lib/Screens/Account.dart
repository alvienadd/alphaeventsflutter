import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0.4),
                child: Image(
                    image: AssetImage('assets/icons/bgheader_2.PNG'),
                    width: MediaQuery.of(context).size.width,
                    height: 90,
                    fit: BoxFit.fill),
              ),
              Positioned(
                bottom: -30.0,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/icons/profpic.png'),
                ),
              ),
            ]),
        ListTile(
          subtitle: Text(
            'change photo',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
            child: Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Vendor Name'),
                      ),
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: 'Eden')),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Last Name'),
                      ),
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: 'Cafe And Restaurant')),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Email'),
                      ),
                      TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              hintText: 'edenResto@gmail.com')),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Phone Number'),
                      ),
                      Container(
                          child: Row(children: <Widget>[
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 1.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                      //  isDense: true,
                                      //   contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      hintText: '+62')),
                            )),
                        Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 1.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                      //  isDense: true,
                                      //   contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      hintText: '+81')),
                            )),
                      ])),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Location'),
                      ),

                      Image(image: AssetImage('assets/icons/maps.png')),
                      GestureDetector(
                        child: Container(
                            margin: const EdgeInsets.only(top: 14.0),
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/icons/bgheader_2.PNG"),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Save",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ))),
                            onTap:(){
                              Navigator.of(context).pushNamed('/',arguments:'Dashboard Page');
                            }
                      )
                    ]))),
                    
      ],
    ),
    ));
  }
}

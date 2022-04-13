import 'package:flutter/material.dart';

class DEmoPage extends StatelessWidget {
  const DEmoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              child: const Text('showModalBottomSheet'),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      color: Colors.transparent,
                      height: MediaQuery.of(context).size.height / 2.5 + 30,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                color: Colors.red,
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: CircleAvatar(),
                          )
                        ],
                      ),
                    );
                  },
                );
              })
        ],
      ),
    );
  }

  Widget _builCounter() {
    return Container(
      height: 70,
      width: 150,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: <Color>[
              Color(0xffFFDD00),
              Color(0xffFBB034),
            ],
          ),
          borderRadius: BorderRadius.circular(19)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              '-',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              maxRadius: 40,
              child: Text('2',
                  style: TextStyle(
                      fontSize: 31,
                      // color: Colours.backColor,
                      fontWeight: FontWeight.w600)),
            ),
            Text(
              '+',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

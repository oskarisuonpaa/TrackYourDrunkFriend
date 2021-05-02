import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  final bool state = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(15.0),
          child: Text(
            "General settings",
            style: TextStyle(fontSize: 18)
        )),
        Container(
          constraints: BoxConstraints(minHeight: 300, maxWidth: 500),
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dark mode"),
                  Switch(
                    value: state,
                    onChanged: (state) {},
                  ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Give data for commercial use"),
                  Switch(
                    value: false,
                    onChanged: (state) {},
                  ),
                ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Allow mobile data usage"),
                  Switch(
                    value: false,
                    onChanged: (state) {},
                  ),
                ]),
            ],
          ),
          ),
        Container(
            margin: const EdgeInsets.all(15.0),
            child: Text(
                "About",
                style: TextStyle(fontSize: 18)
            )),
        Container(
          constraints: BoxConstraints(minHeight: 300, maxWidth: 500),
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Column(
            children: <Widget>[
              Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    Text("Terms and Privacy Policy"),
                  ]),
              Row(
                  children: [
                    Icon(
                      Icons.insert_drive_file,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    Text("Acknowledgments"),
                  ]),
              Row(
                  children: [
                    Icon(
                      Icons.help_center_outlined,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    Text("Help"),
                  ]),
              Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    Text("App info"),
                  ]),
            ],
          ),
        ),
      ]
    )
    );
  }
}


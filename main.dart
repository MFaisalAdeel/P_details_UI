import 'package:flutter/material.dart';
import 'package:property_detail/component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Property_Details(),
    );
  }
}

class Property_Details extends StatelessWidget {
  Property_Details({super.key});

  var _value = "-1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home_work_outlined,
          color: Colors.black,
        ),
        title: Text(
          "Property Details",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
      ),
      body: SafeArea(
        child: ListView(children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                property_button(
                    Icons: Icons.real_estate_agent_outlined, title: "House"),
                property_button(
                    Icons: Icons.corporate_fare_outlined, title: "Flat")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                property_button(
                    Icons: Icons.sell_outlined, title: "Upper/Lower Portion"),
                property_button(
                    Icons: Icons.access_alarm_outlined, title: "Farm House")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                property_button(
                    Icons: Icons.meeting_room_outlined, title: "Room"),
                property_button(
                    Icons: Icons.access_alarm_outlined, title: "Pent House")
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(children: [
                Icon(Icons.location_on_outlined),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "City",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 0)),
                    labelText: "Select City"),
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text("-Select City-"),
                    value: "-1",
                  ),
                  DropdownMenuItem(
                    child: Text("Karachi"),
                    value: "1",
                  ),
                  DropdownMenuItem(
                    child: Text("Hydrabad"),
                    value: "2",
                  ),
                  DropdownMenuItem(
                    child: Text("Lahore"),
                    value: "3",
                  ),
                  DropdownMenuItem(
                    child: Text("Quetta"),
                    value: "4",
                  ),
                ],
                onChanged: (v) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(children: [
                Icon(Icons.price_check_outlined),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Area Size & Price",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Area Size",
                  hintText: "120 Sq. Yard",
                  suffix: Text("Sq. Yard"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Price",
                  hintText: "Enter the Value",
                  suffix: Text("Rs."),
                ),
              ),
            )
          ]),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.network(
            "https://thenounproject.com/api/private/icons/1381714/edit/?backgroundShape=SQUARE&backgroundShapeColor=%23000000&backgroundShapeOpacity=0&exportSize=752&flipX=false&flipY=false&foregroundColor=%23000000&foregroundOpacity=1&imageFormat=png&rotation=0"),

        // child: Icon(Icons.vpn_key_outlined),
      ),
    );
  }
}

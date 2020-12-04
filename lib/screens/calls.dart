import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/call_model.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: call_dummy_data.length,
        itemBuilder: (context, index) => Column(
              children: [
                Divider(
                  height: 10,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage:
                        AssetImage(call_dummy_data[index].profilepic),
                  ),
                  title: Text(
                    call_dummy_data[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold, ),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      call_dummy_data[index].callicon,
                      Text(
                        call_dummy_data[index].datetime,
                        style: TextStyle(),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                )
              ],
            ));
  }
}

import 'package:contactlists/models/contact_model.dart';
import 'package:contactlists/utils/utils.dart';
import 'package:contactlists/view/styles/title_style.dart';
import 'package:flutter/material.dart';

class ListContainer extends StatefulWidget {
  final int idx;
  const ListContainer({Key? key, required this.idx}) : super(key: key);

  @override
  State<ListContainer> createState() => _ListContainerState();
}

class _ListContainerState extends State<ListContainer> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const CircleAvatar(
          radius: 26,
          child: Icon(
            Icons.person,
            size: 33,
          ),
        ),
        title: titleText(contactList[widget.idx]["Name"]),
        subtitle: Text(contactList[widget.idx]["Number"]),
        trailing: SizedBox(
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    contactList[widget.idx]["isSelected"] =
                        !contactList[widget.idx]["isSelected"];
                  });
                },
                child: Icon(Icons.favorite,
                    size: 32,
                    color: contactList[widget.idx]["isSelected"] == true
                        ? Colors.red
                        : Colors.black26),
              ),
              GestureDetector(
                onTap: () {
                  Utils.makePhoneCall(contactList[widget.idx]["Number"]);
                  // makePhoneCall(contactList[index]["Number"]);
                },
                child: const Icon(Icons.call, size: 32, color: Colors.green),
              )
            ],
          ),
        ));
  }
}

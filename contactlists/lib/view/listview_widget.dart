import 'package:contactlists/constants/color_constants.dart';

import 'package:contactlists/view/list_container.dart';
import 'package:flutter/material.dart';
import '../models/contact_model.dart';

class ListviewWidget extends StatefulWidget {
  const ListviewWidget({Key? key}) : super(key: key);

  @override
  State<ListviewWidget> createState() => _ListviewWidgetState();
}

class _ListviewWidgetState extends State<ListviewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: contactList
            .length, //item count specifies the length of contact lists
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(
                5), //to give spacing around element's border
            padding: const EdgeInsets.all(
                10), //to give spacing between element border and element content
            decoration: BoxDecoration(
                color: CColor.whiteColor,
                borderRadius: BorderRadius.circular(10)),
            child: ListContainer(
              idx: index,
            ),
          );
        });
  }
}

import 'package:coronasafe/font_data.dart';
import 'package:coronasafe/models/advices_data.dart';
import 'package:coronasafe/view_model/advices_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdviceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AdvicesModel>(
      builder: (context, data, child) {
        if (data.advicesData == null) {
          return Center(
            child: Text(
              'Please wait !',
              style: TextStyle(
                fontFamily: caviarDreams,
                color: Colors.black,
              ),
            ),
          );
        }

        return Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Advices from WHO',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: lemon,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: data.advicesData.list.length,
              itemBuilder: (context, index) {
                ListElement element = data.advicesData.list[index];
                return Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        '${element.image}',
                        height: 150,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '${element.title}',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: caviarDreams,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Divider(
                        height: 5,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

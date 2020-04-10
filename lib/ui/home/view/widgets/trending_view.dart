import 'package:coronasafe/font_data.dart';
import 'package:coronasafe/localization.dart';
import 'package:coronasafe/ui/home/view/components/state_details.dart';
import 'package:coronasafe/view_model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataModel>(
      builder: (context, data, child) {
        return data.regions.isNotEmpty
            ? RefreshIndicator(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey[100],
                              offset: Offset(0, 3),
                              blurRadius: 7,
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        margin: EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 0,
                          top: 16,
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '${AppLocalizations.of(context).affectedPeople}',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.red,
                                fontFamily: lemon,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              '${data.summary.confirmedCasesIndian + data.summary.confirmedCasesForeign}',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontFamily: caviarDreams,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 16),
                            Text(
                              '${AppLocalizations.of(context).discharged}',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                                fontFamily: lemon,
                              ),
                            ),
                            Text(
                              '${data.summary.discharged}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: caviarDreams,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              '${AppLocalizations.of(context).deaths}',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueGrey,
                                fontFamily: lemon,
                              ),
                            ),
                            Text(
                              '${data.summary.deaths}',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: caviarDreams,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 350,
                        child: PageView.builder(
                          controller: PageController(
                              viewportFraction: 0.95,
                              initialPage: data.selectedItem),
                          itemCount: data.regions.length,
                          itemBuilder: (context, index) {
                            return StateDetails(
                              regional: data.regions[index],
                              favItem: data.favItem,
                              dataModel: data,
                              index: index,
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                onRefresh: () {
                  return data.getData();
                },
              )
            : Center(
                child: Text(
                  'Please wait !',
                  style: TextStyle(fontFamily: caviarDreams),
                ),
              );
      },
    );
  }
}

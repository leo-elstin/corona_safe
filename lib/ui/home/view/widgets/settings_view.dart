import 'package:coronasafe/font_data.dart';
import 'package:coronasafe/localization.dart';
import 'package:coronasafe/view_model/app_langunage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<AppLanguage>(context);
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SafeArea(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                AppLocalizations.of(context).chooseLang,
                                style: TextStyle(
                                    fontSize: 16, fontFamily: caviarDreams),
                              ),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: appLanguage.languages.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                    appLanguage.languages[index].fullName,
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: caviarDreams),
                                  ),
                                  onTap: () {
                                    appLanguage.changeLanguage(
                                      Locale(appLanguage.languages[index].code),
                                    );
                                  },
                                  trailing: appLanguage.appLocal.languageCode ==
                                          appLanguage.languages[index].code
                                      ? Icon(Icons.check_circle)
                                      : null,
                                );
                              },
                            ),
                            Spacer(),
                            FlatButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(
                                '${AppLocalizations.of(context).submit}',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontFamily: lemon,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[
                    Text(
                      '${AppLocalizations.of(context).chooseLang}',
                      style: TextStyle(fontSize: 16, fontFamily: caviarDreams),
                    ),
                    Spacer(),
                    Text(
                      ' ${appLanguage.getSelectedLang()}',
                      style: TextStyle(fontSize: 18, fontFamily: caviarDreams),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

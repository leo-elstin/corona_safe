import 'package:coronasafe/font_data.dart';
import 'package:coronasafe/localization.dart';
import 'package:coronasafe/models/country_report.dart';
import 'package:coronasafe/view_model/data_model.dart';
import 'package:flutter/material.dart';

class StateDetails extends StatelessWidget {
  final Regional regional;
  final String favItem;
  final DataModel dataModel;
  final int index;

  const StateDetails(
      {Key key, this.regional, this.favItem, this.dataModel, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text(
                  '${regional.loc.toUpperCase()}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontFamily: lemon,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  dataModel.favItem != regional.loc
                      ? Icons.favorite_border
                      : Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {
                  dataModel.setFavItem(regional.loc, index);
                },
              )
            ],
          ),
          SizedBox(height: 4),
          Row(
            children: <Widget>[
              _getStatus(
                Colors.red,
                Colors.red[100],
                title: '${AppLocalizations.of(context).confirmed}',
                count:
                    '${regional.confirmedCasesForeign + regional.confirmedCasesIndian}',
              ),
              _getStatus(
                Colors.green,
                Colors.green[100],
                title: '${AppLocalizations.of(context).active}',
                count:
                    '${regional.confirmedCasesForeign + regional.confirmedCasesIndian - regional.discharged - regional.deaths}',
              ),
            ],
          ),
          Row(
            children: <Widget>[
              _getStatus(
                Colors.blue,
                Colors.blue[100],
                title: '${AppLocalizations.of(context).discharged}',
                count: regional.discharged.toString(),
              ),
              _getStatus(
                Colors.black,
                Colors.black26,
                title: '${AppLocalizations.of(context).deaths}',
                count: regional.deaths.toString(),
              ),
            ],
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _getStatus(Color colors, Color bg, {String title, String count}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: bg,
        ),
        margin: EdgeInsets.all(8),
        height: 80,
        child: Opacity(
          opacity: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Text(
                  '$title',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: colors,
                    fontFamily: lemon,
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Expanded(
                child: Text(
                  '$count',
                  style: TextStyle(
                      fontSize: 25,
                      color: colors,
                      fontFamily: caviarDreams,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

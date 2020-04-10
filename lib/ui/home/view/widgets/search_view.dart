import 'package:coronasafe/ui/home/view/components/state_details.dart';
import 'package:coronasafe/view_model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Consumer<DataModel>(
      builder: (context, data, child) {
        return Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: TextField(
                  onChanged: (value) {
                    data.searchWord = value.toString();
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 8),
                    prefixIcon: Icon(Icons.search),
                    suffix: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        // Clears the Text field
                        controller.clear();
                        // Hides the keyboard
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                    ),
                    hintText: 'Search',
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.regions.length,
                    itemBuilder: (context, index) {
                      if (data.regions[index].loc
                          .toLowerCase()
                          .contains(data.searchWord.toLowerCase()))
                        return StateDetails(
                          regional: data.regions[index],
                          favItem: data.favItem,
                          dataModel: data,
                          index: index,
                        );
                      return Container();
                    }),
              )
            ],
          ),
        );
      },
    );
  }
}

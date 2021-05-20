import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/company/index.dart';
import 'package:food_delivery_admin/src/containers/company/meniu_container.dart';
import 'package:food_delivery_admin/src/models/companies/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/presentation/daily_menu/category_widget.dart';

class DailyMeniuPage extends StatelessWidget {
  const DailyMeniuPage();

  @override
  Widget build(BuildContext context) {
    return MeniuContainer(
      builder: (BuildContext context, Meniu? meniu) {
        print(meniu?.items.length);
        return Scaffold(
          appBar: AppBar(
            title: const Text('Meniul zilei'),
            centerTitle: true,
            elevation: 0,

            actions: <Widget>[
              TextButton(
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(const PublishMeniu());
                },
                child: const Text(
                  'SALVEAZA',
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
          body: meniu == null
              ? Center(
                  child: Container(
                    child: const Text('Nu exista meniu'),
                  ),
                )
              : ListView.builder(
                  itemCount: meniu.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: CategoryWidget(index),
                    );
                  },
                ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              showDialog<AlertDialog>(
                context: context,
                builder: (BuildContext context) {
                  final TextEditingController _cat = TextEditingController();
                  return AlertDialog(
                    title: const Text('Adauga o categorie'),
                    content: TextField(
                      controller: _cat,
                      decoration: const InputDecoration(
                        labelText: 'nume categorie',
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('ADAUGA'),
                        onPressed: () {
                          final DocumentReference<Map<String, dynamic>> ref = FirebaseFirestore.instance.collection('NOT USE').doc();
                          final MeniuItem add = MeniuItem((MeniuItemBuilder b) => b
                            ..id = ref.id
                            ..category = _cat.text);
                          StoreProvider.of<AppState>(context).dispatch(UpdateCategories(add: add));
                          Navigator.pop(context);
                        },
                      ),
                      TextButton(
                        child: const Text('ANULEAZA'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}

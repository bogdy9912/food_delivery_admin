import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';

class AddSavedDishPage extends StatefulWidget {
  const AddSavedDishPage();

  @override
  _AddSavedDishPageState createState() => _AddSavedDishPageState();
}

class _AddSavedDishPageState extends State<AddSavedDishPage> {
  final TextEditingController _name = TextEditingController();

  final TextEditingController _description = TextEditingController();

  final TextEditingController _price = TextEditingController();

  final TextEditingController _quantity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Builder(
        builder:(BuildContext context) => Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(hintText: 'name'),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Va rugam sa introduce-ti un nume';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _description,
                  decoration: const InputDecoration(hintText: 'descriere produs'),
                ),
                TextFormField(
                  controller: _price,
                  decoration: const InputDecoration(hintText: 'pret'),
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))],
                  keyboardType: const TextInputType.numberWithOptions(),
                  validator: (String? value) {
                    if (value == null || value.isEmpty || double.tryParse(value) == null) {
                      return 'Pret invalid';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _quantity,
                  decoration: const InputDecoration(hintText: 'cantitate'),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))],
                  validator: (String? value) {
                    if (value == null || value.isEmpty || double.tryParse(value) == null) {
                      return 'Cantitate invalida';
                    }
                    return null;
                  },
                ),
                TextButton(
                  onPressed: () {
                    final bool valid = Form.of(context)!.validate();
                    if (valid) {
                                StoreProvider.of<AppState>(context)
                                    .dispatch(AddSavedDishes(name: _name.text, description: _description.text, price: _price.text, quantity: _quantity.text, image: null));
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('adauga'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

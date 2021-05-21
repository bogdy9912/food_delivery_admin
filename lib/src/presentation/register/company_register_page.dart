import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/actions/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/presentation/app_routes.dart';

class CompanyRegisterPage extends StatefulWidget {
  const CompanyRegisterPage();

  @override
  _CompanyRegisterPageState createState() => _CompanyRegisterPageState();
}

class _CompanyRegisterPageState extends State<CompanyRegisterPage> {
  final TextEditingController _companyName = TextEditingController();
  final TextEditingController _openHour = TextEditingController();
  final TextEditingController _closeHour = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _paymentMethods = TextEditingController();
  final TextEditingController _deliveryOptions = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _deliveryFee = TextEditingController();
  final TextEditingController _deliveryThreshold = TextEditingController();
  final TextEditingController _deliveryFeeThreshold = TextEditingController();

  void _response(AppAction action) {
    if (action is RegisterError) {
      print('error + ${action.error}');
    } else if (action is RegisterSuccessful) {
      print('nu da eroare');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('company register'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _companyName,
              decoration: const InputDecoration(hintText: 'nume companie'),
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              controller: _address,
              decoration: const InputDecoration(hintText: 'address'),
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              controller: _city,
              decoration: const InputDecoration(hintText: 'city'),
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              controller: _openHour,
              decoration: const InputDecoration(hintText: 'open hours'),
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              controller: _closeHour,
              decoration: const InputDecoration(hintText: 'close hour'),
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              controller: _paymentMethods,
              decoration: const InputDecoration(hintText: 'payment methods'),
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              controller: _deliveryOptions,
              decoration: const InputDecoration(hintText: 'delivery options'),
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              controller: _deliveryFee,
              decoration: const InputDecoration(hintText: 'taxa livrare'),
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              controller: _deliveryThreshold,
              decoration: const InputDecoration(hintText: 'prag livrare'),
              textInputAction: TextInputAction.next,
            ),
            TextFormField(
              controller: _deliveryFeeThreshold,
              decoration: const InputDecoration(hintText: 'prag pret livrare'),
            ),
            TextButton(
              onPressed: () {
                print(double.parse(_deliveryFee.text));
                print(double.parse(_deliveryThreshold.text));
                print(double.parse(_deliveryFeeThreshold.text));
                print('+' + _companyName.text);
                print('+' + _address.text);
                print('+' + _city.text);
                print('+' + _openHour.text);
                print('+' + _closeHour.text);
                StoreProvider.of<AppState>(context)
                    .dispatch(UpdateRegistrationInfo(
                  companyName: _companyName.text,
                  address: _address.text,
                  city: _city.text,
                  openHour: _openHour.text,
                  closeHour: _closeHour.text,
                  deliveryFee: double.parse(_deliveryFee.text),
                  deliveryThreshold: double.parse(_deliveryThreshold.text),
                  deliveryFeeThreshold:
                      double.parse(_deliveryFeeThreshold.text),
                ));
                Navigator.pushNamed(context, AppRoutes.home);
                StoreProvider.of<AppState>(context)
                    .dispatch(Register(_response));
              },
              child: const Text('continua'),
            ),
          ],
        ),
      ),
    );
  }
}

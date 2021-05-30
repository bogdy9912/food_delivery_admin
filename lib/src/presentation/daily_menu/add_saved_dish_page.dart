import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_delivery_admin/src/actions/auth/index.dart';
import 'package:food_delivery_admin/src/models/index.dart';
import 'package:food_delivery_admin/src/presentation/mixin/dialog_mixin.dart';
import 'package:image_picker/image_picker.dart';

class AddSavedDishPage extends StatefulWidget {
  const AddSavedDishPage([this.dish]);

  final Dish? dish;

  @override
  _AddSavedDishPageState createState() => _AddSavedDishPageState();
}

class _AddSavedDishPageState extends State<AddSavedDishPage> with DialogMixin {
  final TextEditingController _name = TextEditingController();

  final TextEditingController _description = TextEditingController();

  final TextEditingController _price = TextEditingController();

  final TextEditingController _quantity = TextEditingController();
  File? _image;
  String? _imagePath;
  final ImagePicker picker = ImagePicker();
  bool _hasMultipleChoice = false;
  List<DishChoice> _listOfCategories = <DishChoice>[];

  @override
  void initState() {
    super.initState();
    if (widget.dish != null) {
      _name.text = widget.dish!.name;
      if (widget.dish!.description != null) {
        _description.text = widget.dish!.description!;
      }
      _price.text = widget.dish!.price.toString();
      _quantity.text = widget.dish!.quantity.toString();
      _hasMultipleChoice = widget.dish!.hasMultipleChoice;
      _listOfCategories = widget.dish!.choices.toList();
      _imagePath = widget.dish!.image;

      print(_hasMultipleChoice);
      print(_listOfCategories);
    }
  }

  Future<void> getImage() async {
    final PickedFile? pickedFile =
        await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Builder(
        builder: (BuildContext context) => Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
                    decoration:
                        const InputDecoration(hintText: 'descriere produs'),
                  ),
                  TextFormField(
                    controller: _price,
                    decoration: const InputDecoration(hintText: 'pret'),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(
                          RegExp(r'^(\d+)?\.?\d{0,2}'))
                    ],
                    keyboardType: const TextInputType.numberWithOptions(),
                    validator: (String? value) {
                      if (value == null ||
                          value.isEmpty ||
                          double.tryParse(value) == null) {
                        return 'Pret invalid';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _quantity,
                    decoration: const InputDecoration(hintText: 'cantitate'),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(
                          RegExp(r'^(\d+)?\.?\d{0,2}'))
                    ],
                    validator: (String? value) {
                      if (value == null ||
                          value.isEmpty ||
                          int.tryParse(value) == null) {
                        return 'Cantitate invalida';
                      }
                      return null;
                    },
                  ),
                  Row(
                    children: <Widget>[
                      const Text('Are componente personalizabile? '),
                      Checkbox(
                          value: _hasMultipleChoice,
                          onChanged: (bool? value) {
                            setState(() {
                              if (value != null) {
                                _hasMultipleChoice = value;
                              }
                            });
                          }),
                    ],
                  ),
                  ...List<Widget>.generate(
                    _listOfCategories.length,
                    (int index) => Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(_listOfCategories[index].name),
                          trailing: IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              final TextEditingController _choice =
                                  TextEditingController();
                              showDialog<Widget>(
                                context: context,
                                builder: (BuildContext context) =>
                                    StatefulBuilder(
                                  builder: (BuildContext context,
                                      StateSetter setStateAlert) {
                                    String? err;
                                    return AlertDialog(
                                      title: const Text('Adauga optiune'),
                                      content: TextField(
                                        controller: _choice,
                                        decoration: InputDecoration(
                                          hintText: 'ketchup',
                                          errorText: err,
                                        ),
                                      ),
                                      actions: <TextButton>[
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('anuleaza')),
                                        TextButton(
                                            onPressed: () {
                                              if (_choice.text.isEmpty) {
                                                setStateAlert(() {
                                                  err =
                                                      'Nu ai introdus nicio valoare';
                                                });
                                              } else {
                                                setState(() {
                                                  _listOfCategories[
                                                      index] = _listOfCategories[
                                                          index]
                                                      .rebuild(
                                                          (DishChoiceBuilder
                                                                  b) =>
                                                              b.options.add(
                                                                  _choice
                                                                      .text));
                                                  Navigator.pop(context);
                                                });
                                              }
                                            },
                                            child: const Text('adauga')),
                                      ],
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                        ...List<Text>.generate(
                            _listOfCategories[index].options.length,
                            (int indexOptions) {
                          final String option =
                              _listOfCategories[index].options[indexOptions];
                          return Text(option);
                        })
                      ],
                    ),
                  ),
                  if (_hasMultipleChoice)
                    ElevatedButton(
                        onPressed: () {
                          showDialog<Widget>(
                            context: context,
                            builder: (BuildContext context) {
                              final TextEditingController _category =
                                  TextEditingController();
                              final TextEditingController _min =
                                  TextEditingController();
                              final TextEditingController _max =
                                  TextEditingController();
                              return Form(
                                child: AlertDialog(
                                  title: const Text('Adauga categorie'),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      children: <Widget>[
                                        TextFormField(
                                            controller: _category,
                                            decoration: const InputDecoration(
                                              hintText:
                                                  'Salate, sosuri, etc...',
                                            ),
                                            validator: (String? value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Nu ai introdus nicio valoare';
                                              }
                                              return null;
                                            }),
                                        TextFormField(
                                            controller: _min,
                                            decoration: const InputDecoration(
                                              hintText:
                                                  'Nr min de optiuni obligatorii',
                                            ),
                                            validator: (String? value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Nu ai introdus nicio valoare';
                                              } else if (int.tryParse(value) ==
                                                  null) {
                                                return 'Nu ai introdus un numar';
                                              }

                                              return null;
                                            }),
                                        TextFormField(
                                            controller: _max,
                                            decoration: const InputDecoration(
                                              hintText:
                                                  'Nr max de optiuni pe care le poate alege',
                                            ),
                                            validator: (String? value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Nu ai introdus nicio valoare';
                                              } else if (int.tryParse(value) ==
                                                  null) {
                                                return 'Nu ai introdus un numar';
                                              } else if (int.parse(value) <
                                                  int.parse(_min.text)) {
                                                return 'Nr max trb sa fie mai mare decat min';
                                              }
                                              return null;
                                            }),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('anuleaza'),
                                    ),
                                    Builder(
                                      builder: (BuildContext context) =>
                                          TextButton(
                                        onPressed: () {
                                          final bool valid =
                                              Form.of(context)!.validate();
                                          if (valid) {
                                            setState(() {
                                              _listOfCategories.add(DishChoice(
                                                (DishChoiceBuilder b) => b
                                                  ..name = _category.text
                                                  ..min = int.parse(_min.text)
                                                  ..max = int.parse(_max.text),
                                              ));
                                            });
                                            Navigator.pop(context);
                                          }
                                        },
                                        child: const Text('adauga'),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: const Text('Adauga Categorie')),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
//                      color: _image == null ? Colors.black : Colors.blueAccent,
                        child: _image != null
                            ? Image.file(
                                _image!,
                                width: 50,
                                height: 50,
                              )
                            : _imagePath != null
                                ? Image.network(_imagePath!)
                                : null,
                      ),
                      ElevatedButton(
                        onPressed: getImage,
                        child: const Text('selectImage'),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      final bool valid = Form.of(context)!.validate();
                      bool validExtra = true;
                      if (_hasMultipleChoice) {
                        for (final DishChoice cat in _listOfCategories) {
                          validExtra = validExtra &&
                              cat.options.length >= cat.min &&
                              cat.options.length >= cat.max;
                        }
                      }
                      if ((valid && _hasMultipleChoice == false) ||
                          (valid && _hasMultipleChoice && validExtra)) {
                        if (widget.dish == null) {
                          StoreProvider.of<AppState>(context)
                              .dispatch(AddSavedDishes(
                            name: _name.text,
                            description: _description.text,
                            price: _price.text,
                            quantity: _quantity.text,
                            image: _image!.path,
                            choices: _listOfCategories,
                            hasMultipleChoice: _hasMultipleChoice,
                          ));
                        } else if (widget.dish != null) {
                          StoreProvider.of<AppState>(context)
                              .dispatch(EditSavedDishes(
                            id: widget.dish!.id,
                            name: _name.text,
                            description: _description.text,
                            price: _price.text,
                            quantity: _quantity.text,
                            image: widget.dish!.image,
                            choices: widget.dish!.choices.toList(),
                            hasMultipleChoice: _hasMultipleChoice,
                          ));
                        }
                        Navigator.pop(context);
                      } else {
                        if (_hasMultipleChoice && _listOfCategories.isEmpty) {
                          showErrorDialog(
                              context: context,
                              title: 'Eroare',
                              error:
                                  'Ai selectat ca produsul este personalizabil, dar nu ai adaugat optiuni de personalizare');
                        } else if (_hasMultipleChoice && validExtra == false) {
                          showErrorDialog(
                              context: context,
                              title: 'Eroare',
                              error:
                                  'Una dintre optiuni are nr min mai mare decat numarul total de optiuni sau nr max este mai mare decat numarul total de optiuni');
                        }
                      }
                    },
                    child: Text(widget.dish == null ? 'adauga' : 'editeaza'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

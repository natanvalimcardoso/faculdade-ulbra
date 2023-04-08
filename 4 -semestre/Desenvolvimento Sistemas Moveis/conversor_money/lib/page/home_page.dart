// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:validatorless/validatorless.dart';
import '../controller/home_controller.dart';
import '../shared/controller/app_controller.dart';
import 'widget/textfield_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _valueController = TextEditingController();
  final TextEditingController _cotacaoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final HomeController controller = HomeController();

  String converterText = 'Digite o valor a ser convertido: ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversor de Moedas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.light_mode),
            onPressed: () {
              final themeController = Provider.of<ThemeController>(context, listen: false);
              themeController.themeModeOption = ThemeModeOption.light;
            },
          ),
          IconButton(
            icon: const Icon(Icons.dark_mode),
            onPressed: () {
              final themeController = Provider.of<ThemeController>(context, listen: false);
              themeController.themeModeOption = ThemeModeOption.dark;
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text('Cotação digitada: R\$ ${_cotacaoController.text}'),
              Text('Valor a ser convertido: R\$ ${_valueController.text}'),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  converterText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 36),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormInput(
                  validator: Validatorless.multiple([
                    Validatorless.required('É necessário digitar o valor da cotação'),
                  ]),
                  controller: _cotacaoController,
                  labelText: 'Cotação',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormInput(
                  validator: Validatorless.multiple([
                    Validatorless.required('É necessário digitar o valor a ser convertido'),
                  ]),
                  controller: _valueController,
                  labelText: 'Valor a ser convertido',
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          converterText = 'Você converteu dolar para real';
                        });
                        controller.convertDollarToReal(
                          cotacaoController: _cotacaoController.text,
                          valueController: _valueController.text,
                        );
                        controller.clearText(
                          cotacaoController: _cotacaoController,
                          valueController: _valueController,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(),
                    child: const Text('Converter Dolar para Real'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          converterText = 'Você converteu real para dolar';
                        });
                        controller.convertRealToDollar(
                          cotacaoController: _cotacaoController.text,
                          valueController: _valueController.text,
                        );
                        controller.clearText(
                          cotacaoController: _cotacaoController,
                          valueController: _valueController,
                        );
                      }
                    },
                    child: const Text('Real para Dolar'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          converterText = 'Você converteu Bitcoin para real';
                        });
                        controller.convertBitcoinToReal(
                          cotacaoController: _cotacaoController.text,
                          valueController: _valueController.text,
                        );
                        controller.clearText(
                          cotacaoController: _cotacaoController,
                          valueController: _valueController,
                        );
                      }
                    },
                    child: const Text(
                      'Bitcoin para Real',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 156),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.titleSmall,
                  children: [
                    const TextSpan(
                      text: 'O valor convertido ficou: ',
                      style: TextStyle(),
                    ),
                    TextSpan(
                      text: controller.result.toStringAsFixed(2),
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

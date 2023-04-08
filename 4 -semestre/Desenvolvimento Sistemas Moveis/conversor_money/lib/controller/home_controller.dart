import 'package:flutter/material.dart';

class HomeController {
  double result = 0;

   convertDollarToReal({required String cotacaoController, required String valueController}) {
    double cotacaoControllerConvert = double.tryParse(cotacaoController) ?? 0;
    double dollar = double.tryParse(valueController) ?? 0;
    result = dollar * cotacaoControllerConvert;
    return result;
  }

  //real for dollar

  convertRealToDollar({required String cotacaoController, required String valueController}) {
    double cotacaoControllerConvert = double.tryParse(cotacaoController) ?? 0;
    double real = double.tryParse(valueController) ?? 0;
    result = real / cotacaoControllerConvert;
    return result;
  }

  //bitcoin for real

  convertBitcoinToReal({required String cotacaoController, required String valueController}) {
    double cotacaoControllerConvert = double.tryParse(cotacaoController) ?? 0;
    double bitcoin = double.tryParse(valueController) ?? 0;
    result = bitcoin * cotacaoControllerConvert;
    return result;
  }


  clearText({required TextEditingController cotacaoController, required TextEditingController valueController}) {
    cotacaoController.clear();
    valueController.clear();
  }
}

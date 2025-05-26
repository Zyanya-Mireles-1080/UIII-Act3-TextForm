import 'package:flutter/material.dart';
import 'package:myapp/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productIdController = TextEditingController();
  final _productController = TextEditingController();
  final _productTelController = TextEditingController();
  final _productCorController = TextEditingController();
  final _productDirController = TextEditingController();
  final _productTipController = TextEditingController();
  final _productRefController = TextEditingController();

  @override
  void dispose() {
    _productIdController.dispose();
    _productController.dispose();
    _productTelController.dispose();
    _productCorController.dispose();
    _productDirController.dispose();
    _productTipController.dispose();
    _productRefController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 192, 158, 66),
            title: const Text("Formulario", style: TextStyle(color: Colors.white)),
            centerTitle: true),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              MyTextField(
                  myController: _productIdController,
                  fieldName: "id_proveedor",
                  myIcon: Icons.numbers_outlined,
                  prefixIconColor: const Color.fromARGB(255, 192, 158, 66)),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _productController,
                  fieldName: "Nombre",
                  myIcon: Icons.assignment_ind_sharp,
                  prefixIconColor: const Color.fromARGB(255, 192, 158, 66)),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _productTelController,
                  fieldName: "Teléfono",
                  myIcon: Icons.ring_volume,
                  prefixIconColor: const Color.fromARGB(255, 192, 158, 66)),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: _productCorController,
                  fieldName: "Correo",
                  myIcon: Icons.mail_outlined,
                  prefixIconColor: const Color.fromARGB(255, 192, 158, 66)),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _productDirController,
                  fieldName: "Dirección",
                  myIcon: Icons.map_outlined,
                  prefixIconColor: const Color.fromARGB(255, 192, 158, 66)),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _productTipController,
                  fieldName: "Tipo_pago",
                  myIcon: Icons.money_outlined,
                  prefixIconColor: const Color.fromARGB(255, 192, 158, 66)),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _productRefController,
                  fieldName: "Ref_pago",
                  myIcon: Icons.payment_outlined,
                  prefixIconColor: const Color.fromARGB(255, 192, 158, 66)),
              const SizedBox(height: 10.0),
              myBtn(context),
            ],
          ),
        ));
  }

  //Function that returns OutlinedButton Widget also it pass data to Details Screen
  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              productId: _productIdController.text,
              productName: _productController.text,
              productTelefono: _productTelController.text,
              productCorreo: _productCorController.text,
              productDireccion: _productDirController.text,
              productTipo: _productTipController.text,
              productRef: _productRefController.text,
            );
          }),
        );
      },
      child: Text(
        "Enviar Formulario".toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromARGB(255, 192, 158, 66)),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          labelText: fieldName,
          prefixIcon: Icon(myIcon, color: prefixIconColor),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: const Color.fromARGB(255, 192, 158, 66)),
          ),
          labelStyle: const TextStyle(color: Color.fromARGB(255, 192, 158, 66)),
      )
    );
  }
}

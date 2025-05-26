import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details(
      {Key? key, required this.productId, required this.productName, required this.productTelefono, required this.productCorreo, required this.productDireccion, required this.productTipo, required this.productRef})
      : super(key: key);

  final String productId, productName, productTelefono, productCorreo, productDireccion, productTipo, productRef;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Detalles de Proovedor",
          ),
          //Pop and navigate to previous screen
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: const Color.fromARGB(255, 253, 244, 250),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey.shade300),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dataRow("ID Proveedor:", productId),
                dataRow("Nombre:", productName),
                dataRow("Teléfono:", productTelefono),
                dataRow("Correo:", productCorreo),
                dataRow("Dirección:", productDireccion),
                dataRow("Tipo de pago:", productTipo),
                dataRow("Ref. de pago:", productRef),
              ],
            ),
          ),
        ),
      ),);
  }
  Widget dataRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.label_important, size: 18, color: Color.fromARGB(255, 192, 158, 66)),
          const SizedBox(width: 8),
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(value),
          ),
        ],
      ),
    );
  }
}

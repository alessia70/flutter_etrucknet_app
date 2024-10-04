import 'package:flutter/material.dart';

class CondividiStima extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final Map<String, dynamic> estimate;

  CondividiStima({required this.estimate, super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Vuoi condividere la stima?'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Inserisci l\'email per inviare la stima:',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Inserisci email',
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Annulla'),
        ),
        TextButton(
          onPressed: () {
            // Logica per inviare la stima via email
            _sendEstimateByEmail(_emailController.text, estimate);
            Navigator.of(context).pop();
          },
          child: Text('Condividi', style: TextStyle(color: Colors.orange)),
        ),
      ],
    );
  }

  void _sendEstimateByEmail(String email, Map<String, dynamic> estimate) {
    // Implementa la logica per inviare la stima via email
    print('Inviando stima a: $email');
    print('Dati della stima: ${estimate.toString()}');
  }
}
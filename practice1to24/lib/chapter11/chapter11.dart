import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({super.key});

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AlertDialog')),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext con) {
                  return AlertDialog(
                    title: const Text('AlertDialog Title'),
                    content: Container(child: const Text('Dialog Content')),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // 다이얼로그 닫기
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Button'),
          ),
        ),
      ),
    );
  }
}

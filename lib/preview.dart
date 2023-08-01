import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
class Preview extends StatelessWidget {
  const Preview({required this.ui,required this.path,required this.title,super.key});
  final Widget ui;
  final String path;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: WidgetWithCodeView(
        filePath: path,
        child: ui,
      ),
    );
  }
}

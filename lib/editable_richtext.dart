library editable_richtext;

import 'package:editable_richtext/src/app_state.dart';
import 'package:editable_richtext/src/app_state_manager.dart';
import 'package:editable_richtext/src/basic_text_field.dart';
import 'package:editable_richtext/src/formatting_toolbar.dart';
import 'package:editable_richtext/src/replacements.dart';
import 'package:flutter/material.dart';

class EditableRichText extends StatelessWidget {
  const EditableRichText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const AppStateWidget(child: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ReplacementTextEditingController _replacementTextEditingController;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _replacementTextEditingController = ReplacementTextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _replacementTextEditingController =
        AppStateManager.of(context).appState.replacementsController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(
              child: BasicTextField(
            controller: _replacementTextEditingController,
            style: const TextStyle(fontSize: 18.0, color: Colors.black),
            focusNode: _focusNode,
          )),
          const FormattingToolbar(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:widgetgallery/models/models.dart';
class _GendersControlState extends State<GendersControl> {
    Gender? _gender = Gender.notSpecify;
    const GendersControl({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
        return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                const Text('Select a Gender'),
                const Divider(),
                RadioListTile(
                    value: Gender.female,
                    groupValue: _gender,
                    onChanged: (Gender? value) {1},
                    title: const Text('Female'),
                ),
            RadioListTile(
                    value: Gender.male,
                    groupValue: _gender,
                    onChanged: (Gender? value){2},
                    title: const Text('Male'),
                ),
            RadioListTile(
                    value: Gender.notSpecify,
                    groupValue: _gender,
                    onChanged: (Gender? value) {3},
                    title: const Text('Prefer not specify'),
                )
            ],
        );
    }
}
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meta/meta.dart';

part 'form_screen.freezed.dart';

final RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)+$');

final emailProvider = StateProvider.autoDispose<String>((_) => null);
final passwordProvider = StateProvider.autoDispose<String>((_) => null);

final emailValdator = StateProvider.autoDispose<FormInput>((ref) {
  final email = ref.watch(emailProvider).state;
  if (email == null) {
    return FormInput.initial();
  }
  return FormInput(email, emailRegExp.hasMatch(email) ? null : 'Input correct email');
});

final passwordValdator = StateProvider.autoDispose<FormInput>((ref) {
  final password = ref.watch(passwordProvider).state;
  return FormInput(password, emailRegExp.hasMatch(password) ? null : 'Input correct email');
});

final formProvider = StateNotifierProvider<FormNotifier>((ref) {
  return FormNotifier(ref: ref);
});

class FormNotifier extends StateNotifier {
  FormNotifier({@required ProviderReference ref}) :
  _ref = ref, super(false);

   final ProviderReference _ref;

}

class FormScreen extends StatelessWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (context) => FormScreen(),
    );
  }

  const FormScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Consumer(
                builder: (context, watch, child) {
                  final emailFormInput = watch(emailValdator).state;
                  return TextField(
                    decoration: InputDecoration(
                      errorText: emailFormInput.when(
                        (value, error) => error,
                        initial: () => null
                      )
                    ),
                    onChanged: (t) => context.read(emailProvider).state = t,
                  );
                }
              ),
              TextField(),
              Container(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Send'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled))
                          return null;
                        return Colors.black12;
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

@freezed
abstract class FormInput<T> with _$FormInput<T> {
  const factory FormInput(T value, [String error]) = _FormInput<T>;
  const factory FormInput.initial() = Initial;
}
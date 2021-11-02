import 'package:flutter/material.dart';
import 'package:pharmacy_app/theme/styles.dart';

class SocialLoginButton extends StatefulWidget {
  final String label;
  final Function onPressed;
  final String? iconPath;

  const SocialLoginButton(
      {Key? key, required this.label, required this.onPressed, this.iconPath})
      : super(key: key);
  @override
  _SocialLoginButtonState createState() => _SocialLoginButtonState();
}

class _SocialLoginButtonState extends State<SocialLoginButton> {
  bool loading = false;
  double width = 200;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance!.addPostFrameCallback((_) => change());
  }

  change() {
    setState(() {
      width = context.size!.width;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: SugarLifeTheme.green)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: GestureDetector(
          onTap: () async {
            setState(() {
              loading = true;
            });
            widget.onPressed();
            await Future.delayed(const Duration(seconds: 2));

            setState(() {
              loading = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.black),
            ),
            width: MediaQuery.of(context).size.width - 50,
            height: 50,
            child: Center(
              child: !loading
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (widget.iconPath != null) Image.asset(widget.iconPath!),
                        SizedBox(
                            width: width * 0.5,
                            child: Text(
                              widget.label,
                              style: const TextStyle(color: Colors.black),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            )),
                      ],
                    )
                  : LoadingCircle(color: SugarLifeTheme.green),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pharmacy_app/theme/styles.dart';

class ActionButton extends StatefulWidget {
  final String label;
  final double fontSize;
  final Function onPressed;
  final IconData? icon;
  final Color backgroundColor;
  final EdgeInsets padding;

  const ActionButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.icon,
      this.backgroundColor = Colors.transparent,
      this.padding = const EdgeInsets.symmetric(vertical: 8.0),
      this.fontSize = 14})
      : super(key: key);
  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
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
    return Container(
      color: widget.backgroundColor,
      padding: widget.padding,
      child: GestureDetector(
        onTap: () async {
          setState(() {
            loading = true;
          });
          widget.onPressed();
          await Future.delayed(const Duration(seconds: 1));

          setState(() {
            loading = false;
          });
        },
        child: Container(
          color: SugarLifeTheme.green,
          width: MediaQuery.of(context).size.width - 50,
          height: 50,
          child: Center(
            child: !loading
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(widget.icon, color: Colors.white),
                      SizedBox(
                        width: width * 0.5 + 20,
                        child: Text(
                          widget.label,
                          style: SugarLifeTheme.whiteText
                              .copyWith(fontSize: widget.fontSize),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  )
                : const LoadingCircle(
                    color: Colors.black,
                  ),
          ),
        ),
      ),
    );
  }
}

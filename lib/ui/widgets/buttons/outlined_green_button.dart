import 'package:flutter/material.dart';
import 'package:pharmacy_app/theme/styles.dart';

class OutlinedActionButton extends StatefulWidget {
  final String label;
  final Function onPressed;

  const OutlinedActionButton(
      {Key? key, required this.label, required this.onPressed})
      : super(key: key);
  @override
  _OutlinedActionButtonState createState() => _OutlinedActionButtonState();
}

class _OutlinedActionButtonState extends State<OutlinedActionButton> {
  bool loading = false;
  double width = 200;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance!.addPostFrameCallback((_) => change());
  }

  change() {
    setState(() {
      width = context.size!.width * 0.8;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1, color: SugarLifeTheme.green),
          ),
          width: width * 0.8,
          height: 35,
          child: Center(
            child: !loading
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width * 0.5,
                        child: Text(
                          widget.label,
                          style: TextStyle(color: SugarLifeTheme.green),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  )
                : LoadingCircle(
                    color: SugarLifeTheme.green,
                  ),
          ),
        ),
      ),
    );
  }
}

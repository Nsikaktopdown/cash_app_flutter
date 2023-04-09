import 'package:flutter/cupertino.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<StatefulWidget> createState() => WalletScreenState();
}

class WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: ListView(children: [
              Column(
                children: [
                  Row(
                    children: [Image.asset("assets/images/profile.png")],
                  )
                ],
              )
            ],)));
  }
}

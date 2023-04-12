import 'package:cash_app/UrlConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../styles/CashAppStyles.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<StatefulWidget> createState() => WalletScreenState();
}

class WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            color: CashAppStyles.darkBackground,
            child: ListView(
              children: [
                Container(
                    //height: MediaQuery.of(context).size.height * 0.35,
                    decoration: const BoxDecoration(
                      color: Color(0xff101213),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        topBar(),
                        const SizedBox(height: 40),
                        walletTop(),
                      ],
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: CashAppStyles.darkBackground,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      Text(
                        "Transactions",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return transactionItem();
                          },
                          separatorBuilder: (context, index) => const Divider(
                              height: 1, color: CashAppStyles.lightBackground),
                          itemCount: 10, padding: const EdgeInsets.all(5),),
                    ],
                  ),
                )
              ],
            )));
  }

  Widget transactionItem() {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          SvgPicture.asset(
            "${UrlConstants.imageAssertUrl}badge.svg",
            height: 45,
            width: 45,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text("Invitation Bonus",
                    style: Theme.of(context).textTheme.labelMedium),
              ),
              const SizedBox(
                height: 7,
              ),
              FittedBox(
                child: Text("For inviting Jack. Oct 30",
                    style: Theme.of(context).textTheme.labelSmall),
              )
            ],
          ),
          const Spacer(),
          FittedBox(
            child: Text("+\$300",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: CashAppStyles.primaryColor)),
          ),
        ],
      ),
    );
  }

  Widget topBar() {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(
              "${UrlConstants.imageAssertUrl}profile.png",
              height: 40,
              width: 40,
            ),
            const Spacer(),
            SvgPicture.asset("${UrlConstants.imageAssertUrl}notification.svg")
          ],
        ));
  }

  Widget walletTop() {
    return Column(
      children: [
        walletBalance(),
        FittedBox(
          child: Text(
            "Total Balance",
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(color: CashAppStyles.lightBackground),
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [button(), button()],
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  Widget walletBalance() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text("\$",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: CashAppStyles.primaryColor)),
            ),
            FittedBox(
              child: Text("100,000.00",
                  style: Theme.of(context).textTheme.labelLarge),
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget button() {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: CashAppStyles.lightBackground),
        borderRadius: const BorderRadius.all(Radius.circular(7)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("${UrlConstants.imageAssertUrl}add-cash.svg"),
          const SizedBox(
            width: 5,
          ),
          FittedBox(
            child: Text(
              "Add Cash",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: CashAppStyles.lightBackground),
            ),
          ),
        ],
      ),
    );
  }
}

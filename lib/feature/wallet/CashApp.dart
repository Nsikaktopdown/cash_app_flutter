import 'package:cash_app/feature/wallet/wallet_screen.dart';
import 'package:cash_app/styles/CashAppTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class CashApp extends StatelessWidget {
  const CashApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: CashAppTheme.lightTheme,
      darkTheme: CashAppTheme.darkTheme,
      home: const CashAppHomePage(),
    );
  }
}

class CashAppHomePage extends StatefulWidget {
  const CashAppHomePage({super.key});

  @override
  State<StatefulWidget> createState() => CashAppHomePageState();
}

class CashAppHomePageState extends State<CashAppHomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
//New
    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    List pages = [
      const WalletScreen()
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/home-disabled.svg"),
              activeIcon: SvgPicture.asset("assets/images/home-enable.svg"),
              label: ''),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/wallet-disabled.svg"),
            activeIcon: SvgPicture.asset("assets/images/wallet-enabled.svg"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/arrow-swap.svg", height: 50, width: 50,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/bar-chart-disabled.svg"),
            label: '',
            activeIcon: SvgPicture.asset("assets/images/bar-chart-enable.svg")
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/coupon-disabled.svg"),
            activeIcon: SvgPicture.asset("assets/images/coupon-enabled.svg"),
            label: '',
          ),
        ],
        currentIndex: selectedIndex, //New
        onTap: onItemTapped,
      ),
      body: pages[selectedIndex],
    );
  }
}

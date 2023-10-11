import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/grid_menu.dart';
import '../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0,
        toolbarHeight: 100,
        leading: IconButton(
          icon: SvgPicture.asset('assets/svg/icon-burger.svg'),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/images/Mask Group.png',
              height: 35,
            ),
          ),
        ],
      ),
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Find ',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    TextSpan(
                      text: 'your doctor',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            color: kGreyColor900,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: kGreyColor500,
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10), // Add some spacing
                    Expanded(
                      child: Text(
                        'Search doctor, medicines etc',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    const Icon(
                      Icons.search,
                      color: kBlackColor900,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const GridMenu(),
            ],
          ),
        ),
      ),
    );
  }
}

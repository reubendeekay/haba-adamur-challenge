import 'package:adamur/models/crypto_model.dart';
import 'package:adamur/models/group_model.dart';
import 'package:adamur/utils/lists.dart';
import 'package:adamur/widgets/category_home.dart';
import 'package:adamur/widgets/crypo_widget.dart';
import 'package:adamur/widgets/custom_appbar.dart';
import 'package:adamur/widgets/group_widget.dart';
import 'package:adamur/widgets/my_nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Popular tables',
                  style: GoogleFonts.rubik(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    ...List.generate(
                        groupList.length,
                        (index) => GroupWidget(
                              group: GroupModel.fromJson(groupList[index]),
                            ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = 0;
                            });
                          },
                          child: CategoryHome(
                            icon: 'award.png',
                            title: 'Today\'s best',
                            isSelected: selectedCategory == 0,
                            hasImage: true,
                          )),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = 1;
                            });
                          },
                          child: CategoryHome(
                            icon: Icons.visibility_outlined,
                            title: 'My Roundtable',
                            isSelected: selectedCategory == 1,
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Cryto',
                  style: GoogleFonts.inter(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    ...List.generate(
                      cryptos.length,
                      (i) => CryptoWidget(
                        cryptoModel: CryptoModel.fromJson(cryptos[i]),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Stonks',
                  style: GoogleFonts.inter(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    ...List.generate(
                      cryptos.length,
                      (i) => CryptoWidget(
                        cryptoModel: CryptoModel.fromJson(cryptos[i]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Positioned(bottom: 30, left: 15, right: 15, child: MyNav()),
        ],
      ),
      // bottomNavigationBar: const MyNav(),
    );
  }
}

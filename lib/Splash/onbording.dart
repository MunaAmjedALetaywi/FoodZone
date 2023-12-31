import 'package:app_zone/Splash/content_model.dart';
import 'package:app_zone/buttom_navigation_bar_screens/buttom_navigation_bar_screens.dart';
import 'package:app_zone/helpers/sp_helper.dart';
import 'package:app_zone/register/welcome_screen.dart';
import 'package:flutter/material.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {

  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage:0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: contents.length ,
                  onPageChanged: (int index){
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_,i){
                    return Column(
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 100)),
                        Image.asset(
                          contents[i].image,
                          height: 300,
                        ),
                        const SizedBox(height: 20,),
                        Text(contents[i].title,
                          style: const TextStyle(
                            fontSize:24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Text(contents[i].discription,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 20,
                          ),
                        ),
                      ],
                    );
                  }
              ),
            ),
            Container(
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index,context),
                ),
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.fromLTRB(20, 40, 10, 40),
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: Row(
                children: [
                  const SizedBox(
                  ),
                  Visibility(
                        visible: !(checkIfLastPage()),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              closeOnBoarding();
                            },
                            child: const Text(
                              'Skip',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                      ),
                    ),

                  const SizedBox(width: 230),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (checkIfLastPage()) {
                          closeOnBoarding();
                        } else {
                          setState(() {
                            currentIndex++;
                            _pageController.nextPage(
                              duration: const Duration(microseconds: 300),
                              curve: Curves.ease,
                            );
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF9B1A19),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(22),
                      ),
                      child: Image.asset(
                        'assets/images/img.png',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
          ),
        ),
      ),
    );
  }

  bool checkIfLastPage() {
    return (currentIndex == contents.length - 1);
  }

  closeOnBoarding() {
    SPHelper.spHelper.storeUserStatus();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) {
          return const WelcomeScreen();
        }),
    );
  }

  Container buildDot(int index ,BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 46:8,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: const Color(0xFF9B1A19),
      ),
    );
  }
}


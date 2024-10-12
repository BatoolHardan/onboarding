import 'package:flutter/material.dart';

class OnBoadingScreen extends StatelessWidget {
  OnBoadingScreen({super.key});
  List<OnboardingData> data = [
OnboardingData(title:'Simple et intuitif' ,subTitle:'Dolor sit amet, consectetur adipiscing elit. Pharetra sit lorem praesent eu ac nec dignissim. .' ,image: 'assets/images/onbording1.png',);
OnboardingData(title: 'Simple et intuitif',subTitle:'Dolor sit amet, consectetur adipiscing elit. Pharetra sit lorem praesent eu ac nec dignissim. .' ,image: 'assets/images/onbording2.png',);
OnboardingData(title: 'Simple et intuitif',subTitle:'Dolor sit amet, consectetur adipiscing elit. Pharetra sit lorem praesent eu ac nec dignissim. .' ,image: 'assets/images/onbording3.png',);
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/background.png'),
          PageView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset( data[index].image),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(data[index].title
                  ),
                 Text(
                       data[index].subTitle),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomContainer(
                        isSelacted: true,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomContainer(
                        isSelacted: false,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomContainer(
                        isSelacted: false,
                      ),
                    ],
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xff09A8C8),
                          elevation: 0,
                          fixedSize: const Size(60, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: const Icon(Icons.arrow_forward))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.isSelacted});
  final bool isSelacted;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: isSelacted ? 20 : 12,
      height: 8,
      decoration: BoxDecoration(
          color: isSelacted ? Colors.white : Colors.white24,
          borderRadius: BorderRadius.circular(15)),
    );
  }
}

class OnboardingData {
  final String image;
  final String title;
  final String subTitle;

  OnboardingData({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

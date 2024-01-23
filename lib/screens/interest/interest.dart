import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

class Interests extends StatefulWidget {
  Interests({super.key});

  @override
  State<Interests> createState() => _InterestListsState();
}

class _InterestListsState extends State<Interests> {
  final _selectedInterests = <String>[];
  List<String> interests = [
    'Music',
    'Films and Media',
    'Sports & Fitness',
    'Arts',
    'Fashion',
    'Travel & Outdoor',
    'Home & Lifestyle',
    'Education',
    'Gaming',
    'Health',
    'A',
    'Sports & Fitness Sports & Fitness',
    'C',
    'D',
    'E',
    'F',
    'Entertainment',
    'Tech',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      appBar: AppBar(
        // leadingWidth: 100,
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        foregroundColor: Colors.white,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: IconButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(40, 40),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromRGBO(55, 19, 78, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  icon: const Icon(Icons.chevron_left)),
            ),
          ],
        ),

        // backgroundColor: Colof.,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 50),
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              const Text(
                'Tell us your interests',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Select your interests that you love, we will curate the best videos for your feed',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(171, 171, 171, 1)),
              ),
              SizedBox(
                height: 28,
              ),


              Container(
                child: Wrap(
                  spacing: 10,
                  runAlignment: WrapAlignment.center,
                  runSpacing: 10,
                  children: List.generate(interests.length, (index) {
                    return ChoiceChip(
                      showCheckmark: false,
                      checkmarkColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 20),
                      disabledColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      selectedColor: const Color.fromRGBO(119, 40, 168, 1),
                      labelStyle: const TextStyle(color: Colors.white),
                      backgroundColor: const Color.fromRGBO(25, 25, 25, 1),
                      label: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            interests[index],
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w500,
                                color: _selectedInterests
                                        .contains(interests[index])
                                    ? Colors.white
                                    : Color.fromRGBO(171, 171, 171, 1)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(
                              _selectedInterests.contains(interests[index])
                                  ? Icons.close
                                  : Icons.add,
                              size: 18,
                              color:
                                  _selectedInterests.contains(interests[index])
                                      ? Colors.white
                                      : const Color.fromRGBO(171, 171, 171, 1))
                        ],
                      ),
                      selected: _selectedInterests.contains(interests[index]),
                      onSelected: (value) => setState(() {
                        if (value) {
                          _selectedInterests.add(interests[index]);
                        } else {
                          _selectedInterests.remove(interests[index]);
                        }
                      }),
                    );
                  }),
                ),
              ),


              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: SwipeButton.expand(
                  width: MediaQuery.of(context).size.width,
                  duration: const Duration(milliseconds: 300),
                  thumb: const Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 25,
                  ),
                  activeThumbColor:  const Color.fromRGBO(158, 53, 224, 1),
                  activeTrackColor:  const Color.fromRGBO(119, 40, 168, 1),
                  onSwipe: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Swipped"),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // appBar: ,
    );
  }
}

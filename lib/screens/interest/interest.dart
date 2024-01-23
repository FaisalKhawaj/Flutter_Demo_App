import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:testapp/widgets/customchoicechip.dart';

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

  void onSelectChipCallback(String interest,bool selected){
    setState(() {
      if(selected){
        _selectedInterests.add(interest);
      }else{
        _selectedInterests.remove(interest);
      }
    });


  }

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
                  onPressed: () {
                    Navigator.pop(context);

                  },
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
             const SizedBox(
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
             const SizedBox(
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
             const SizedBox(
                height: 28,
              ),


               Wrap(
                  spacing: 10,
                  runAlignment: WrapAlignment.center,
                  runSpacing: 10,
                  children: List.generate(interests.length, (index) {
                    return
                  CustomChoiceChip(label: interests[index],
                      selected:_selectedInterests.contains(interests[index]),
                      onSelected:(val)=>onSelectChipCallback(interests[index],val)  // passing value and selected to callback
                  );
                  }),
                ),



            const  SizedBox(height: 10,), // for spacing
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
